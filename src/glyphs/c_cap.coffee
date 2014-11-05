exports.glyphs['c_cap'] =
	unicode: 'C'
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 250 + thickness
					y: 70 + 50 * contrast
					width: thickness * opticThickness * contrast * .9
					lDir: '-120deg'
				1:
					x: contours[0].nodes[0].x * 1/2
					y: - overshoot
					width: thickness * opticThickness * contrast * .9
					lDir: '180deg'
					distr: -0
				2:
					x: 0
					y: capHeight / 2
					width: thickness * opticThickness
					lDir: '90deg'
				3:
					x: contours[0].nodes[1].x
					y: capHeight + overshoot
					width: thickness * opticThickness * contrast * .9
					lDir: '0deg'
					distr: -0
				4:
					x: contours[0].nodes[0].x
					y: capHeight - 70 - 50 * contrast
					width: thickness * opticThickness * contrast * .9
					lDir: '-60deg'