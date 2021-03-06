exports.glyphs['f_cap'] =
	unicode: 'F'
	advanceWidth: width * 410 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 450 + thickness - 80
			y: capHeight
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
					x: 0
					y: capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x * 3/4
					y: capHeight * 1/2 * crossbar
					width: thickness * .5 * opticThickness + thickness * contrast * .35
					lDir: 0 + 'deg'
					lType: 'line'
				1:
					x: 0
					y: contours[1].nodes[0].y
					width: thickness * contrast * .85 * opticThickness
					lDir: 0 + 'deg'
					lType: 'line'
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: capHeight
					width: thickness * .5 * opticThickness + thickness * contrast * .35
					lDir: 0 + 'deg'
					distr: 0
					lType: 'line'
				1:
					x: 0
					y: capHeight
					width: thickness * contrast * .85 * opticThickness
					lDir: 0 + 'deg'
					distr: 0
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
			base: 'serif_TopLeft'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					x: contours[0].nodes[0].x + thickness * opticThickness / 2		



