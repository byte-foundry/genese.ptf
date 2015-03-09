exports.glyphs['s'] =
	unicode: 's'
	advanceWidth: width * 440 + thickness
	anchors:
		0:
			x: width * 325 + thickness - 80
			y: xHeight - Math.max( 30 , 70 * aperture )
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 70 * aperture
					width: thickness * .5 + thickness * contrast * .35 # * term
					lDir: - 45 * aperture + 'deg'
					distr: .7
				1:
					x: anchors[0].x / 2
					y: - overshoot
					width: thickness * contrast * .85
					lDir: '0deg'
					distr: 1
				2:
					x: anchors[0].x
					y: xHeight * 120/465
					width: thickness * contrast * .4 + thickness * .5
					lDir: '90deg'
					angle: Math.min( 25, thickness / 3 - 25 * contrast ) + breakPath + 'deg'
				3:
					x: anchors[0].x / 2 + 45
					y: xHeight * 230/465
					width: thickness
					##lDir: 160 + 'deg'
					lDir: Math.max( 90, Math.min( 180, thickness / 2 + 120 ) ) + 'deg'
					## rTension: 1.4
					lType: 'line'
				4:
					x: anchors[0].x / 2 - 45
					y: xHeight * 250/465
					width: thickness
					##lDir: 160 + 'deg'
					lDir: Math.max( 90, Math.min( 180, thickness / 2 + 120 ) ) + 'deg'
				5:
					x: width * 15
					y: xHeight * 345/465
					width: thickness * contrast * .4 + thickness * .5
					lDir: 90 + 'deg'
					angle: Math.min( 25, thickness / 3 - 25 * contrast ) + breakPath + 'deg'
					distr: .4
					rTension: 1.4
				6:
					x: anchors[0].x / 2
					y: xHeight + overshoot
					width: thickness * contrast * .85
					lDir: '0deg'
					distr: 0
				7:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * .5 + thickness * contrast * .35 # * term
					lDir: - 45 * aperture + 'deg'
					distr: .3



