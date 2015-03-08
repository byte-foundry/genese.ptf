exports.glyphs['i'] =
	unicode: 'i'
	advanceWidth: width * 300 + thickness * 2 - ( 86 * 2 ) + serifWidth
	anchors:
		0:
			x: 20 + ( 21 )
			y: xHeight - ( 160 / 500 ) * xHeight
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
					y: xHeight - serifHeight * serifCurve + 20 - 40 * serifCurve - ( thickness + 80 ) / 4
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
			base: 'title'
			anchors:
				0:
					x: contours[0].expanded[0].nodes[1].x + thickness / 2
					y: capHeight + overshoot
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