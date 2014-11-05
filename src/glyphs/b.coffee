exports.glyphs['b'] =
	unicode: 'b'
	anchors:
		0:
			x: width * 350 + thickness - 80
			y: xHeight / 2
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
					y: ascenderHeight
					width: thickness
					lDir: '90deg'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: thickness / 2
					y: xHeight - thickness / 3 * aperture - 140 * contrast
					width: thickness * contrast
					lDir: 60 * aperture + 'deg'
					distr: 1
				1:
					x: anchors[0].x / 2
					y: xHeight + overshoot
					width: thickness * contrast
					lDir: '0deg'
					distr: 0
					angle: '-85deg'
				2:
					x: anchors[0].x
					y: xHeight / 2
					width: thickness
					lDir: '-90deg'
				3:
					x: anchors[0].x / 2
					y: 0 - overshoot
					width: thickness * contrast
					lDir: '180deg'
					distr: 0
					angle: '85deg'
				4:
					x: thickness / 2
					y: thickness  / 3 * aperture + 140 * contrast
					width: thickness * contrast * .85
					lDir: 180 - 60 * aperture + 'deg'
					distr: 1