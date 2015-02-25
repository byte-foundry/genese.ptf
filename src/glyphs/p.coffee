exports.glyphs['p'] =
	unicode: 'p'
	advanceWidth: width * 600 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: 475 - 86 + thickness
			y: xHeight * ( 250 / 500 )
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 115
					y: descender
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[0].nodes[0].x
					y: xHeight - 160 - ( thickness + 86 ) / 4 
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[0].x + contours[0].nodes[0].width - ( 10 / 86 ) * thickness
					y: xHeight * ( 435 / 500 )
					width: thickness * ( 45 / 86 )
					lDir: 60 + 'deg'
					angle: 90 + 'deg'
					distr: 1
				1:
					x: anchors[0].x * ( 345 / 475 )
					y: xHeight + overshoot
					width: thickness * ( 53 / 86 )
					lDir: 0 + 'deg'
					angle: 180 + 222 + 'deg'
					distr: 1
				2:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * ( 97 / 86 )
					lDir: 90 + 'deg'
					angle: 12 + 'deg'
					distr: 0
					lTension: 0.9
				3:
					x: contours[1].nodes[1].x
					y: - overshoot / 2
					width: thickness * contrast * ( 27 / 86 )
					lDir: 0 + 'deg'
					angle: 180 + 112 + 'deg'
					distr: 1
				4:
					x: contours[1].nodes[0].x
					y: xHeight * ( 145 / 500 )
					width: thickness * ( 51 / 86 ) * contrast
					lDir: - 64 + 'deg'
					angle: 180 + 29 + 'deg'
					distr: 0
	components:
		0:
			base: 'term_TL'
			anchors:
				0:
					x: contours[0].expanded[0].nodes[1].x
					y: contours[0].expanded[0].nodes[1].y
				1:
					x: contours[0].expanded[0].nodes[2].x
					y: contours[0].expanded[0].nodes[2].y
				2:
					x: 5 # optical correction
					y: xHeight



