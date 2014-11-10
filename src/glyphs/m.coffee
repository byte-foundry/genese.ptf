exports.glyphs['m'] =
	unicode: 'm'
	advanceWidth: width * 690 + thickness
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
					x: contours[0].nodes[0].x
					y: xHeight - 140 - 45 * contrast
					width: thickness
					lDir: '90deg'
					lType: 'line'
				2:
					x: contours[0].nodes[0].x - Math.max(thickness / 2, thickness / 2 * aperture)
					y: xHeight
					width: Math.min( thickness * .9, thickness * .85 + thickness * .15 * width ) 
					lDir: '90deg'
					lType: 'line'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0 + thickness / 2
					y: contours[0].nodes[1].y
					width: thickness * .6 * contrast
					lDir: Math.min( 10 * width + 80, 90 ) + 'deg'
					distr: .99
				1:
					x: width * 160
					y: xHeight + overshoot
					width: thickness * contrast * .9
					lDir: '0deg'
					distr: 0
					rTension: Math.min( 1 / contrast, 1 )
				2:
					x: width * 300
					y: xHeight - 165
					width: thickness
					lDir: '-90deg'
					lType: 'line'
				3:
					x: contours[1].nodes[2].x
					y: 0
					width: thickness
					lDir: '-90deg'
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[1].nodes[3].x + thickness / 2
					y: xHeight - 165 - 20
					width: thickness * .1 + thickness * .8 * contrast
					lDir: '90deg'
					distr: .99
				1:
					x: contours[1].nodes[3].x + width * 160
					y: xHeight + overshoot
					width: thickness * contrast * .9
					lDir: '0deg'
					distr: 0
				2:
					x: contours[1].nodes[3].x + width * 310
					y: xHeight - 165
					width: thickness
					lDir: '-90deg'
					lType: 'line'
				3:
					x: contours[2].nodes[2].x
					y: 0
					width: thickness
					lDir: '-90deg'