exports.glyphs['p'] =
	unicode: 'p'
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
					y: xHeight
					width: thickness
					lDir: '90deg'
					lType: 'line'
				1:
					x: 0
					y: descender
					width: thickness
					lDir: '90deg'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: thickness / 2
					y: xHeight - Math.max( thickness * contrast, 150 * aperture )
					width: Math.max( thickness * .7 * contrast , thickness * .7 * contrast * aperture )
					lDir: 60 * aperture + 'deg'
					angle: - 75 + 'deg'
					distr: 1
				1:
					x: anchors[0].x / 2
					y: xHeight + overshoot
					width: thickness * contrast
					lDir: '0deg'
					distr: 0
					angle: -85 + axis + 'deg'
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
					angle: 85 + axis + 'deg'
				4:
					x: thickness / 2
					y: Math.max( thickness * contrast , 130 * aperture )
					width: Math.max( thickness * .7 * contrast , thickness * .7 * contrast * aperture )
					lDir: 180 - 60 * aperture + 'deg'
					angle: 75 + 'deg'
					distr: 1