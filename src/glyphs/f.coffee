exports.glyphs['f'] =
	unicode: 'f'
	advanceWidth: width * 280 + thickness
	anchors:
		0:
			x: width * 300 + thickness ######
			y: ascenderHeight + overshoot - 30 * aperture
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 80
					y: 0 + serifHeight * serifCurve
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
					width: thickness * .5 + thickness * contrast * .35 # * term
					lDir: Math.max( 90 + 60, - thickness / 3 ) + 'deg'
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
	components:
		0:
			base: 'serif_Bottom'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: serifHeight
					# onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]
					x: width * 80 + thickness