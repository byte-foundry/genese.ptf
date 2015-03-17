exports.glyphs['P_cap'] =
	unicode: 'P'
	advanceWidth: width * 650 + thickness * 2 - ( 86 * 2 )
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
					x: 145
					y: 0
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[0].x + thickness * opticThickness
					y: capHeight
					width: thickness * opticThickness * ( 20 / 100 )
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: 345
					y: capHeight
					width: thickness * opticThickness * ( 36 / 100 )
					lDir: 0 + 'deg'
					lDir: 90 - 146 + 'deg'
					distr: 0
				2:
					x: 490
					y: capHeight * ( 555 / 750 )
					width: thickness * opticThickness * ( 112 / 100 )
					lDir: - 90 + 'deg'
					angle: 180 - 10 + 'deg'
					distr: 1
					lTension: 1.15
				3:
					x: 295
					y: capHeight * ( 365 / 750 )
					width: thickness * opticThickness * ( 25 / 100 )
					lDir: 180 + 'deg'
					lType: 'line'
					distr: 1
				4:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[3].y - contours[1].nodes[3].width
					width: contours[1].nodes[3].width
					lDir: 180 + 'deg'
					distr: 0




