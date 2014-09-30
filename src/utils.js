(function( P ) {
	'use strict';

	function expand( skeleton, glyph, params ) {
		var isOpen = skeleton.type === 'open';

		// create skins if needed
		if ( !skeleton.expanded ) {
			var i = isOpen ? 1 : 2;
			skeleton.expanded = [];

			while ( i-- ) {
				var skin = glyph.addContour();
				skin.tags.add('skin');
				skin.type = 'closed';
				skeleton.expanded.push( skin );
			}
		}

		// the nodes of all expanded are re-linked on each update
		// (in case new skeleton nodes are created)
		var skins = [[], []];
		skeleton.nodes.forEach(function( node ) {
			var rib;

			if ( !node.expanded ) {
				node.expanded = [];

				rib = skeleton.expanded[0].addNode();
				rib.tags.add('rib');
				rib.type = node.type || 'open';
				rib.lType = node.src.lType || 'open';
				rib.rType = node.src.rType || 'open';
				node.expanded.push( rib );

				rib = skeleton.expanded[ isOpen ? 0: 1 ].addNode();
				rib.tags.add('rib');
				rib.type = node.type || 'open';
				rib.lType = node.src.rType || 'open';
				rib.rType = node.src.lType || 'open';
				node.expanded.push( rib );
			}

			skins[0].push( node.expanded[0] );
			skins[1].push( node.expanded[1] );

			updateRibs( node, params );
		});

		if ( isOpen ) {
			var firstNode = skeleton.nodes[0],
				lastNode = skeleton.nodes[skeleton.nodes.length -1];

			skeleton.expanded[0].nodes = skins[0].concat( skins[1].reverse() );
			skeleton.expanded[0].type = 'closed';

			firstNode.expanded[1].rType = 'line';
			firstNode.expanded[0].lType = 'line';

			lastNode.expanded[1].lType = 'line';
			lastNode.expanded[0].rType = 'line';

		} else {
			skeleton.expanded[0].nodes = skins[0];
			skeleton.expanded[0].type = 'closed';

			skeleton.expanded[1].nodes = skins[1].reverse();
			skeleton.expanded[1].type = 'closed';
		}
	}

	function updateRibs( node, params ) {
		var left = node.expanded[0],
			right = node.expanded[1],
			width = node.width !== undefined ? node.width : params.width,
			distr = node.distr !== undefined ? node.distr : 0.5,
			angle = ( node.angle !== undefined ? node.angle : ( params.angle || 0 ) ) * ( Math.PI * 2 / 360 ),
			tension = node.tension || 1;

		left.x = node.x + ( width * ( distr ) * Math.cos( angle + Math.PI ) );
		left.y = node.y + ( width * ( distr ) * Math.sin( angle + Math.PI ) );
		right.x = node.x + ( width * ( 1 - distr ) * Math.cos( angle ) );
		right.y = node.y + ( width * ( 1 - distr ) * Math.sin( angle ) );

		left.lTension = node.lTension || tension;
		left.rTension = node.rTension || tension;
		// use opposite tension
		right.lTension = node.rTension || tension;
		right.rTension = node.lTension || tension;
	}

	// - link nodes in the contour
	// - make sure lines are set on both endpoints of a segment
	// - make types of endpoints are correctly set
	function prepareContour( contour ) {
		var length = contour.nodes.length,
			i = -1,
			node,
			firstNode = contour.nodes[0],
			lastNode = contour.nodes[length -1];

		while ( ++i < length ) {
			node = contour.nodes[i];

			// hobby requires that the last point always links to the start point
			node.prev = contour.nodes[i-1] || lastNode;
			if ( node.lType === 'line' ) {
				node.prev.rType = 'line';
			}

			// and vice versa
			node.next = contour.nodes[i+1] || firstNode;
			if ( node.rType === 'line' ) {
				node.next.lType = 'line';
			}
		}

		firstNode.lType = firstNode.lType === 'line' ?
			'lineendcycle':
			'endcycle';
		lastNode.rType = lastNode.rType === 'line' ?
			'lineendcycle':
			'endcycle';

	}

	if ( !P.hobby ) {
		P.hobby = {};
	}
	Object.mixin( P.hobby, {
		expand: expand,
		updateRibs: updateRibs,
		prepareContour: prepareContour
	});

	// extend built-in objects types
	P.Glyph.prototype._update = P.Glyph.prototype.update;
	P.Glyph.prototype.update = function( font, params ) {
		glyph._update( font, params );

		glyph.contours.forEach(function( skeleton ) {
			if ( !skeleton.tags.has('skeleton') ) {
				return;
			}

			hobby.expand( skeleton, params );
		});

		glyph.contours.forEach(function( contour ) {
			if ( skeleton.tags.has('skeleton') ) {
				return;
			}

			hobby.prepareContour( contour );
		});
	};

})( prototypo );