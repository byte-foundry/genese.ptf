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
			base: 'serif_Bottom'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]






