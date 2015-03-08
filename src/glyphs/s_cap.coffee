exports.glyphs['s_cap'] =
	unicode: 'S'
	advanceWidth: width * 520 + thickness * opticThickness
	anchors:
		0:
			x: width * 450 + thickness * opticThickness - 80
			y: capHeight - Math.max( 70 , 110 * aperture )
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 110 * aperture
					width: thickness * opticThickness * contrast * .85 # * term
					lDir: - 45 * aperture + 'deg'
					distr: .7
				1:
					x: anchors[0].x / 2
					y: - overshoot
					width: thickness * opticThickness * contrast * .85
					lDir: '0deg'
					distr: 1
				2:
					x: anchors[0].x
					y: capHeight * 120/465
					width: thickness * opticThickness * contrast * .4 + thickness * opticThickness * .5
					lDir: '90deg'
					angle: Math.min( 25, thickness * opticThickness / 3 - 25 * contrast ) + breakPath + 'deg'
				3:
					x: anchors[0].x / 2 + 65
					y: capHeight * 230/465
					width: thickness * opticThickness
					##lDir: 160 + 'deg'
					lDir: Math.max( 90, Math.min( 180, thickness * opticThickness / 2 + 120 ) ) + 'deg'
					## rTension: 1.4
					lType: 'line'
				4:
					x: anchors[0].x / 2 - 65
					y: capHeight * 250/465
					width: thickness * opticThickness
					##lDir: 160 + 'deg'
					lDir: Math.max( 90, Math.min( 180, thickness * opticThickness / 2 + 120 ) ) + 'deg'
				5:
					x: width * 15
					y: capHeight * 345/465
					width: thickness * opticThickness * contrast * .4 + thickness * opticThickness * .5
					lDir: 90 + 'deg'
					angle: Math.min( 25, thickness * opticThickness / 3 - 25 * contrast ) + breakPath + 'deg'
					distr: .4
					rTension: 1.4
				6:
					x: anchors[0].x / 2
					y: capHeight + overshoot
					width: thickness * opticThickness * contrast * .85
					lDir: '0deg'
					distr: 0
				7:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * opticThickness * contrast * .85 # * term
					lDir: - 45 * aperture + 'deg'
					distr: .3



