exports.glyphs['a'] =
	type: 'test'
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: xHeight * 400/465
					width: thickness * contrast * .85
					lDir: '40deg'
					distr: .2
				1:
					x: width * 150
					y: xHeight + overshoot
					width: thickness * contrast * .9
					lDir: '0deg'
					angle: '-80deg'
					distr: 0
				2:
					x:  width * 250
					y: xHeight * 300/465
					width: thickness
					lDir: '-90deg'
					lType: 'line'
				3:
					x: contours[0].nodes[2].x
					y: xHeight * 50/465
					width: thickness
					lDir: '-90deg'
					lType: 'line'
				4:
					x: contours[0].nodes[2].x + 10
					y: 0
					width: thickness
					lDir: '-90deg'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					onLine: [ contours[0].nodes[2], contours[0].nodes[3] ]
					y: xHeight * 100/465
					width: thickness * contrast
					lDir: '90deg'
					distr: 1
				1:
					x: width * 120
					y: - overshoot
					width: thickness * contrast
					lDir: '0deg'
					distr: 1
				2:
					x: 0
					y: xHeight * 150/465
					width: thickness
					lDir: '-90deg'
				3:
					x: contours[1].nodes[1].x
					y: xHeight * 250/465
					width: thickness * contrast
					lDir: '180deg'
					lType: 'line'
				4:
					x: contours[1].nodes[0].x
					y: xHeight * 240/465
					width: thickness * contrast
					lDir: '180deg'