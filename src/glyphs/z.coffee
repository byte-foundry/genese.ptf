exports.glyphs['z'] =
	unicode: 'z'
	advanceWidth: width * 430 + thickness
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 380 + thickness - 80
					y: 0
					width: thickness * .9 * contrast
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 1
				1:
					x: 0
					y: 0
					width: thickness * .9 * contrast
					lDir: 0 + 'deg'
					distr: 1
					lType: 'line'
				2:
					x: 0 + thickness * 1.2
					y: thickness * .9 * contrast
					width: thickness * 1.2
					lDir: 180 + 90 + 'deg'
					lType: 'line'
					distr: 0
				3:
					x: contours[0].nodes[0].x
					y: xHeight - thickness * .9 * contrast
					width: thickness * 1.2
					lDir: 180 + 90 + 'deg'
					lType: 'line'
					distr: 0
				4:
					x: contours[0].nodes[0].x
					y: xHeight
					width: thickness * .9 * contrast
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
				5:
					x: 0
					y: xHeight
					width: thickness * .9 * contrast
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
