exports.glyphs['T_cap'] =
	unicode: 'T'
	ot:
		advanceWidth: 500 - 45 * spacing
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
					x: 285 + (42)
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
					x: 620
					y: capHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 25 / 85 )
						angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: 50
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
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
				1:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
				2:
					anchorLine: contours[1].nodes[0].expandedTo[0].x
					leftWidth: 40
					rightWidth: 40
					# directionY: -1
				# parentParameters:
				# 	serifMedian: serifMedian * 0.75
				# 	midWidth: midWidth * 0.98
				# transformOrigin: Array( contours[0].nodes[1].expandedTo[1].x, contours[0].nodes[1].expandedTo[0].y )
				# transforms: Array( [ 'skewX', serifRotate * (-8) + 'deg' ] )
