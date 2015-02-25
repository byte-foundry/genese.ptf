exports.glyphs['two'] =
	unicode: '2'
	advanceWidth: width * 550 + thickness * opticThickness
	anchors:
		0:
			x: width * 450 + thickness 
			y: capHeight * (470/700)
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: capHeight * (560/700)
					width: thickness * contrast * .85
					lDir: 60 + 180 + 'deg'
					# angle: 30 + 180 + 'deg'
					distr: 0.99
					# angle: 0 + 'deg'
				1:
					x: anchors[0].x / 2 
					y: capHeight + overshoot
					width: thickness * .3 + thickness * contrast * .55 
					lDir: 180 + 'deg'
					distr: 1
				2:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness
					lDir: 90 + 'deg'
					distr: 1
					angle: 10 + 'deg'
				3:
					x: anchors[0].x / 2 + 45
					y: capHeight * (270/700)
					width: thickness * .95 
					lDir: 30 + 'deg'
					# lDir: Utils.lineAngle( contours[0].nodes[2], contours[0].nodes[3] ) + Math.PI * 2
					angle: - 90 + 45 + 'deg'
					# lType: 'line'
				4:
					x: 0
					y: thickness * contrast
					width: thickness * contrast
					lDir: 90 + 'deg'
					distr: 0
					lType: 'line'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness * contrast
					lDir: 0 + 'deg'
					distr: 1
					lType: 'line'
					# lTension: 0
				1:
					x: anchors[0].x - overshoot
					y: 0
					width: thickness * contrast
					lDir: 0 + 'deg'
					distr: 1
				# 3:
				# 	x: 0
				# 	y: 0
				# 	width: thickness * contrast * .85
				# 	lDir: 30 + 'deg'
				# 	rDir: 30 + 'deg'
				# 	distr: .9
				# 	lType: 'line'
				# 	angle: - 90 + 'deg'
				# 4:
				# 	x: anchors[0].x
				# 	y: 0
				# 	width: thickness * contrast * .85
				# 	lDir: 0 + 'deg'
				# 	distr: .9
				# 