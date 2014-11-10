exports.glyphs['p'] =
	unicode: 'p'
	advanceWidth: width * 430 + thickness
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
					y: xHeight - Math.max( thickness * contrast + 80 , 150 * aperture )
					width: thickness * contrast
					lDir: Math.min( 90, Math.max( 45, 85 * aperture )) + 'deg'
					angle: -60 + 'deg'
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
					y: Math.max( thickness * contrast + 20 , 150 * aperture )
					width: thickness * contrast * .85
					## lDir: 180 - 60 * aperture + 'deg'
					lDir: Math.min( 90, 90 + 10 * aperture ) + 'deg'
					angle: 60 + 'deg'
					distr: 1