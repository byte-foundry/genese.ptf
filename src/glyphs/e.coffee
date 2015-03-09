exports.glyphs['e'] =
	unicode: 'e'
	advanceWidth: width * 430 + thickness
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 330 - 20 + thickness / 2
					y: 60 * aperture
					# width: thickness * contrast * .3 + thickness * .6  ################
					width: thickness * contrast * .6 + thickness * .25
					lDir: if width < 1 then 70/thickness + 'deg' else Math.min( 90, 40 * aperture ) + 'deg'
					# angle: Math.min( 0, - 50 + 50 * aperture ) + 'deg'
					angle: - 35 * width + 'deg'
					distr: 1
				1:
					x: contours[0].nodes[0].x / 2
					y: - overshoot
					width: thickness * contrast * .85
					lDir: 0 + 'deg'
					distr: 1
					angle: - 90 - axis + 'deg'
				2:
					x: 0
					y: xHeight / 2 * crossbar
					width: thickness
					lDir: '-90deg'
					lTension: crossbar + .1
				3:
					x: contours[0].nodes[1].x
					y: xHeight + overshoot
					width: thickness * contrast * .85
					lDir: '180deg'
					distr: 1
					angle: 90 - axis + 'deg'
					lTension: crossbar + .1
				4:
					x: width * 345 - 40 + thickness / 2
					y: xHeight * (230/465) * crossbar
					width: thickness / 2 + thickness / 2 * contrast
					width: thickness * contrast * .15 + thickness * .75
					lDir: 90 + 'deg'
					lType: 'line'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[4].x - ( thickness / 2 + thickness / 2 * contrast ) / 2 + 1 ## dirty hack
					y: contours[0].nodes[4].y
					width: thickness * .1 + thickness * contrast * .9
					lDir: 0 + 'deg'
					distr: 1
					lType: 'line'
				1:
					x: thickness / 2
					y: contours[0].nodes[4].y
					width: contours[1].nodes[0].width
					lDir: 0 + 'deg'
					distr: 1
					
					