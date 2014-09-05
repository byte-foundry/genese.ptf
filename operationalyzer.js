// through2 is a thin wrapper around node transform streams
var through = require('through2'),
	gutil = require('gulp-util'),
	esprima = require('esprima'),
	escodegen = require('escodegen'),
	estraverse = require('estraverse'),
	_ = require('lodash'),
	PluginError = gutil.PluginError;

// consts
const PLUGIN_NAME = 'gulp-operationalyzer';

function isOperation( node, parent ) {
	return node && parent
		&& node.type !== 'ObjectExpression'
		&& node.type !== 'ArrayExpression'
		&& node.type !== 'Literal'
		&& ( parent.type === 'Property' || parent.type === 'ArrayExpression' );
}

// plugin level function (dealing with files)
function operationalyzer(prefixText) {
	// prepare a generic operation object that we'll reuse to replace each operation
	var operation = esprima.parse('_ = {operation: \'\', parameters: [], dependencies: []}')
			.body[0].expression.right.properties;

	// creating a stream through which each file will pass
	var stream = through.obj(function(file, enc, cb) {
		var ast = esprima.parse( file.contents.toString() ),
			inOperation,
			inMember,
			toLiteralize = [],
			parameters,
			dependencies,
			updatedAst;

		updatedAst = estraverse.replace( ast, {
			enter: function( node, parent ) {
				// make all object keys strings
				// (otherwise in `{ y: y }`, both `y`s are undistinguishable)
				if ( node.type === 'Property' && node.key.type === 'Identifier' ) {
					node.key.type = 'Literal';
					node.key.value = node.key.name;
					node.key.raw = '\'' + node.key.name + '\'';

					return node;
				}

				if ( !inOperation && isOperation( node, parent ) ) {
					inOperation = true;
					toLiteralize.push( node );
					parameters = [];
					dependencies = [];
				}

				if ( inOperation ) {
					if ( inMember ) {
						return;
					}

					if ( node.type === 'MemberExpression' ) {
						inMember = node;
						dependencies.push( escodegen.generate( node ) );
						return;
					}

					if ( node.type === 'Identifier' ) {
						parameters.push( node.name );
					}
				}
			},
			leave: function( node, parent ) {
				if ( node === inMember ) {
					inMember = false;
				}

				if ( toLiteralize.indexOf( node ) !== -1 ) {
					inOperation = false;
					toLiteralize.splice( toLiteralize.indexOf( node ), 1 );

					var tmp = escodegen.generate( node );

					node.type = 'ObjectExpression';
					node.properties = _.cloneDeep( operation );

					node.properties[0].value.value = tmp

					node.properties[0].value.raw = '\'' + node.properties[0].value + '\'';

					node.properties[1].value.elements = parameters.map(function( param ) {
						return {
							type: 'Literal',
							value: param,
							raw: '\'' + param + '\''
						};
					});

					node.properties[2].value.elements = dependencies.map(function( dep ) {
						return {
							type: 'Literal',
							value: dep,
							raw: '\'' + dep + '\''
						};
					});

					return node;
				}
			}
		});

		file.contents = new Buffer( escodegen.generate( updatedAst ) );

		this.push(file);

		return cb();
	});

	// returning the file stream
	return stream;
};

// exporting the plugin main function
module.exports = operationalyzer;
