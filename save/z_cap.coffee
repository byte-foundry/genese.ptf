exports.glyphs['z_cap'] =
	unicode: 'Z'
	advanceWidth: width * 630 + thickness
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 580 + thickness * opticThickness - 80
					y: 0
					width: thickness * opticThickness * .9 * contrast
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 1
				1:
					x: 0
					y: 0
					width: thickness * opticThickness * .9 * contrast
					lDir: 0 + 'deg'
					distr: 1
					lType: 'line'
				2:
					x: 0 + thickness * opticThickness * 1.3
					y: thickness * opticThickness * .9 * contrast
					width: thickness * opticThickness * 1.3
					lDir: 180 + 90 + 'deg'
					lType: 'line'
					distr: 0
				3:
					x: contours[0].nodes[0].x
					y: capHeight - thickness * opticThickness * .9 * contrast
					width: thickness * opticThickness * 1.3
					lDir: 180 + 90 + 'deg'
					lType: 'line'
					distr: 0
				4:
					x: contours[0].nodes[0].x
					y: capHeight
					width: thickness * opticThickness * .9 * contrast
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
				5:
					x: 0
					y: capHeight
					width: thickness * opticThickness * .9 * contrast
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
