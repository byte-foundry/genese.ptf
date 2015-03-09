exports.glyphs['u_cap'] =
	unicode: 'U'
	advanceWidth: width * 680 + ( thickness * 2 ) * contrast - 80 + serifWidth
	anchors:
		0:
			x: width * 550 + thickness * contrast - 80 + serifWidth
			y: capHeight * 280/688 * crossbar
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0 + serifWidth
					y: capHeight - serifHeight * serifCurve
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: 0 + serifWidth
					y: 200 + (100/698) * capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
				2:
					x: anchors[0].x / 2 + serifWidth / 2
					y: 0 - overshoot
					width: thickness * opticThickness * .85 * contrast
					lDir: 180 + 'deg'
					distr: 0
				3:
					x: anchors[0].x
					y: contours[0].nodes[1].y
					width: thickness * opticThickness * contrast
					lDir: - 90 + 'deg'
					lType: 'line'
				4:
					x: anchors[0].x
					y: capHeight - serifHeight * serifCurve
					width: thickness * opticThickness * contrast
					lDir: - 90 + 'deg'
	components:
		0:
			base: 'serif_Top'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					x: contours[0].nodes[0].x + thickness * opticThickness / 2
		1:
			base: 'serif_Top'
			anchors:
				0:
					x: contours[0].nodes[4].x - thickness * opticThickness * contrast / 2
					y: capHeight - serifHeight
					# onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					x: contours[0].nodes[4].x + thickness * opticThickness * contrast / 2
					y: capHeight - serifHeight
					# x: contours[0].nodes[0].x + thickness * opticThickness / 2