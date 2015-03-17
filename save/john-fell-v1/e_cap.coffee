exports.glyphs['E_cap'] =
	unicode: 'E'
	advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
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
					x: contours[0].nodes[0].x + contours[0].nodes[0].width
					y: capHeight
					width: thickness * opticThickness * ( 20 / 100 )
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: 545 + ( thickness / 2 - 43 )
					y: contours[1].nodes[0].y
					width: contours[1].nodes[0].width
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: capHeight * ( 372 / 750 ) * crossbar
					width: thickness * opticThickness * ( 25 / 100 )
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: 485 + ( thickness / 2 - 43 )
					y: contours[2].nodes[0].y
					width: contours[2].nodes[0].width
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
		3:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: 0
					width: thickness * opticThickness * ( 20 / 100 )
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 1
				1:
					x: 575 + ( thickness / 2 - 43 )
					y: contours[3].nodes[0].y
					width: contours[1].nodes[0].width
					lDir: 0 + 'deg'
					distr: 1




