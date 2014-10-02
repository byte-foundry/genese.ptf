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

			if ( !isOpen ) {
				skeleton.expanded[0].next = skeleton.expanded[1];
				skeleton.expanded[1].prev = skeleton.expanded[0];
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
				rib.type = node.type || 'smooth';
				rib.lType = node.src.lType || 'smooth';
				rib.rType = node.src.rType || 'smooth';
				node.expanded.push( rib );

				rib = skeleton.expanded[ isOpen ? 0: 1 ].addNode();
				rib.tags.add('rib');
				rib.type = node.type || 'smooth';
				rib.lType = node.src.rType || 'smooth';
				rib.rType = node.src.lType || 'smooth';
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
			angle = ( node.angle !== undefined ? node.angle : ( params.angle || 0 ) ) * ( Math.PI * 2 / 360 )/*,
			curviness = node.curviness || 1*/;

		left.x = node.x + ( width * ( distr ) * Math.cos( angle + Math.PI ) );
		left.y = node.y + ( width * ( distr ) * Math.sin( angle + Math.PI ) );
		right.x = node.x + ( width * ( 1 - distr ) * Math.cos( angle ) );
		right.y = node.y + ( width * ( 1 - distr ) * Math.sin( angle ) );

		// left.lCurviness = node.lCurviness || curviness;
		// left.rCurviness = node.rCurviness || curviness;
		// // use opposite tension
		// right.lCurviness = node.rCurviness || curviness;
		// right.rCurviness = node.lCurviness || curviness;
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

		// firstNode.lType = firstNode.lType === 'line' ?
		// 	'lineendcycle':
		// 	'endcycle';
		// lastNode.rType = lastNode.rType === 'line' ?
		// 	'lineendcycle':
		// 	'endcycle';

	}

	function makeChoices( contour, params ) {
		var nodes = contour.nodes,
			i = 0,
			length = nodes.length,
			node,
			dxPrev,
			dyPrev,
			dxNext,
			dyNext;

		// special cases
		if ( length === 0 ) {
			return;
		}
		if ( length < 3 ) {
			nodes[0].rCtrl.x = nodes[0].lCtrl.x = nodes[0].x;
			nodes[0].rCtrl.y = nodes[0].lCtrl.y = nodes[0].y;

			if ( length === 2 ) {
				nodes[1].rCtrl.x = nodes[1].lCtrl.x = nodes[1].x;
				nodes[1].rCtrl.y = nodes[1].lCtrl.y = nodes[1].y;
			}

			return;
		}

		// loop starts at node 1 and stops at node
		while ( ++i < length -1 ) {
			node = node[i];
			dxPrev = nodes[i].x - nodes[i-1].x;
			dyPrev = nodes[i].y - nodes[i-1].y;
			dxNext = nodes[i+1].x - nodes[i].x;
			dyNext = nodes[i+1].y - nodes[i].y;

			// horizontal controls
			if (	( ( dxPrev * dyPrev > 0 ) && ( dxNext * dyNext > 0 ) ) ||
					( ( dxPrev * dyPrev < 0 ) && ( dxNext * dyNext < 0 ) ) ) {
				//node.tags.remove('vertical');
				node.tags.add('horizontal');

				node.lCtrl.y = node.rCtrl.y = node.y;
				node.lCtrl.x = node.x - ( params.curviness * dxPrev );
				node.rCtrl.x = node.x + ( params.curviness * dxNext );

			} else {
				//node.tags.remove('horizontal');
				node.tags.add('vertical');

				node.lCtrl.x = node.rCtrl.x = node.x;
				node.lCtrl.y = node.y - ( params.curviness * dxPrev );
				node.rCtrl.y = node.y + ( params.curviness * dxNext );
			}
		}

		if ( nodes[1].tags.has('horizontal') ) {
			nodes[0].rCtrl.x = nodes[0].x;
			nodes[0].rCtrl.y = nodes[0].y + ( nodes[1].y - nodes[0].y ) * params.curviness;
		}
	}

	function straightLines( contour ) {
		contour.nodes.forEach(function(node) {
			node.lCtrl.x = node.rCtrl.x;
			node.lCtrl.y = node.rCtrl.y;
		});
	}

	if ( !P.naive ) {
		P.naive = {};
	}
	Object.mixin( P.naive, {
		expand: expand,
		updateRibs: updateRibs,
		prepareContour: prepareContour,
		makeChoices: makeChoices,
		straightLines: straightLines
	});

	// extend built-in objects types
	P.Glyph.prototype._update = P.Glyph.prototype.update;
	P.Glyph.prototype.update = function( font, params ) {
		this._update( font, params );

		this.contours.forEach(function( skeleton ) {
			if ( !skeleton.tags.has('skeleton') ) {
				return;
			}

			P.naive.expand( skeleton, this, params );
		}, this);

		this.contours.forEach(function( contour ) {
			if ( contour.tags.has('skeleton') ) {
				return;
			}

			//naive.prepareContour( contour );
			P.naive.straightLines(contour);

			// only the first contour of linked list of contours must be converted
			if ( !contour.prev ) {
				contour.toSVG();
			}
		});

		this.gatherNodes();

		return this;
	};

	// contour.update() shouldn't update the SVG dataPath attr,
	// as control points are only ready much later
	P.Contour.prototype.update = function( params, contours, anchors ) {
		this.nodes.forEach(node => node.update( params, contours, anchors, this.nodes ));
	};


})( prototypo );