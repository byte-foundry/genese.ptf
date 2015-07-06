exports.glyphs['K_cap'] =
	unicode: 'K'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[1].x + serifWidth - 50 * spacing + (50)
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 115 + (21)
					y: 0 + serifHeight + serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight - serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 100 / 85 )
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight * ( 375 / 750 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
						distr: 0
					})
				0:
					x: 545 - (10) + thickness - 85
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 40 / 85 ) * opticThickness
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				1:
					x: 579 + (20) + thickness - 85
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 130 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: capHeight * ( 375 / 750 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 101 / 85 ) * opticThickness
						angle: Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point )
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
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * ( 75 / 15 )
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve * ( 75 / 15 )
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * ( 90 / 15 )
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve * ( 90 / 15 )
				2:
					anchorLine: capHeight
					leftWidth: 65
					rightWidth: 5
					anchor_0: contours[1].nodes[0].expandedTo[1].x
					anchor_1: contours[1].nodes[0].expandedTo[0].x
					# rightCurve: 0.6
					# leftCurve: 1.1
					angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point )
					directionY: -1
					baseRight: contours[1].nodes[0].expandedTo[1].point
					baseLeft: contours[1].nodes[0].expandedTo[0].point
					max0: contours[1].nodes[1].expandedTo[0].point
					max1: contours[1].nodes[1].expandedTo[1].point
		# 3:
		# 	base: 'serif_right'
		# 	parentAnchors:
		# 		0:
		# 			x: Utils.onLine({
		# 				y: 0 + serifHeight + serifCurve * ( 65 / 15 )
		# 				on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
		# 			})
		# 			y: 0 + serifHeight + serifCurve * ( 65 / 15 )
		# 		1:
		# 			x: Utils.onLine({
		# 				y: 0 + serifHeight + serifCurve * ( 65 / 15 )
		# 				on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
		# 			})
		# 			y: 0 + serifHeight + serifCurve * ( 65 / 15 )
		# 		2:
		# 			rightWidth: 2.2
		# 			rightCurve: 5
		# 			angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve * ( 65 / 15 )
						on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
					})
					y: 0 + serifHeight + serifCurve * ( 65 / 15 )
				1:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve * ( 65 / 15 )
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
					})
					y: 0 + serifHeight + serifCurve * ( 65 / 15 )
				2:
					leftWidth: 65
					rightWidth: 15
					anchor_0: contours[2].nodes[0].expandedTo[0].x
					anchor_1: contours[2].nodes[0].expandedTo[1].x
					rightCurve: 0.6
					leftCurve: 1.1
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
					baseRight: contours[2].nodes[1].expandedTo[1].point
					baseLeft: contours[2].nodes[1].expandedTo[0].point
					left: false
					# max0: contours[1].nodes[1].expandedTo[0].point
					# max1: contours[1].nodes[1].expandedTo[1].point
