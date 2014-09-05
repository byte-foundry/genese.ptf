exports.glyph['A'] =
	contours:
		0:
			classes: 'skeleton'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness * contrast
				1:
					x: nodes[3].x / 5
					y: nodes[2].y
					width: thickness * contrast
					angle: 10
				2:
					x: nodes[3].x / 2
					y: xHeight
					width: thickness * contrast * 0.8
					angle: '-90deg'
					distr: 0
					oType: 'line'
				3:
					x: width * 400
					y: 0
					width: thickness * contrast
					angle: -180
		1:
			classes: 'skeleton'
			nodes:
				0:
					y: xHeight / 2
					onLine: [ nodes[0], nodes[2] ],
					width: thickness
					angle: '90deg'
				1:
					y: xHeight / 2
					onLine: [ nodes[2], nodes[3] ],
					width: -thickness
					angle: '90deg'

# a =
# 	y: nodes[0]
# 	x: width

# 	y: width * height
	# y:
	# 	a: width
	# 				# x: thickness
	# 				# y: nodes[2].y
	# 				# width: nodes[1].x * 0.8 + thickness