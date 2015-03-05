exports.glyphs['h'] =
	unicode: 'h'
	advanceWidth: width * 550 + thickness * 2 - ( 86 * 2 ) + serifWidth
	anchors:
		0:
			x: 115 + ( 21 )
			y: ascenderHeight - ( 160 / 500 ) * ascenderHeight
		1:
			x: ( 440 + 64 ) * width
			# y: xHeight * ( 340 / 500 ) - ( thickness + 86 ) / 4
			y: xHeight - 160 - ( thickness + 86 ) / 4 
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: 0 + serifHeight * serifCurve
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0.25
				1:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0.25
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[0].x + contours[0].nodes[0].width * 0.75 - thickness * ( 6 / 86 )
					# y: xHeight * ( 370 / 500 )
					y: xHeight - 130 + ( thickness - 86 ) / 4
					width: thickness * ( 25 / 86 ) * contrast * width
					lDir: Math.max(120 - 60 * width, 45) + 'deg'
					angle: - 90 + 'deg'
					distr: 0
				1:
					x: contours[1].nodes[0].x + ( anchors[1].x - contours[1].nodes[0].x ) * ( 277 / 461 )
					y: xHeight + overshoot
					width: thickness * contrast * ( 75 / 86 ) - 11
					lDir: 0 + 'deg'
					angle: Math.max( - 90 - 33 * contrast , - 133 ) + 'deg'
					distr: 0
					lTension: 1.1
				2:
					x: anchors[1].x
					y: anchors[1].y
					width: thickness
					lDir: - 90 + 'deg'
					distr: 0.25
					lType: 'line'
				3:
					x: contours[1].nodes[2].x
					y: 0 + serifHeight * serifCurve
					width: thickness
					lDir: - 90 + 'deg'
					distr: 0.25
	components:
		0:
			base: 'serif_Bottom'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]		
		1:
			base: 'serif_Bottom'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[1].expanded[0].nodes[4], contours[1].expanded[0].nodes[5] ]
				1:
					y: serifHeight
					onLine: [ contours[1].expanded[0].nodes[2], contours[1].expanded[0].nodes[3] ]
		2:
			base: 'term_TL'
			anchors:
				0:
					x: contours[0].expanded[0].nodes[1].x
					y: contours[0].expanded[0].nodes[1].y
				1:
					x: contours[0].expanded[0].nodes[2].x
					y: contours[0].expanded[0].nodes[2].y
				2:
					x: 0
					y: ascenderHeight

