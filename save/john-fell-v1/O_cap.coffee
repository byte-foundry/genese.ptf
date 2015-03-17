exports.glyphs['O_cap'] =
	unicode: 'O'
	advanceWidth: width * 800 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: 665 + ( thickness - 86 )
			y: capHeight * ( 375 / 750 )
	contours:
		0:
			tags: 'skeleton'
			type: 'closed'
			nodes:
				0:
					x: 35
					y: anchors[0].y
					width: thickness * ( 110 / 86 ) * opticThickness
					lDir: 90 + 'deg'
					distr: 0
				1:
					x: 410 + ( thickness * opticThickness - 86 * opticThickness )
					y: capHeight + overshoot
					width: thickness * contrast * ( 26 / 86 )
					lDir: 0 + 'deg'
					angle: - 100 + 'deg'
					distr: 0
				2:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * ( 110 / 86 ) * opticThickness
					lDir: - 90 + 'deg'
					distr: 1
				3:
					x: 400 + ( thickness * opticThickness - 86 * opticThickness )
					y: - overshoot
					width: thickness * contrast * ( 26 / 86 )
					lDir: 180 + 'deg'
					angle: - 101 + 180 + 'deg'
					distr: 0