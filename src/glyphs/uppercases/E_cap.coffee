exports.glyphs['E_cap'] =
	unicode: 'E'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: contours[0].nodes[0].x
			y: capHeight - serifHeight - serifCurve * ( 65 /15 )
			dirOut: 90 + 'deg'
			typeOut: 'line'
			expand: Object({
				width: thickness * opticThickness * ( 100 / 85 )
				distr: 0
			})
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 145
					y: 0 + serifHeight + serifCurve * ( 65 /15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight - serifCurve * ( 65 /15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
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
						width: thickness * opticThickness * ( 25 / 100 )
						distr: 0
					})
				1:
					x: 545 * width + ( thickness / 2 - 43 )
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
					y: contours[2].nodes[1].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 28 / 100 )
						distr: 0
					})
				1:
					x: 480 * width + ( thickness / 2 - 43 )
					y: capHeight * ( 385 / 750 ) * crossbar
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
						# width: Math.max( serifHeight, thickness * opticThickness * ( 20 / 100 ) ) // Fit the thickness to the serifHeight
						width: thickness * opticThickness * ( 25 / 100 )
						distr: 1
					})
				1:
					x: 575 * width + ( thickness / 2 - 43 )
					y: contours[3].nodes[0].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: contours[3].nodes[0].expand.width
						distr: 1
					})
		4:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x + ( serifHeight + serifCurve ) * ( 80 / 35 )
					y: contours[3].nodes[0].expand.width
					tensionOut: 1.5
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( serifHeight + serifCurve ) * ( 80 / 35 )
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				2:
					x: contours[4].nodes[1].x
					y: contours[4].nodes[0].y
					typeOut: 'line'
				3:
					x: contours[4].nodes[0].x
					y: contours[4].nodes[0].y
					typeOut: 'line'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight - serifHeight - serifCurve * ( 65 /15 )
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: capHeight - serifHeight - serifCurve * ( 65 /15 )
				2:
					anchorLine: capHeight
					leftWidth: 40
					right: false
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: serifHeight + serifCurve * ( 65 /15 )
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: serifHeight + serifCurve * ( 65 /15 )
				2:
					leftWidth: 40
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
					# anchorLine: Math.max( contours[2].nodes[0].expandedTo[0].x + serifHeight + serifCurve  * ( 100 / 15 ), contours[2].nodes[0].expandedTo[0].x )
					anchorLine: contours[2].nodes[1].expandedTo[0].x
					leftWidth: 70
					rightWidth: 70
		3:
			base: 'serif_v'
			parentAnchors:
				1:
					x: Math.max(contours[1].nodes[0].expandedTo[1].x, contours[1].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[1].nodes[1].expandedTo[1].y
				0:
					x: Math.max(contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[1].nodes[1].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[1].expandedTo[0].x
					right: false
					leftWidth: 60
					leftCurve: 1.2
			parentParameters:
				serifMedian: serifMedian * 0.75
				midWidth: midWidth * 0.98
			transformOrigin: Array( contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (-4) + 'deg' ] )
		4:
			base: 'serif_v'
			parentAnchors:
				1:
					x: Math.max(contours[3].nodes[0].expandedTo[1].x, contours[3].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[3].nodes[0].expandedTo[1].y
				0:
					x: Math.max(contours[3].nodes[0].expandedTo[0].x, contours[3].nodes[1].expandedTo[0].x - serifHeight - serifCurve * ( 100 / 15 ) )
					y: contours[3].nodes[0].expandedTo[0].y
				2:
					anchorLine: contours[3].nodes[1].expandedTo[0].x
					rightWidth: 60
					left: false
			transformOrigin: Array( contours[3].nodes[0].expandedTo[0].x, contours[3].nodes[0].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (8) + 'deg' ] )
