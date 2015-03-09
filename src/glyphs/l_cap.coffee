exports.glyphs['l_cap'] =
	unicode: 'L'
	advanceWidth: width * 450 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 450 + thickness - 80
			y: 0
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: 0
					width: thickness * .5 * opticThickness + thickness * contrast * .35
					lDir: 0 + 'deg'
					distr: 1
					lType: 'line'
				1:
					x: 0
					y: 0
					width: thickness * contrast * .85 * opticThickness
					lDir: 0 + 'deg'
					distr: 1
					lType: 'line'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: 0
					y: capHeight - serifHeight * serifCurve
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
	components:
		0:
			base: 'serif_Top'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[1].expanded[0].nodes[0], contours[1].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					onLine: [ contours[1].expanded[0].nodes[2], contours[1].expanded[0].nodes[3] ]