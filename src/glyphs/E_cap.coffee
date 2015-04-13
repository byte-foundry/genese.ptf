exports.glyphs['E_cap'] =
	unicode: 'E'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 145
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 20 / 100 )
						distr: 0
					})
				1:
					x: 545 + ( thickness / 2 - 43 )
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[1].nodes[0].expand.width
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: capHeight * ( 372 / 750 ) * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 25 / 100 )
						distr: 0
					})
				1:
					x: 485 + ( thickness / 2 - 43 )
					y: contours[2].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[2].nodes[0].expand.width
						distr: 0
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 20 / 100 )
						distr: 1
					})
				1:
					x: 575 + ( thickness / 2 - 43 )
					y: contours[3].nodes[0].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: contours[3].nodes[0].expand.width
						distr: 1
					})
	components:
		0:
			base: 'serif_left'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y - serifHeight - serifCurve * ( 65 /15 )
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y - serifHeight - serifCurve * ( 65 /15 )
				2:
					anchorLine: capHeight
					leftWidth: 1
					direction: -1
		1:
			base: 'serif_left'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y + serifHeight + serifCurve * ( 65 /15 )
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y + serifHeight + serifCurve * ( 65 /15 )
				2:
					leftWidth: 1
