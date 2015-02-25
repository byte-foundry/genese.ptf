exports.glyphs['r'] =
	unicode: 'r'
	advanceWidth: width * 250 + thickness * 1.3
	anchors:
		0:
			x: width * 150 + 60 + Math.max( 40, 20 * aperture ) + thickness - 80
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
					x: thickness / 2
					y: xHeight - 20 - Math.min( 50, thickness / 2 + 40 )
					width: thickness * contrast * .8 + thickness * .1
					lDir: 80 + 'deg'
					angle: 180 + 90 + 'deg'
					distr: 0
				1:
					x: anchors[0].x * .6
					y: anchors[0].y
					width: thickness * contrast * .9
					lDir: 180 + 'deg'
					angle: - 105 + 'deg'
					distr: 0
				2:
					x: anchors[0].x
					y: xHeight - Math.max( 20 , 60 * aperture ) - thickness / 2 
					width: thickness * contrast * .2 + thickness * .7
					lDir: - 80 - 10 * aperture + 'deg'
					angle: 235 - 30 * aperture + 'deg'
					distr: 0
