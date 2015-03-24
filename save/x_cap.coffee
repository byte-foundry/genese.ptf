exports.glyphs['x_cap'] =
	unicode: 'X'
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 600
					y: 0
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: 0
					y: capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness * opticThickness * contrast
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					onLine: [ contours[0].nodes[0], contours[0].nodes[1] ]
					y: capHeight / 2
					width: thickness * opticThickness * contrast * .9
					lDir: 90 + 'deg'
					lType: 'line'
					distr: -0.1
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					onLine: [ contours[0].nodes[0], contours[0].nodes[1] ]
					transform: [1, 0, 0, 1, 1, 0]
					y: capHeight / 2
					width: thickness * opticThickness * contrast * .9
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: width * 600 + thickness
					y: capHeight
					width: thickness * opticThickness * contrast * .9
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 1