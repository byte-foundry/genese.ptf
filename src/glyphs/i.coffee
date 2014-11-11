exports.glyphs['i'] =
	unicode: 'i'
	advanceWidth: width * 110 + thickness
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
					x: 0
					y: xHeight
					width: thickness
					lDir: '90deg'
		1:
			type: 'closed'
			nodes:
				0:
					x: 25
					y: capHeight
					lDir: 0 + 'deg'
				1:
					x: 50
					y: capHeight - 25
					lDir: -90 + 'deg'
				2:
					x: 25
					y: capHeight - 50
					lDir: 180 + 'deg'
				3:
					x: 0
					y: capHeight - 25
					lDir: 90 + 'deg'
