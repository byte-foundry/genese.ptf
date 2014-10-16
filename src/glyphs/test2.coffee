exports.glyphs['test2'] =
	type: 'test'
	anchors:
		0:
			x: width * 400 / 2
			y: 400
		1:
			x: width * 400
			y: 0
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness
					angle: 0
					distr: 0
					lType: 'line'
				1:
					type: 'corner'
					x: anchors[0].x
					y: anchors[0].y
					width: thickness
					angle: 0
					distr: 0
					lType: 'line'
				2:
					type: 'corner'
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * 2
					angle: '180deg'
					distr: 1
					lType: 'line'
				3:
					x: anchors[1].x
					y: anchors[1].y
					width: thickness * 2
					angle: '180deg'
					distr: 1
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					y: xHeight / 2
					lType: 'line'
					width: thickness
					angle: Utils.lineAngle( contours[0].nodes[0], contours[0].nodes[1] )
					onLine: [ contours[0].nodes[0], contours[0].nodes[1] ]
				1:
					y: xHeight / 2
					lType: 'line'
					width: thickness
					angle: Utils.lineAngle( contours[0].nodes[3], contours[0].nodes[2] )
					onLine: [ contours[0].nodes[2], contours[0].nodes[3] ]
					transform: [1, 0, 0, 1, 1, 0]
	# components:
	# 	0:
	# 		base: 'serif-br'
	# 		anchors:
	# 			0:
	# 				y: xHeight / 4
	# 				onLine: [ contours[0].nodes[2], contours[0].nodes[3] ]
	# 			1:
	# 				x: anchors[1].x
	# 				y: anchors[1].y