// through2 is a thin wrapper around node transform streams
var through = require('through2'),
	gutil = require('gulp-util'),
	esprima = require('esprima'),
	escodegen = require('escodegen'),
	estraverse = require('estraverse'),
	util = require('util'),
	PluginError = gutil.PluginError;

// consts
const PLUGIN_NAME = 'gulp-expr2str';

function isOperation( node ) {
	return node && node.type === 'Property'
		&& node.value.type !== 'ObjectExpression'
		&& node.value.type !== 'ArrayExpression'
		&& node.value.type !== 'Literal';
}

// plugin level function (dealing with files)
function expr2str(prefixText) {
	// creating a stream through which each file will pass
	var stream = through.obj(function(file, enc, cb) {
		var ast = esprima.parse( file.contents.toString() ),
			inOperation,
			inMember,
			params,
			dependencies,
			updatedAst;

		updatedAst = estraverse.replace( ast, {
			enter: function( node, parent ) {
				if ( isOperation( node ) ) {
					inOperation = true;
					params = [];
					dependencies = [];
					return;
				}

				if ( inOperation ) {
					if ( inMember ) {
						return;
					}

					if ( node.type === 'MemberExpression' || parent.type === 'MemberExpression' ) {
						inMember = node;
						return;
					}

					if ( node.type === 'Identifier' && ( !parent.key || node.name !== parent.key.name ) ) {
						console.log(node);
					}
				}
			},
			leave: function( node, parent ) {
				if ( isOperation( node ) ) {
					inOperation = false;

					node.key.name = '__' + node.key.name;
					node.value.value = escodegen.generate( node.value );
					node.value.type = 'Literal';

					return node;
				}

				if ( node === inMember ) {
					inMember = false;
					return;
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
module.exports = expr2str;
