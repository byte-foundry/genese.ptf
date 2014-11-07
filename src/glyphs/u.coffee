exports.glyphs['u'] =
	unicode: 'u'
	anchors:
		0:
			x: width * 325 + thickness - 80
			y: xHeight
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: xHeight
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: 0
					y: 200
					width: thickness
					lDir: 90 + 'deg'
				2:
					x: anchors[0].x / 2
					y: - overshoot
					width: thickness * .6 + thickness * .3 * contrast
					lDir: 180 + 'deg'
					distr: 0
				3:
					x: anchors[0].x - thickness / 2
					y: Math.max( xHeight * 120/465, 100 + thickness - 80 )
					width: thickness * .3 + thickness * .6 * contrast
					lDir: 180 + 50 + 'deg'
					angle: 180 - 50 + 'deg'
					distr: 1
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y 
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: anchors[0].x
					y: 50
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				2:
					x: anchors[0].x
					y: 0
					width: thickness * .75
					lDir: 90 + 'deg'
					distr: 0.3




