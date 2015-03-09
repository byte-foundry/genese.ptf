exports.glyphs['l'] =
	unicode: 'l'
	advanceWidth: width * 120 + thickness + serifWidth
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 20 + 0 + serifWidth
					y: 0 + serifHeight * serifCurve
					width: thickness
					lDir: '90deg'
					lType: 'line'
				1:
					x: 20 + 0 + serifWidth
					y: ascenderHeight - serifHeight * serifCurve + 20 - 40 * serifCurve - ( thickness + 80 ) / 4
					width: thickness
					lDir: '90deg'
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