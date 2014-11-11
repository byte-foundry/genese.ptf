exports.glyphs['t_cap'] =
	unicode: 'T'
	advanceWidth: width * 580 + thickness
	anchors:
		0:
			x: width * 550 + thickness
			y: capHeight
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x / 2
					y: 0
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: anchors[0].x / 2
					y: anchors[0].y
					width: thickness * opticThickness
					lDir: 90 + 'deg'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * opticThickness * .9 * contrast
					lDir: 0 + 'deg'
					distr: 0
					lType: 'line'
				1:
					x: 0
					y: anchors[0].y
					width: thickness * opticThickness * .9 * contrast
					lDir: 0 + 'deg'
					distr: 0
	components:
		0:
			base: 'serif_BR'
			anchors:
				0:
					x: contours[0].nodes[0].expanded[1].x
					y: serifHeight / 4
				1:
					x: contours[0].nodes[0].expanded[1].x
					y: contours[0].nodes[0].expanded[1].y
			transform: [1, 0, 0, 1, -2, 0]








