exports.glyphs['i_cap'] =
	unicode: 'I'
	advanceWidth: width * 130 + thickness
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0 + serifHeight * serifCurve
					width: thickness * opticThickness
					lDir: '90deg'
					lType: 'line'
				1:
					x: 0
					y: capHeight - serifHeight * serifCurve
					width: thickness * opticThickness
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
			base: 'serif_Top'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]