exports.glyphs['u'] =
	unicode: 'u'
	advanceWidth: width * 500 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 90
					y: xHeight
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[0].nodes[0].x
					y: xHeight * ( 160 / 500 )
					width: thickness
					lDir: 90 + 'deg'
					distr: 0
				2:
					x: 231
					y: - overshoot
					width: thickness * ( 72 / 86 )
					lDir: 0 + 'deg'
					angle: 56 + 'deg'
					distr: 0
				3:
					x: 411
					y: xHeight * ( 130 / 500 )
					width: thickness * ( 25 / 86 )
					lDir: - 120 + 'deg'
					angle: 90 + 'deg'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[3].x - 6
					y: xHeight
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[1].nodes[0].x
					y: 0
					width: thickness
					lDir: 90 + 'deg'
					distr: 0