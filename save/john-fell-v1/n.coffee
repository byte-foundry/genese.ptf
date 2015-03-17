exports.glyphs['n'] =
	unicode: 'n'
	advanceWidth: width * 550 + thickness * 2 - ( 85 * 2 ) + serifWidth
	anchors:
		0:
			x: 120 + ( 21 )
			y: xHeight - ( 160 / 500 ) * xHeight
		1:
			x: ( 445 + 64 ) * width
			# y: xHeight * ( 340 / 500 ) - ( thickness + 85 ) / 4
			y: xHeight - 160 - ( thickness + 85 ) / 4 
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
					x: contours[0].nodes[0].x + contours[0].nodes[0].width * 0.75 - thickness * ( 5 / 85 ) ## + Math.min( axis, 0)
					# y: xHeight * ( 370 / 500 )
					y: xHeight - 130 + ( thickness - 85 ) / 4
					width: thickness * ( 25 / 85 ) * contrast * width
					lDir: if width <= 1.2 then 65 - 65 * width + 65 + 'deg' else 65 - 15 * width + 'deg'
					# angle: - 90 + axis + 'deg'
					angle: - 90 + 'deg'
					distr: 0
					debug: console.log( contours[1].nodes[0].lDir * (180/Math.PI) )
				1:
					x: anchors[1].x * ( ( 390 - 200 ) / ( 445 - 200 ) )
					y: xHeight + overshoot
					width: thickness * contrast * ( 77 / 85 )
					lDir: 0 + 'deg'
					# angle: Math.max( - thickness - 77 * contrast, Math.max( - 129 * width, - 129 ) ) + 'deg'
					# angle: - 129 + axis + 'deg'
					angle: - 129 + 'deg'
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
					y: xHeight


		# 0:
		# 	base: 'serif_BL'
		# 	anchors:
		# 		0:
		# 			y: serifHeight
		# 			onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
		# 		1:
		# 			x: contours[0].expanded[0].nodes[0].x
		# 			y: contours[0].expanded[0].nodes[0].y
		# 1:
		# 	base: 'serif_BR'
		# 	anchors:
		# 		0:
		# 			y: serifHeight
		# 			onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]
		# 		1:
		# 			x: contours[0].expanded[0].nodes[3].x
		# 			y: contours[0].expanded[0].nodes[3].y
		# 2:
		# 	base: 'serif_BL'
		# 	anchors:
		# 		0:
		# 			y: serifHeight
		# 			onLine: [ contours[1].expanded[0].nodes[4], contours[1].expanded[0].nodes[5] ]
		# 		1:
		# 			x: contours[1].expanded[0].nodes[4].x
		# 			y: contours[1].expanded[0].nodes[4].y
		# 3:
		# 	base: 'serif_BR'
		# 	anchors:
		# 		0:
		# 			y: serifHeight
		# 			onLine: [ contours[1].expanded[0].nodes[2], contours[1].expanded[0].nodes[3] ]
		# 		1:
		# 			x: contours[1].expanded[0].nodes[3].x
		# 			y: contours[1].expanded[0].nodes[3].y
		

