exports.glyphs['s'] =
	unicode: 's'
	anchors:
		0:
			x: width * 320 + thickness - 80
			y: xHeight - 70
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 75
					width: thickness * contrast * .85
					lDir: '-45deg'
					distr: .7
				1:
					x: anchors[0].x / 2
					y: - overshoot
					width: thickness * contrast * .9
					lDir: '0deg'
					distr: 1
				2:
					x: anchors[0].x
					y: xHeight * 120/465
					width: thickness
					lDir: '90deg'
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
					width: thickness
					lDir: 90 + 'deg'
					distr: .4
					rTension: 1.4
				6:
					x: anchors[0].x / 2
					y: xHeight + overshoot
					width: thickness * contrast * .9
					lDir: '0deg'
					distr: 0
				7:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * contrast * .85
					lDir: 180 + 130 +'deg'
					distr: .3