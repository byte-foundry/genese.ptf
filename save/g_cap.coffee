exports.glyphs['g_cap'] =
	unicode: 'G'
	advanceWidth: width * 600 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 550 + thickness - 80
			y: capHeight - 150
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: capHeight - ( thickness / 2 + 105 ) * aperture
					width: thickness * opticThickness * .75 * contrast + thickness * opticThickness * .1
					lDir: - 60 + 60 * width - 60 * aperture + 'deg'
					distr: .1
				1:
					x: anchors[0].x / 2
					y: capHeight + overshoot
					width: thickness * opticThickness * .9 * contrast
					lDir: 0 + 'deg'
					angle: - 90 + 5 + 'deg'
					distr: 0
				2:
					x: 0
					y: capHeight / 2
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					distr: 0.5
				3:
					x: anchors[0].x / 2
					y: - overshoot
					width: thickness * opticThickness * .9 * contrast
					lDir: 180 + 'deg'
					angle: 90 - 5 + 'deg'
					distr: 0
				4:
					x: anchors[0].x - thickness * opticThickness + 10
					y: xHeight * 2/3
					width: thickness * opticThickness * .6 * contrast + thickness * opticThickness * .1
					lDir: 180 + 80 + 10 * aperture + 'deg'
					distr: 1
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x + 10
					y: 0
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					angle: - 5 + 'deg'
					lType: 'line'
					distr: 1
				1:
					x: contours[1].nodes[0].x
					y: xHeight * 2/3
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					distr: 1
					lType: 'line'
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[1].nodes[0].x
					y: xHeight * 2/3
					width: thickness * opticThickness * contrast * .95
					lDir: 0 + 'deg'
					lType: 'line'
				1:
					x: anchors[0].x / 2
					y: contours[1].nodes[1].y
					width: thickness * opticThickness * contrast * .95
					lDir: 0 + 'deg'






