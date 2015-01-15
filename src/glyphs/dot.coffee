exports.glyphs['dot'] =
	unicode: '.'
	advanceWidth: width * 80 + thickness
	contours:
		0:
			type: 'closed'
			nodes:
				0:
					x: 1 ## should be 0
					y: 0
					lDir: 0 + 'deg'
				1:
					x: thickness / 2
					y: thickness / 2
					lDir: -90 + 'deg'
				2:
					x: 1 ## should be 0
					y: thickness
					lDir: 180 + 'deg'
				3:
					x: - thickness / 2
					y: thickness / 2
					lDir: 90 + 'deg'
