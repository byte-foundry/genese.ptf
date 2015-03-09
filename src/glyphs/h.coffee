exports.glyphs['h'] =
	unicode: 'h'
	advanceWidth: width * 420 + thickness + serifWidth
	anchors:
		0:
			x: serifWidth + width * 260 + ( thickness - 80 ) / 4
			y: xHeight - 165 - ( thickness - 80 ) / 2 
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0 + serifWidth
					y: 0 + serifHeight * serifCurve
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: contours[0].nodes[0].x
					y: xHeight - 120 - 65 * contrast
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				2:
					x: contours[0].nodes[0].x - thickness / 2
					y: ascenderHeight - serifHeight * serifCurve + 20 - 40 * serifCurve - ( thickness + 80 ) / 4
					width: thickness 
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[0].x + thickness / 2
					y: contours[0].nodes[1].y - ( thickness - 80 ) / 2 * contrast
					width: thickness * .6 * contrast
					lDir: Math.min( 10 * width + 80, 90 ) + 'deg'
					distr: 1
					angle: - 60 + 'deg'
				1:
					x: contours[0].nodes[0].x + width * 160 + ( thickness - 80 ) / 4
					# x: contours[1].nodes[0].x + ( (anchors[0].x + 0.75 * thickness ) - contours[1].nodes[0].x ) / 2
					y: xHeight + overshoot
					width: thickness * contrast * .8
					lDir: 0 + 'deg'
					angle: - 90 - 10 + 'deg'
					distr: 0
					# rTension: Math.min( 1 / contrast, 1 )
					lTension: Math.max( 1 + Math.min( ( .1 * ( thickness - 80 ) ), .2 ), 1 )
					rDir: 30 * breakPath + 'deg'
				2:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: .75
				3:
					x: contours[1].nodes[2].x
					y: 0 + serifHeight * serifCurve
					width: thickness
					lDir: - 90 + 'deg'
					distr: .75
	components:
		0:
			base: 'serif_Bottom'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[1].expanded[0].nodes[4], contours[1].expanded[0].nodes[5] ]
				1:
					y: serifHeight
					onLine: [ contours[1].expanded[0].nodes[2], contours[1].expanded[0].nodes[3] ]
		1:
			base: 'serif_Bottom'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[4], contours[0].expanded[0].nodes[5] ]
		2:
			base: 'term_TL'
			anchors:
				0:
					x: contours[0].expanded[0].nodes[1].x
					y: contours[0].expanded[0].nodes[1].y
				1:
					x: contours[0].expanded[0].nodes[3].x
					y: contours[0].expanded[0].nodes[3].y
				2:
					x: 0
					y: ascenderHeight

# exports.glyphs['h'] =
# 	unicode: 'h'
# 	advanceWidth: width * 400 + thickness + serifWidth
# 	contours:
# 		0:
# 			tags: 'skeleton'
# 			type: 'open'
# 			nodes:
# 				0:
# 					x: 0
# 					y: 0 + serifHeight * serifCurve
# 					width: thickness
# 					lDir: '90deg'
# 					lType: 'line'
# 				1:
# 					x: contours[0].nodes[0].x
# 					y: ascenderHeight - serifHeight * serifCurve + 20 - 40 * serifCurve - ( thickness + 80 ) / 4
# 					width: thickness
# 					lDir: '90deg'
# 					lType: 'line'
# 		1:
# 			tags: 'skeleton'
# 			type: 'open'
# 			nodes:
# 				0:
# 					x: 0 + thickness / 2
# 					y: xHeight - 140 - 45 * contrast
# 					width: thickness * .6 * contrast
# 					lDir: Math.min( 10 * width + 80, 90 ) + 'deg'
# 					distr: .99
# 				1:
# 					x: width * 160
# 					y: xHeight + overshoot
# 					width: thickness * contrast * .9
# 					lDir: '0deg'
# 					distr: 0
# 					rTension: Math.min( 1 / contrast, 1 )
# 				2:
# 					x: width * 300
# 					y: xHeight - 165
# 					width: thickness
# 					lDir: '-90deg'
# 					lType: 'line'
# 				3:
# 					x: contours[1].nodes[2].x
# 					y: 0 + serifHeight * serifCurve
# 					width: thickness
# 					lDir: '-90deg'
# 	components:
# 		0:
# 			base: 'serif_Bottom'
# 			anchors:
# 				0:
# 					y: serifHeight
# 					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
# 				1:
# 					y: serifHeight
# 					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]
# 		1:
# 			base: 'serif_Bottom'
# 			anchors:
# 				0:
# 					y: serifHeight
# 					onLine: [ contours[1].expanded[0].nodes[4], contours[1].expanded[0].nodes[5] ]
# 				1:
# 					y: serifHeight
# 					onLine: [ contours[1].expanded[0].nodes[2], contours[1].expanded[0].nodes[3] ]
# 		2:
# 			base: 'term_TL'
# 			anchors:
# 				0:
# 					x: contours[0].expanded[0].nodes[1].x
# 					y: contours[0].expanded[0].nodes[1].y
# 				1:
# 					x: contours[0].expanded[0].nodes[3].x
# 					y: contours[0].expanded[0].nodes[3].y
# 				2:
# 					x: 0
# 					y: ascenderHeight