exports.glyphs['r'] =
	unicode: 'r'
	anchors:
		0:
			x: width * 150 + thickness - 80
			y: xHeight + overshoot
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: 0
					y: xHeight
					width: thickness
					lDir: 90 + 'deg'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0 + thickness / 2
					y: xHeight - 180 - thickness / 2 + 40
					width: thickness * contrast * .6 + thickness * .3
					lDir: 80 + 'deg'
					angle: Math.max( 0, - 85 - thickness ) + 'deg'
					distr: 1
				1:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * contrast * .4 + thickness * .5
					lDir: 0 + 'deg'
					angle: - 105 + 'deg'
					distr: 0
				2:
					x: anchors[0].x + 80
					y: Math.min( xHeight, xHeight * 460/465 * aperture )
					width: thickness * contrast * .2 + thickness * .7
					lDir: ( 90 + 50 ) * aperture + 'deg'
					angle: Math.max( - 90, ( 90 + 180 - 10 ) * aperture ) + 'deg'
					distr: 0
