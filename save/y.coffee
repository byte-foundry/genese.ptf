exports.glyphs['y'] =
	unicode: 'y'
	advanceWidth: width * 440 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 360 + thickness - 80
			y: xHeight
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: xHeight
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: anchors[0].x / 2
					y: - overshoot
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				2:
					x: anchors[0].x / 2 + thickness / 2
					y: - overshoot
					width: thickness * contrast
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 0
				3:
					x: anchors[0].x + thickness / 2
					y: xHeight
					width: thickness * contrast
					lDir: - 90 + 'deg'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[1].x + thickness / 2
					y: contours[0].nodes[1].y + 1
					width: thickness * contrast * .85
					lDir: Utils.lineAngle( contours[0].nodes[2], contours[0].nodes[3] ) + Math.PI
					angle: 0 + 'deg'
					distr: 1
				1:
					x: contours[0].nodes[0].x + thickness * terminalBall / 2 + 30
					y: descender - overshoot / 2
					width: thickness * contrast * .3 + thickness * .4
					lDir: 0 + 'deg'
					distr: .99 ##### should be 1
					angle: - Utils.lineAngle( contours[0].nodes[2], contours[0].nodes[3] ) + Math.PI * 2
				#	lType: 'line'
				# 2:
				# 	x: contours[1].nodes[1].x
				# 	y: contours[1].nodes[1].y + 50
				# 	width: thickness 
				# 	lDir: - 90 + 'deg'
	# components:
	# 	0:
	# 		base: 'ball_BL'
	# 		anchors:
	# 			0:
	# 				onLine: [ contours[1].nodes[0], contours[1].nodes[1] ]
	# 				x: contours[1].nodes[1].expanded[0].x
	# 			1:
	# 				x: contours[1].nodes[1].expanded[1].x
	# 				y: contours[1].nodes[1].expanded[1].y
	# 		transform: [1, 0, 0, 1, -2, 0]
	# 			