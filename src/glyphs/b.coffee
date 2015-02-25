exports.glyphs['b'] =
	unicode: 'b'
	advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: 550 - 86 + thickness
			y: xHeight * ( 250 / 500 )
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 95
					y: 0
					width: thickness * .116
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: 95
					y: xHeight * ( 195 / 500 )
					width: thickness
					lDir: 90 + 'deg'
					angle: - 30 + 'deg'
					lType: 'line'
					distr: 0
				2:
					x: 95
					y: xHeight * ( 195 / 500 )
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				3:
					x: contours[0].nodes[0].x
					y: ascenderHeight - 160 - ( thickness + 86 ) / 4 
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 95 + thickness
					y: xHeight * ( 350 / 500 )
					width: thickness * .2 * contrast
					lDir: 84 + 'deg'
					angle: - 10 + 180 + 'deg'
					distr: 0
				1:
					x: anchors[0].x * ( 330 / 455 ) - 69
					y: xHeight + overshoot
					width: thickness * ( 58 / 86 )
					lDir: 0 + 'deg'
					angle: 180 + 240 + 'deg'
					distr: 1
				2:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * ( 97 / 86 )
					lDir: 90 + 'deg'
					angle: 22 + 'deg'
					distr: 1
				3:
					x: anchors[0].x * ( 310 / 455 ) - 65
					y: - overshoot
					width: thickness * contrast * ( 20 / 86 )
					lDir: 0 + 'deg'
					angle: 180 + 76 + 'deg'
					distr: 1
				4:
					x: contours[1].nodes[0].x
					y: xHeight * ( 115 / 500 )
					width: thickness * ( 50 / 86 ) * contrast
					lDir: - 64 + 'deg'
					angle: 180 + 29 + 'deg'
					distr: 0
				5:
					x: contours[1].nodes[0].x
					y: xHeight * ( 195 / 500 )
					width: thickness * ( 50 / 86 ) * contrast
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 0
	components:
		0:
			base: 'term_TL'
			anchors:
				0:
					x: contours[0].expanded[0].nodes[3].x
					y: contours[0].expanded[0].nodes[3].y
				1:
					x: contours[0].expanded[0].nodes[4].x
					y: contours[0].expanded[0].nodes[4].y
				2:
					x: 0
					y: ascenderHeight





