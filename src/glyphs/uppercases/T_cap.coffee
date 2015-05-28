exports.glyphs['T_cap'] =
	unicode: 'T'
	ot:
		advanceWidth: contours[1].nodes[0].x - 45 * spacing
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
					x: contours[1].nodes[1].x + ( contours[1].nodes[0].x - contours[1].nodes[1].x ) / 2
					y: 0 + serifHeight + serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 680 * width
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 25 / 85 )
						angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: 20
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 25 / 85 )
						angle: 90 + 'deg'
						distr: 1
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
			base: 'serif_v'
			parentAnchors:
				1:
					x: contours[1].nodes[0].expandedTo[0].x - serifHeight - serifCurve * ( 100 /15 )
					y: contours[1].nodes[0].expandedTo[0].y
				0:
					x: contours[1].nodes[0].expandedTo[1].x - serifHeight - serifCurve * ( 100 /15 )
					y: contours[1].nodes[0].expandedTo[1].y
				2:
					anchorLine: contours[1].nodes[0].expandedTo[0].x
					leftWidth: 40
					leftCurve: 1.2
					# rightWidth: 20
					corrWidth: 0.7
					# rightCurve: 1.2
			parentParameters:
				serifMedian: serifMedian * 0.75
				midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[0].expandedTo[1].x, contours[1].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (-10) + 'deg' ] )
		2:
			base: 'serif_v'
			parentAnchors:
				1:
					x: contours[1].nodes[1].expandedTo[0].x + serifHeight + serifCurve * ( 100 /15 )
					y: contours[1].nodes[1].expandedTo[0].y
				0:
					x: contours[1].nodes[1].expandedTo[1].x + serifHeight + serifCurve * ( 100 /15 )
					y: contours[1].nodes[1].expandedTo[1].y
				2:
					anchorLine: contours[1].nodes[1].expandedTo[0].x
					leftWidth: 40
					# leftCurve: 1.2
					directionY: 1
					corrWidth: 0.7
			parentParameters:
				serifMedian: serifMedian * 0.75
				midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[1].expandedTo[1].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (10) + 'deg' ] )
