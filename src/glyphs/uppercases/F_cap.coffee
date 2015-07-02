exports.glyphs['F_cap'] =
	unicode: 'F'
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
					x: 145 + (25)
					y: 0 + serifHeight + serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 535 * width + ( thickness / 2 - 43 )
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 20 / 100 ) * contrast
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
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
					x: contours[1].nodes[1].x
					y: contours[2].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 28 / 100 ) * contrast
						distr: 0
					})
				1:
					x: 485 * width
					y: capHeight * ( 400 / 750 ) * crossbar
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[2].nodes[0].expand.width
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
					anchorLine: 0
					leftWidth: 40
					rightWidth: 40
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y - serifHeight - serifCurve * ( 65 /15 )
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y - serifHeight - serifCurve * ( 65 /15 )
				2:
					anchorLine: capHeight
					leftWidth: 40
					directionY: -1
					right: false
		2:
			base: 'serif_v'
			parentAnchors:
				0:
					x: Math.max(contours[2].nodes[0].expandedTo[1].x, contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[2].nodes[0].expandedTo[0].y
				1:
					x: Math.max(contours[2].nodes[0].expandedTo[1].x, contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[2].nodes[0].expandedTo[1].y
				2:
					anchorLine: contours[2].nodes[1].expandedTo[0].x
					leftWidth: 65
					leftCurve: 1.2
					rightWidth: 65
					rightCurve: 1.2
			parentParameters:
				serifMedian: serifMedian * 0.75
				serifHeight: serifHeight * 0.95
		3:
			base: 'serif_v'
			parentAnchors:
				0:
					x: Math.max(contours[1].nodes[1].expandedTo[0].x, contours[1].nodes[0].expandedTo[0].x - serifHeight - serifCurve * ( 100 /15 ) )
					y: contours[1].nodes[0].expandedTo[0].y
				1:
					x: Math.max(contours[1].nodes[1].expandedTo[1].x, contours[1].nodes[0].expandedTo[1].x - serifHeight - serifCurve * ( 180 /15 ) )
					y: contours[1].nodes[0].expandedTo[1].y
				2:
					anchorLine: contours[1].nodes[0].expandedTo[0].x
					right: false
					leftWidth: 60
					leftCurve: 1.2
			parentParameters:
				serifMedian: serifMedian * 0.75
				midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[1].expandedTo[1].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (-8) + 'deg' ] )
