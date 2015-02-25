exports.glyphs['b'] =
	unicode: 'b'
	advanceWidth: width * 350 + thickness * 2
	anchors:
		0:
			x: width * 350 + thickness - 80
			y: Math.max( thickness * contrast + 20 , 150 * aperture )
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness * .8
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0.6
				1:
					x: 0
					y: anchors[0].y
					width: thickness
					lDir: '90deg'
					lType: 'line'
				2:
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
					y: xHeight - Math.max( thickness * contrast + 80 , 150 * aperture )
					width: thickness * contrast * .7
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
					width: thickness * contrast * .75
					## lDir: 180 - 60 * aperture + 'deg'
					lDir: Math.min( 90, 90 + 10 * aperture ) + 'deg'
					angle: 60 + 'deg'
					distr: 1