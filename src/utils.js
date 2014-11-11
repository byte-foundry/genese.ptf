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

			node.expanded[0].lTension = node.expanded[1].rTension = node.lTension;
			node.expanded[0].rTension = node.expanded[1].lTension = node.rTension;

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
				),
				lTension = segment.start.lTension !== undefined ? segment.start.lTension : 1,
				rTension = segment.end.rTension !== undefined ? segment.end.rTension : 1;

			segment.lCtrl.x = segment.start.x + ( lli[0] - segment.start.x ) * curviness * lTension;
			segment.lCtrl.y = segment.start.y + ( lli[1] - segment.start.y ) * curviness * lTension;
			segment.rCtrl.x = segment.end.x + ( lli[0] - segment.end.x ) * curviness * rTension;
			segment.rCtrl.y = segment.end.y + ( lli[1] - segment.end.y ) * curviness * rTension;
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

		if ( this.src.advanceWidth ) {
			var attr = this.src.advanceWidth,
				args = [ this.contours, this.anchors, this.parentAnchors, null, P.Utils ];

			attr.parameters.forEach(function( name ) {
				args.push( params[name] );
			});
			this.advanceWidth = attr.updater.apply( {}, args );
		}

		this.transform( null, true );

		this.gatherNodes();

		return this;
	};

	P.Glyph.prototype.toSVG = function( path ) {
		if ( !path ) {
			path = [];
		};

		this.contours.forEach(function( contour ) {
			if ( contour.prev || contour.tags.has('skeleton') ) {
				return;
			}

			path.push( contour.toSVG() );
		});

		this.components.forEach(function( component ) {
			component.toSVG( path );
		});

		return ( this.pathData = path.join(' ') );
	};

	P.Glyph.prototype.toOT = function( path ) {
		if ( !path ) {
			path = new P.opentype.Path();
		};

		this.allContours.forEach(function( contour ) {
			if ( contour.prev || contour.tags.has('skeleton') ) {
				return;
			}

			contour.toOT( path );
		});

		this.components.forEach(function( component ) {
			component.toOT( path );
		});

		return new P.opentype.Glyph({
			name: this.name,
			unicode: this.unicode,
			path: path,
			advanceWidth: this.advanceWidth || 512
		});
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

	P.Contour.prototype._toOT = P.Contour.prototype.toOT;
	P.Contour.prototype.toOT = function( path ) {
		var contour = this;

		do {
			contour._toOT( path );

		} while ( ( contour = contour.next ) );
	};


	['lDir', 'rDir', 'angle'].forEach(function(name) {
		Object.defineProperty(P.Node.prototype, name, {
			get: function() { return this['_' + name]; },
			set: function( dir ) {
				if ( typeof dir === 'string' && /deg$/.test( dir ) ) {
					this['_' + name] = parseFloat( dir ) * ( Math.PI * 2 / 360 );
				} else {
					this['_' + name] = dir;
				}
			}
		});
	});

})( prototypo );
