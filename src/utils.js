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

			if ( node.src.rDir === undefined && node.src.lDir !== undefined ) {
				node.rDir = node.lDir - Math.PI;
			}
			if ( node.src.lDir === undefined && node.src.rDir !== undefined ) {
				node.lDir = node.rDir - Math.PI;
			}

			if ( !node.expanded ) {
				node.expanded = [];

				rib = new P.Node();
				rib.tags.add('rib');
				rib.type = node.type || 'smooth';
				rib.lType = node.src.lType || 'smooth';
				rib.rType = node.src.rType || 'smooth';

				node.expanded.push( rib );

				rib = new P.Node();
				rib.tags.add('rib');
				rib.type = node.type || 'smooth';
				rib.lType = node.src.rType || 'smooth';
				rib.rType = node.src.lType || 'smooth';

				node.expanded.push( rib );
			}

			node.expanded[0].lDir = node.expanded[1].rDir = node.lDir;
			node.expanded[0].rDir = node.expanded[1].lDir = node.rDir;

			skins[0].push( node.expanded[0] );
			skins[1].push( node.expanded[1] );

			updateNodeRibs( node, params );
		});

		outline( skeleton, skins );
	}

	function updateNodeRibs( node, params ) {
		var left = node.expanded[0],
			right = node.expanded[1],
			width = node.width !== undefined ? node.width : params.width,
			distr = node.distr !== undefined ? node.distr : 0.5,
			angle = node.angle !== undefined ? node.angle : node.lDir - Math.PI / 2;

		left.x = node.x + ( width * ( distr ) * Math.cos( angle + Math.PI ) );
		left.y = node.y + ( width * ( distr ) * Math.sin( angle + Math.PI ) );
		right.x = node.x + ( width * ( 1 - distr ) * Math.cos( angle ) );
		right.y = node.y + ( width * ( 1 - distr ) * Math.sin( angle ) );
	}

	function outline( skeleton, skins ) {
		if ( skeleton.type === 'open' ) {
			var firstNode = skeleton.nodes[0],
				lastNode = skeleton.nodes[skeleton.nodes.length -1];

			skeleton.expanded[0].type = 'closed';
			skeleton.expanded[0].nodes = skins[0].concat( skins[1].reverse() );

			firstNode.expanded[0].type = firstNode.expanded[1].type = 'corner';
			firstNode.expanded[0].rType = 'line';
			firstNode.expanded[1].lType = 'line';

			lastNode.expanded[0].type = lastNode.expanded[1].type = 'corner';
			lastNode.expanded[0].lType = 'line';
			lastNode.expanded[1].rType = 'line';

		} else {
			skeleton.expanded[0].type = 'closed';
			skeleton.expanded[0].nodes = skins[0];

			skeleton.expanded[1].type = 'closed';
			skeleton.expanded[1].nodes = skins[1].reverse();
		}
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
				if ( node.type === 'smooth' ) {
					node.lDir = P.Utils.lineAngle( node, node.next );
					node.rDir = node.lDir + Math.PI;
				}
			}
			if ( node.rType === 'line' ) {
				node.prev.lType = 'line';
				if ( node.type === 'smooth' ) {
					node.rDir = P.Utils.lineAngle( node, node.prev );
					node.lDir = node.rDir + Math.PI;
				}
			}
		}
	}

	function notomaticSegments( contour, params ) {
		var curviness = params.curviness || 2/3;

		contour.segments.forEach(function(segment) {
			if ( segment.start.lType === 'line' || segment.end.rType === 'line' ) {
				segment.lCtrl.x = segment.start.x;
				segment.lCtrl.y = segment.start.y;
				segment.rCtrl.x = segment.end.x;
				segment.rCtrl.y = segment.end.y;

				return;
			}

			var lli = P.Utils.lineLineIntersection(
					segment.start,
					{x: 0, y: segment.start.y - Math.tan( segment.start.lDir ) * segment.start.x },
					segment.end,
					{x: 0, y: segment.end.y - Math.tan( segment.end.rDir ) * segment.end.x }
				);

			segment.lCtrl.x = segment.start.x + ( lli[0] - segment.start.x ) * curviness;
			segment.lCtrl.y = segment.start.y + ( lli[1] - segment.start.y ) * curviness;
			segment.rCtrl.x = segment.end.x + ( lli[0] - segment.end.x ) * curviness;
			segment.rCtrl.y = segment.end.y + ( lli[1] - segment.end.y ) * curviness;
		});
	}

	function notomatic( contour, params ) {
		contour.nodes.forEach(function( node ) {
			var curviness = params.curviness || 2/3,
				prev = node.prev,
				next = node.next,
				dxPrev = node.x - prev.x,
				dyPrev = node.y - prev.y,
				dxNext = next.x - node.x,
				dyNext = next.y - node.y;

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
					//direction = Math.PI + Math.atan2( dyPrev, dxPrev );

					node.rCtrl.x = node.x + Math.cos( node.lDir ) * ( curviness * Math.abs( dxNext ) );
					node.rCtrl.y = node.y + Math.sin( node.lDir ) * ( curviness * Math.abs( dyNext ) );

				} else if ( node.rType === 'line' ) {
					node.lCtrl.x = node.x - Math.cos( node.lDir ) * ( curviness * Math.abs( dxPrev ) );
					node.lCtrl.y = node.y - Math.sin( node.lDir ) * ( curviness * Math.abs( dyPrev ) );

				} else {
					node.lCtrl.x = node.x - Math.cos( node.lDir ) * ( curviness * Math.abs( dxPrev ) );
					node.lCtrl.y = node.y - Math.sin( node.lDir ) * ( curviness * Math.abs( dyPrev ) );

					node.rCtrl.x = node.x + Math.cos( node.lDir ) * ( curviness * Math.abs( dxNext ) );
					node.rCtrl.y = node.y + Math.sin( node.lDir ) * ( curviness * Math.abs( dyNext ) );
				}

			} else {
				if ( node.lType !== 'line' ) {
					node.lCtrl.x = node.x + Math.cos( node.lDir ) * ( curviness * Math.abs( dxPrev ) );
					node.lCtrl.y = node.y + Math.sin( node.lDir ) * ( curviness * Math.abs( dyPrev ) );
				}
				if ( node.rType !== 'line' ) {
					node.rCtrl.x = node.x + Math.cos( node.rDir ) * ( curviness * Math.abs( dxNext ) );
					node.rCtrl.y = node.y + Math.sin( node.rDir ) * ( curviness * Math.abs( dyNext ) );
				}
			}

		});
	}

	if ( !P.naive ) {
		P.naive = {};
	}
	Object.mixin( P.naive, {
		expand: expand,
		updateNodeRibs: updateNodeRibs,
		prepareContour: prepareContour,
		notomaticSegments: notomaticSegments,
		notomatic: notomatic
	});

	// extend built-in objects types
	P.Glyph.prototype.update = function( params ) {
		this.anchors.forEach(function(anchor) {
			anchor.update( params, this );
		}, this);
		this.contours.forEach(function(contour) {
			contour.update( params, this );
		}, this);

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
			P.naive.notomaticSegments(contour, params);
		});

		this.components.forEach(function(component) {
			component.parentAnchors.forEach(function(anchor) {
				anchor.update( params, this );
			}, this);
			component.update( params );
		}, this);

		this.transform( null, true );

		this.contours.forEach(function( contour ) {
			if ( contour.tags.has('skeleton') ) {
				return;
			}

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
	P.Contour.prototype.update = function( params, glyph ) {
		this.nodes.forEach(function(node) {
			node.update( params, glyph, this );
		}, this);

		if ( this.src && this.src.transform ) {
			this.transform( this.src.transform, true );
		}
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

	Object.defineProperty(P.Node.prototype, 'lDir', {
		get: function() { return this._lDir; },
		set: function( dir ) {
			if ( typeof dir === 'string' && /deg$/.test( dir ) ) {
				this._lDir = parseFloat( dir ) * ( Math.PI * 2 / 360 );
			} else {
				this._lDir = dir;
			}
		}
	});
	Object.defineProperty(P.Node.prototype, 'rDir', {
		get: function() { return this._rDir; },
		set: function( dir ) {
			if ( typeof dir === 'string' && /deg$/.test( dir ) ) {
				this._rDir = parseFloat( dir ) * ( Math.PI * 2 / 360 );
			} else {
				this._rDir = dir;
			}
		}
	});

})( prototypo );

// function makeChoices( contour, params ) {
	// 	var nodes = contour.nodes,
	// 		i = -1,
	// 		length = nodes.length,
	// 		node,
	// 		angle;

	// 	// special cases
	// 	if ( length === 0 ) {
	// 		return;
	// 	}
	// 	if ( length < 3 ) {
	// 		nodes[0].rCtrl.x = nodes[0].lCtrl.x = nodes[0].x;
	// 		nodes[0].rCtrl.y = nodes[0].lCtrl.y = nodes[0].y;

	// 		if ( length === 2 ) {
	// 			nodes[1].rCtrl.x = nodes[1].lCtrl.x = nodes[1].x;
	// 			nodes[1].rCtrl.y = nodes[1].lCtrl.y = nodes[1].y;
	// 		}

	// 		return;
	// 	}

	// 	while ( ++i < length ) {
	// 		// in an open contour, we can't find the angle for the first and last point directly
	// 		if ( ( i === 0 || i === length -1 ) && contour.type !== 'closed' ) {
	// 			continue;
	// 		}

	// 		node = nodes[i];

	// 		angle = findAngle( node.prev, node, node.next, params );
	// 	}

	// 	if ( contour.type === 'open' ) {
	// 		node[0].lCtrl.x = node[0].x;
	// 		node[0].lCtrl.y = node[0].y;
	// 		node[length -1].rCtrl.x = node[length -1].x;
	// 		node[length -1].rCtrl.y = node[length -1].y;
	// 	}
	// }

	// function findAngle(prev, node, next, params) {
	// 	var prod,
	// 		curviness = params && params.curviness || 2/3,
	// 		dxPrev = node.x - prev.x,
	// 		dyPrev = node.y - prev.y,
	// 		dxNext = next.x - node.x,
	// 		dyNext = next.y - node.y,
	// 		direction;

	// 	if ( node.type === 'auto' ) {
	// 		if ( node.lType === 'line' ) {
	// 			direction = Math.PI + Math.atan2( dyPrev, dxPrev );

	// 		} else if ( node.rType === 'line' ) {
	// 			direction = Math.PI + Math.atan2( dyNext, dxNext );

	// 		// next and prev are in opposed quadrants
	// 		// => the line joining both control points will be parallel to the line joining next and prev
	// 		} else if ( ( prod = dxPrev * dyPrev * dxNext * dyNext ) > 0 ) {
	// 			direction = Math.atan2( dyNext, dxNext );

	// 		// next and prev are in contiguous quadrants
	// 		} else {
	// 			// horizontally contiguous
	// 			if ( dxPrev * dxNext > 0 ) {
	// 				direction = dxPrev > 0 ? 0 : -Math.PI;

	// 			// vertically contiguous
	// 			} else {
	// 				direction = dyPrev > 0 ? Math.PI / 2 : -Math.PI / 2;
	// 			}
	// 		}

	// 		node.lCtrl.x = node.x - Math.cos( node.direction ) * ( curviness * Math.abs( dxPrev ) );
	// 		node.lCtrl.y = node.y - Math.sin( node.direction ) * ( curviness * Math.abs( dyPrev ) );

	// 		node.rCtrl.x = node.x + Math.cos( node.direction ) * ( curviness * Math.abs( dxNext ) );
	// 		node.rCtrl.y = node.y + Math.sin( node.direction ) * ( curviness * Math.abs( dyNext ) );

	// 	} else if ( node.type === 'corner' && node.lType === 'line' || node.rType === 'line' ) {
	// 		// horizontally contiguous
	// 		if ( dxPrev * dxNext > 0 ) {
	// 			direction = dxPrev > 0 ? 0 : -Math.PI;

	// 		// vertically contiguous
	// 		} else {
	// 			direction = dyPrev > 0 ? Math.PI / 2 : -Math.PI / 2;
	// 		}

	// 		if ( node.lType === 'line' ) {
	// 			node.rCtrl.x = node.x + Math.cos( node.direction ) * ( curviness * Math.abs( dxNext ) );
	// 			node.rCtrl.y = node.y + Math.sin( node.direction ) * ( curviness * Math.abs( dyNext ) );

	// 		} else {
	// 			node.lCtrl.x = node.x - Math.cos( node.direction ) * ( curviness * Math.abs( dxPrev ) );
	// 			node.lCtrl.y = node.y - Math.sin( node.direction ) * ( curviness * Math.abs( dyPrev ) );

	// 		}

	// 	}
	// }

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

	// function straightLines( contour ) {
	// 	contour.nodes.forEach(function(node) {
	// 		node.lCtrl.x = node.rCtrl.x = node.x;
	// 		node.lCtrl.y = node.rCtrl.y = node.y;
	// 	});
	// }



	// if ( node.type === 'summit' ) {
	// 				rib = skeleton.expanded[0].addNode();
	// 				rib.type = 'corner';
	// 				rib.lType = rib.rType = 'line';
	// 				node.expanded.push( rib );

	// 				rib = skeleton.expanded[0].addNode();
	// 				rib.type = 'corner';
	// 				rib.lType = rib.rType = 'line';
	// 				node.expanded.push( rib );

	// 				rib = skeleton.expanded[ isOpen ? 0: 1 ].addNode();
	// 				rib.type = 'corner';
	// 				rib.lType = rib.rType = 'line';
	// 				node.expanded.push( rib );

	// 				rib = skeleton.expanded[ isOpen ? 0: 1 ].addNode();
	// 				rib.type = 'corner';
	// 				rib.lType = rib.rType = 'line';
	// 				node.expanded.push( rib );

	// 			} else {
