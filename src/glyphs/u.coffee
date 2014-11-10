exports.glyphs['u'] =
	unicode: 'u'
	advanceWidth: width * 420 + thickness
	anchors:
		0:
			x: width * 325 + thickness - 80
			y: xHeight
		1:
			x: contours[0].nodes[0].x - thickness / 2
			y: Math.max( thickness * contrast + 20 , 150 * aperture )
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
					lDir: - 90 + 'deg'
					angle: 10 + 'deg'
				2:
					x: anchors[0].x / 2
					y: - overshoot
					width: thickness * .9 * contrast
					lDir: 0 + 'deg'
					angle: 105 + 'deg'
					distr: 0
				3:
					x: anchors[0].x - thickness / 2
					y: anchors[1].y
					width: Math.max( thickness * .85 * contrast , thickness * .85 * contrast * aperture )
					lDir: Math.min( 90, Math.max( 45, 85 * aperture )) + 'deg'
					angle: 180 - 80 + 'deg'
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
					y: anchors[1].y
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				2:
					x: anchors[0].x
					y: 0
					width: thickness * .8
					lDir: 90 + 'deg'
					distr: 0.4



