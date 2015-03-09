exports.glyphs['j_cap'] =
	unicode: 'J'
	advanceWidth: width * 500 + thickness + serifWidth
	anchors:
		0:
			x: 400 * width
			y: capHeight
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: capHeight - serifHeight * serifCurve
					width: thickness * opticThickness
					lDir: '90deg'
					lType: 'line'
				1:
					x: anchors[0].x
					y: capHeight * (200/720)
					width: thickness * opticThickness
					lDir: '90deg'
				2:
					x: anchors[0].x / 2 + thickness * opticThickness / 2 # adjust left side
					y: - overshoot
					width: thickness * opticThickness * contrast * .8
					lDir: 0 + 'deg'
					angle: 180 + 90  + 'deg'
					distr: 1
				3:
					x: 40 # adjust left side
					y: 150
					width: thickness * opticThickness * contrast * .3 + thickness * .5
					lDir: - 80 + 'deg'
					distr: 1
					angle: 180 + 20 + 'deg'
	components:
		0:
			base: 'serif_Top'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					x: contours[0].nodes[0].x + thickness * opticThickness / 2
					y: capHeight - serifHeight