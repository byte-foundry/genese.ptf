exports.glyphs['f'] =
	type: 'test'
	anchors:
		0:
			x: width * 260 + thickness ######
			y: ascenderHeight + overshoot - 30 * aperture
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 80
					y: 0
					width: thickness
					lDir: '90deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight * 3/4
					width: thickness
					lDir: '90deg'
					distr: 0
				2:
					x: Math.max( contours[0].nodes[0].x + thickness , contours[0].nodes[0].x + ( anchors[0].x - contours[0].nodes[0].x ) / 2 ) 
					y: ascenderHeight + overshoot
					width: thickness * contrast * .9
					lDir: '0deg'
					angle: -85 + 'deg'
					distr: 0
				3:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * .85 * contrast
					lDir: Math.max( 90 + 40, - thickness / 3 ) + 'deg'
					angle: 180 + 60 + 'deg'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: xHeight
					width: thickness * contrast * .9
					lDir: '0deg'
					lType: 'line'
					distr: 0
				1:
					x: anchors[0].x * 3/4
					y: xHeight
					width: thickness * contrast * .9
					lDir: '0deg'
					distr: 0



				