exports.glyphs['t'] =
	unicode: 't'
	advanceWidth: width * 400 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: 370 * width + thickness - 86
			y: xHeight * ( 100 / 500 )
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * ( 11 / 86 )
					lDir: - 109 + 'deg'
					angle: - 26 + 'deg'
					distr: 0
				1:
					x: anchors[0].x * ( 240 / 370 )
					y: - overshoot
					width: thickness * ( 48 / 86 )
					lDir: 180 + 'deg'
					angle: 180 + 57 + 'deg'
					distr: 1
				2:
					x: 100 * width
					y: xHeight * ( 160 / 500 )
					width: thickness
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 1
				3:
					x: 100 * width
					y: xHeight * ( 455 / 500 )
					width: thickness
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 1
				4:
					x: 100 * width + thickness
					y: xHeight * ( 455 / 500 )
					width: thickness + 65 * width
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 0
				5:
					x: 100 * width + thickness
					y: contours[0].nodes[4].y + 10
					width: thickness + 65 * width
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 0
				6:
					x: 100 * width + thickness
					y: xHeight * ( 600 / 500 )
					width: thickness * ( 6 / 86 )
					lDir: - 90 + 'deg'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x - 25
					y: xHeight
					width: thickness * ( 45 / 86 )
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[0].nodes[3].x
					y: contours[1].nodes[0].y
					width: thickness * ( 45 / 86 )
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
