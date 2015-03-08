exports.glyphs['l_cap'] =
	unicode: 'L'
	advanceWidth: width * 450 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 450 + thickness - 80
			y: 0
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: 0
					width: thickness * contrast * .85 * opticThickness
					lDir: 0 + 'deg'
					distr: 1
					lType: 'line'
				1:
					x: 0
					y: 0
					width: thickness * contrast * .85 * opticThickness
					lDir: 0 + 'deg'
					distr: 1
					lType: 'line'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: 0
					y: capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
	