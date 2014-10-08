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
				rib.type = node.type || 'smooth';
				rib.lType = node.src.lType || 'smooth';
				rib.rType = node.src.rType || 'smooth';
				rib.direction = node.angle + Math.PI / 2;
				if ( node.rDirection !== undefined ) {
					rib.rDirection = node.rDirection;
				}
				if ( node.lDirection !== undefined ) {
					rib.lDirection = node.lDirection;
				}
				node.expanded.push( rib );

				rib = skeleton.expanded[ isOpen ? 0: 1 ].addNode();
				rib.tags.add('rib');
				rib.type = node.type || 'smooth';
				rib.lType = node.src.rType || 'smooth';
				rib.rType = node.src.lType || 'smooth';
				rib.direction = node.angle - Math.PI / 2;
				if ( node.rDirection !== undefined ) {
					rib.lDirection = node.rDirection;
				}
				if ( node.lDirection !== undefined ) {
					rib.rDirection = node.lDirection;
				}
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

			firstNode.expanded[0].type = firstNode.expanded[1].type = 'corner';
			firstNode.expanded[0].rType = 'line';
			firstNode.expanded[1].lType = 'line';

			lastNode.expanded[0].type = lastNode.expanded[1].type = 'corner';
			lastNode.expanded[0].lType = 'line';
			lastNode.expanded[1].rType = 'line';

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
			angle = ( node.angle !== undefined ? node.angle : ( params.angle || 0 ) )/*,
			curviness = node.curviness || 1*/;

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
			node.prev = contour.nodes[i-1] || lastNode;
			node.next = contour.nodes[i+1] || firstNode;

			if ( node.lType === 'line' ) {
				node.next.rType = 'line';
			}
			// and vice versa
			if ( node.rType === 'line' ) {
				node.prev.lType = 'line';
			}
		}

		// firstNode.lType = firstNode.lType === 'line' ?
		// 	'lineendcycle':
		// 	'endcycle';
		// lastNode.rType = lastNode.rType === 'line' ?
		// 	'lineendcycle':
		// 	'endcycle';

	}

	function notomatic( contour, params ) {
		contour.nodes.forEach(function( node ) {
			var curviness = params.curviness || 2/3,
				prev = node.prev,
				next = node.next,
				dxPrev = node.x - prev.x,
				dyPrev = node.y - prev.y,
				dxNext = next.x - node.x,
				dyNext = next.y - node.y,
				direction;

			if ( node.lType === 'line' ) {
				node.lCtrl.x = node.x;
				node.lCtrl.y = node.y;
			}
			if ( node.rType === 'line' ) {
				node.rCtrl.x = node.x;
				node.rCtrl.y = node.y;
			}

			if ( node.type === 'smooth' ) {
				if ( node.lType === 'line' ) {
					direction = Math.PI + Math.atan2( dyPrev, dxPrev );

					node.rCtrl.x = node.x + Math.cos( direction ) * ( curviness * Math.abs( dxNext ) );
					node.rCtrl.y = node.y + Math.sin( direction ) * ( curviness * Math.abs( dyNext ) );

				} else if ( node.rType === 'line' ) {
					node.lCtrl.x = node.x - Math.cos( direction ) * ( curviness * Math.abs( dxPrev ) );
					node.lCtrl.y = node.y - Math.sin( direction ) * ( curviness * Math.abs( dyPrev ) );

				} else {
					node.lCtrl.x = node.x - Math.cos( node.direction ) * ( curviness * Math.abs( dxPrev ) );
					node.lCtrl.y = node.y - Math.sin( node.direction ) * ( curviness * Math.abs( dyPrev ) );

					node.rCtrl.x = node.x + Math.cos( node.direction ) * ( curviness * Math.abs( dxNext ) );
					node.rCtrl.y = node.y + Math.sin( node.direction ) * ( curviness * Math.abs( dyNext ) );
				}

			} else {
				if ( node.lType !== 'line' ) {
					node.lCtrl.x = node.x + Math.cos( node.lDirection ) * ( curviness * Math.abs( dxPrev ) );
					node.lCtrl.y = node.y + Math.sin( node.lDirection ) * ( curviness * Math.abs( dyPrev ) );
				}
				if ( node.rType !== 'line' ) {
					node.rCtrl.x = node.x + Math.cos( node.rDirection ) * ( curviness * Math.abs( dxNext ) );
					node.rCtrl.y = node.y + Math.sin( node.rDirection ) * ( curviness * Math.abs( dyNext ) );
				}
			}
		});
	}

	function makeChoices( contour, params ) {
		var nodes = contour.nodes,
			i = -1,
			length = nodes.length,
			node,
			angle;

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

		while ( ++i < length ) {
			// in an open contour, we can't find the angle for the first and last point directly
			if ( ( i === 0 || i === length -1 ) && contour.type !== 'closed' ) {
				continue;
			}

			node = nodes[i];

			angle = findAngle( node.prev, node, node.next, params );
		}

		if ( contour.type === 'open' ) {
			node[0].lCtrl.x = node[0].x;
			node[0].lCtrl.y = node[0].y;
			node[length -1].rCtrl.x = node[length -1].x;
			node[length -1].rCtrl.y = node[length -1].y;
		}
	}

	function findAngle(prev, node, next, params) {
		var prod,
			curviness = params && params.curviness || 2/3,
			dxPrev = node.x - prev.x,
			dyPrev = node.y - prev.y,
			dxNext = next.x - node.x,
			dyNext = next.y - node.y,
			direction;

		if ( node.type === 'auto' ) {
			if ( node.lType === 'line' ) {
				direction = Math.PI + Math.atan2( dyPrev, dxPrev );

			} else if ( node.rType === 'line' ) {
				direction = Math.PI + Math.atan2( dyNext, dxNext );

			// next and prev are in opposed quadrants
			// => the line joining both control points will be parallel to the line joining next and prev
			} else if ( ( prod = dxPrev * dyPrev * dxNext * dyNext ) > 0 ) {
				direction = Math.atan2( dyNext, dxNext );

			// next and prev are in contiguous quadrants
			} else {
				// horizontally contiguous
				if ( dxPrev * dxNext > 0 ) {
					direction = dxPrev > 0 ? 0 : -Math.PI;

				// vertically contiguous
				} else {
					direction = dyPrev > 0 ? Math.PI / 2 : -Math.PI / 2;
				}
			}

			node.lCtrl.x = node.x - Math.cos( node.direction ) * ( curviness * Math.abs( dxPrev ) );
			node.lCtrl.y = node.y - Math.sin( node.direction ) * ( curviness * Math.abs( dyPrev ) );

			node.rCtrl.x = node.x + Math.cos( node.direction ) * ( curviness * Math.abs( dxNext ) );
			node.rCtrl.y = node.y + Math.sin( node.direction ) * ( curviness * Math.abs( dyNext ) );

		} else if ( node.type === 'corner' && node.lType === 'line' || node.rType === 'line' ) {
			// horizontally contiguous
			if ( dxPrev * dxNext > 0 ) {
				direction = dxPrev > 0 ? 0 : -Math.PI;

			// vertically contiguous
			} else {
				direction = dyPrev > 0 ? Math.PI / 2 : -Math.PI / 2;
			}

			if ( node.lType === 'line' ) {
				node.rCtrl.x = node.x + Math.cos( node.direction ) * ( curviness * Math.abs( dxNext ) );
				node.rCtrl.y = node.y + Math.sin( node.direction ) * ( curviness * Math.abs( dyNext ) );

			} else {
				node.lCtrl.x = node.x - Math.cos( node.direction ) * ( curviness * Math.abs( dxPrev ) );
				node.lCtrl.y = node.y - Math.sin( node.direction ) * ( curviness * Math.abs( dyPrev ) );

			}

		}
	}

	// function placeControls( node, angle, curviness ) {
	// 	if ( node.lType === 'line' ) {
	// 		node.lCtrl.x = node.x;
	// 		node.lCtrl.y = node.y;

	// 	} else {
	// 		node.lCtrl.x = node.x + Math.cos( angle ) * curviness;
	// 		node.lCtrl.y = node.y + Math.sin( angle ) * curviness;
	// 	}

	// 	if ( node.rType === 'line' ) {
	// 		node.rCtrl.x = node.x;
	// 		node.rCtrl.y = node.y;

	// 	} else {
	// 		node.rCtrl.x = node.x + Math.cos( angle ) * curviness;
	// 		node.rCtrl.y = node.y + Math.sin( angle ) * curviness;
	// 	}
	// }

	function straightLines( contour ) {
		contour.nodes.forEach(function(node) {
			node.lCtrl.x = node.rCtrl.x = node.x;
			node.lCtrl.y = node.rCtrl.y = node.y;
		});
	}

	if ( !P.naive ) {
		P.naive = {};
	}
	Object.mixin( P.naive, {
		findAngle: findAngle,
		expand: expand,
		updateRibs: updateRibs,
		prepareContour: prepareContour,
		makeChoices: makeChoices,
		straightLines: straightLines,
		notomatic: notomatic
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

			P.naive.prepareContour( contour );
			P.naive.notomatic(contour, params);

			// only the first contour of linked list of contours must be converted
			if ( !contour.prev ) {
				contour.toSVG();
			}
			console.log('STOOOOOOOOOOOOOOOOOOOOOOOOOOOOP');
		});

		this.gatherNodes();

		return this;
	};

	// contour.update() shouldn't update the SVG dataPath attr,
	// as control points are only ready much later
	P.Contour.prototype.update = function( params, contours, anchors ) {
		this.nodes.forEach(function(node) {
			node.update( params, contours, anchors, this.nodes );
		}, this);
	};

	P.Contour.prototype._toSVG = P.Contour.prototype.toSVG;
	P.Contour.prototype.toSVG = function() {
		var pathData = [],
			contour = this;

		do {
			pathData.push( contour._toSVG() );
			delete contour.pathData;

		} while ( ( contour = contour.next ) );

		return ( this.pathData = pathData.join(' ') );
	};

	Object.defineProperty(P.Node.prototype, 'direction', {
		get: function() { return this._direction; },
		set: function( dir ) {
			if ( typeof dir === 'string' && /deg$/.test( dir ) ) {
				this._direction = parseFloat( dir ) * ( Math.PI * 2 / 360 );
			} else {
				this._direction = dir;
			}
		}
	});
	Object.defineProperty(P.Node.prototype, 'angle', {
		get: function() { return this._angle; },
		set: function( angle ) {
			if ( typeof angle === 'string' && /deg$/.test( angle ) ) {
				this._angle = parseFloat( angle ) * ( Math.PI * 2 / 360 );
			} else {
				this._angle = angle;
			}
		}
	});

})( prototypo );