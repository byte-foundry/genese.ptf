exports.glyphs['h'] =
	type: 'test'
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness
					lDir: '90deg'
					lType: 'line'
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight
					width: thickness
					lDir: '90deg'
					lType: 'line'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0 + thickness / 2
					y: xHeight - 140 - 45 * contrast
					width: thickness * .6 * contrast
					lDir: Math.min( 10 * width + 80, 90 ) + 'deg'
					distr: .99
				1:
					x: width * 160
					y: xHeight + overshoot
					width: thickness * contrast * .9
					lDir: '0deg'
					distr: 0
					rTension: Math.min( 1 / contrast, 1 )
				2:
					x: width * 300
					y: xHeight - 165
					width: thickness
					lDir: '-90deg'
					lType: 'line'
				3:
					x: contours[1].nodes[2].x
					y: 0
					width: thickness
					lDir: '-90deg'