exports.glyphs['c'] =
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 250 + thickness
					y: 70 + 50 * contrast
					width: thickness * contrast * .9
					lDir: '-120deg'
				1:
					x: contours[0].nodes[0].x * 1/2
					y: - overshoot
					width: thickness * contrast * .9
					lDir: '180deg'
					distr: -0
				2:
					x: 0
					y: xHeight / 2
					width: thickness
					lDir: '90deg'
				3:
					x: contours[0].nodes[1].x
					y: xHeight + overshoot
					width: thickness * contrast * .9
					lDir: '0deg'
					distr: -0
				4:
					x: contours[0].nodes[0].x
					y: xHeight - 70 - 50 * contrast
					width: thickness * contrast * .9
					lDir: '-60deg'