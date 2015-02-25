exports.glyphs['m'] =
	unicode: 'm'
	advanceWidth: width * 830 + thickness * 2 - ( 86 * 2 ) + serifWidth
	anchors:
		0:
			x: 477 * width + ( thickness - 86 )
			y: xHeight * ( 340 / 500 )
		1:
			x: 778 * width + ( thickness - 86 ) * 2
			y: xHeight * ( 340 / 500 )
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 115
					y: 0 + serifHeight * serifCurve
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: 115
					y: xHeight - ( 160 / 500 ) * xHeight
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[0].x + thickness - thickness * ( 6 / 86 )
					y: xHeight * ( 390 / 500 )
					width: thickness * ( 25 / 86 ) * contrast
					lDir: 60 + 'deg'
					angle: - 90 + 'deg'
					distr: 0
				1:
					x: anchors[0].x * ( 322 / 415 )
					y: xHeight + overshoot
					width: thickness * ( 75 / 86 ) * contrast
					lDir: 0 + 'deg'
					angle: - 126 + 'deg'
					distr: 0
					lTension: 1.2
				2:
					x: anchors[0].x
					y: anchors[0].y - ( thickness + 86 ) / 4
					width: thickness
					lDir: - 90 + 'deg'
					# distr: 1
					lType: 'line'
				3:
					x: contours[1].nodes[2].x
					y: 0 + serifHeight * serifCurve
					width: thickness
					lDir: - 90 + 'deg'
					# distr: 1
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[1].nodes[2].x + thickness / 2 - thickness * ( 6 / 86 )
					y: xHeight * ( 370 / 500 )
					width: thickness * ( 25 / 86 ) * contrast
					lDir: 66 + 'deg'
					angle: - 90 + 'deg'
					distr: 0
				1:
					x: anchors[1].x * ( 625 / 715 )
					y: xHeight + overshoot
					width: thickness * ( 75 / 86 ) * contrast
					lDir: 0 + 'deg'
					angle: - 126 + 'deg'
					distr: 0
					lTension: 1.1
				2:
					x: anchors[1].x
					y: anchors[1].y - ( thickness + 86 ) / 4
					width: thickness
					lDir: - 90 + 'deg'
					# distr: 1
					lType: 'line'
				3:
					x: contours[2].nodes[2].x
					y: 0 + serifHeight * serifCurve
					width: thickness
					lDir: - 90 + 'deg'
					# distr: 1
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
			base: 'serif_Bottom'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[2].expanded[0].nodes[4], contours[2].expanded[0].nodes[5] ]
				1:
					y: serifHeight
					onLine: [ contours[2].expanded[0].nodes[2], contours[2].expanded[0].nodes[3] ]
		3:
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


