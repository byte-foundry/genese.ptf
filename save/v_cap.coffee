exports.glyphs['v_cap'] =
	unicode: 'V'
	advanceWidth: width * 540 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 500 + thickness - 80
			y: capHeight
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: anchors[0].x / 2
					y: 0
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				2:
					x: anchors[0].x / 2 + thickness * opticThickness / 2
					y: 0
					width: thickness * opticThickness * contrast
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 0
				3:
					x: anchors[0].x + thickness * opticThickness / 2
					y: capHeight
					width: thickness * opticThickness * contrast
					lDir: - 90 + 'deg'
					distr: 0
				