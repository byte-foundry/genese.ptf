exports.glyphs['c_cap'] =
	unicode: 'C'
	advanceWidth: width * 750 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 650 + thickness - 80
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
					lDir: - 50 + 50 * width - 50 * aperture + 'deg'
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
					x: anchors[0].x
					y: ( thickness / 2 + 105 ) * aperture
					width: thickness * opticThickness * .75 * contrast + thickness * opticThickness * .1
					lDir: 180 + 50 - 50 * width + 50 * aperture + 'deg'
					distr: .1
