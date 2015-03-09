exports.glyphs['h_cap'] =
	unicode: 'H'
	advanceWidth: width * 590 + thickness + serifWidth
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: serifHeight * serifCurve
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight * serifCurve
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 500
					y: serifHeight * serifCurve
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: contours[1].nodes[0].x
					y: capHeight - serifHeight * serifCurve
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: capHeight / 2 * crossbar
					width: thickness * opticThickness * .85 * contrast
					lDir: '0deg'
					lType: 'line'
				1:
					x: contours[1].nodes[0].x
					y: contours[2].nodes[0].y
					width: thickness * opticThickness * .85 * contrast
					lDir: '0deg'
					lType: 'line'
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
					onLine: [ contours[1].expanded[0].nodes[0], contours[1].expanded[0].nodes[1] ]
				1:
					y: serifHeight
					onLine: [ contours[1].expanded[0].nodes[2], contours[1].expanded[0].nodes[3] ]
		2:
			base: 'serif_Top'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]
		3:
			base: 'serif_Top'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[1].expanded[0].nodes[0], contours[1].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					onLine: [ contours[1].expanded[0].nodes[2], contours[1].expanded[0].nodes[3] ]