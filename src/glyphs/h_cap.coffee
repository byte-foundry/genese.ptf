exports.glyphs['h_cap'] =
	type: 'test'
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness * opticThickness
					lDir: '90deg'
					lType: 'line'
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					width: thickness * opticThickness
					lDir: '90deg'
					lType: 'line'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 500
					y: 0
					width: thickness * opticThickness
					lDir: '90deg'
					lType: 'line'
				1:
					x: contours[1].nodes[0].x
					y: capHeight
					width: thickness * opticThickness
					lDir: '90deg'
					lType: 'line'
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: capHeight / 2 * crossbar
					width: thickness * opticThickness * .85 * contrast
					lDir: '0deg'
					lType: 'line'
				1:
					x: contours[1].nodes[0].x
					y: contours[2].nodes[0].y
					width: thickness * opticThickness * .85 * contrast
					lDir: '0deg'
					lType: 'line'