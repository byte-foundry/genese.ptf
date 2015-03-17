exports.glyphs['l'] =
	unicode: 'l'
	advanceWidth: width * 250 + thickness * 2 - ( 86 * 2 ) + serifWidth
	anchors:
		0:
			x: 115 + ( 21 )
			y: ascenderHeight - ( 160 / 500 ) * ascenderHeight
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
					x: contours[0].expanded[0].nodes[2].x
					y: contours[0].expanded[0].nodes[2].y
				2:
					x: 0
					y: ascenderHeight

