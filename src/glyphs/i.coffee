exports.glyphs['i'] =
	unicode: 'i'
	ot:
		advanceWidth: width * 250 + thickness * 2 - ( 86 * 2 ) + serifWidth
	anchors:
		0:
			x: 115 + ( 21 )
			y: xHeight - ( 160 / 500 ) * xHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: 0 + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
						angle: 0
					})
				1:
					x: anchors[0].x
					y: xHeight - spurHeight * ( 60 ) - serifHeight * ( 10 / 20 ) - serifCurve * ( 40 / 15 )
					expand: Object({
						width: thickness
						distr: 0.25
						angle: 0
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: 0
					leftWidth: 15
					rightWidth: 18
		1:
			base: 'attaque'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: xHeight
					leftWidth: 1.25
		2:
			base: 'title'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + thickness * ( 35 / 85 )
					y: Math.max( xHeight + overshoot + thickness * ( 100 / 86 ), capHeight - 20 )
