exports.glyphs['I_cap'] =
	unicode: 'I'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + serifWidth * 1.6 + 40 * spacing + (50)
	anchors:
		0:
			x: 580
			y: capHeight * ( 383 / 750 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 145
					y: 0 + serifHeight + serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight - serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0
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
					leftWidth: 40
					rightWidth: 40
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: capHeight
					leftWidth: 40
					rightWidth: 40
					leftCurve: 50
					directionY: -1
