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
					y: 0
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
					width: thickness * contrast * .85 * opticThickness
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
					width: thickness * contrast * .85 * opticThickness
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


