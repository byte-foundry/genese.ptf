exports.glyphs['v'] =
	unicode: 'v'
	advanceWidth: width * 440 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 345 + thickness - 80
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
	# components:
	# 	0:
	# 		base: 'serif_Top'
	# 		anchors:
	# 			0:
	# 				# x: contours[0].nodes[3].expanded[0].x
	# 				y: xHeight - serifHeight
	# 				onLine: [ contours[0].nodes[2].expanded[0], contours[0].nodes[3].expanded[0] ]
	# 			1:
	# 				# x: contours[0].nodes[3].expanded[1].x
	# 				y: xHeight - serifHeight
	# 				onLine: [ contours[0].nodes[3].expanded[0], contours[0].nodes[2].expanded[0] ]