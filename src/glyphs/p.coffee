exports.glyphs['p'] =
	unicode: 'p'
	advanceWidth: width * 430 + ( thickness * 2 ) - 80 + serifWidth
	anchors:
		0:
			x: width * 350 + thickness - 80 + serifWidth
			y: xHeight / 2
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0 + serifWidth
					y: xHeight - serifHeight * serifCurve + 20 - 40 * serifCurve - ( thickness + 80 ) / 4
					width: thickness
					lDir: '90deg'
					lType: 'line'
				1:
					x: contours[0].nodes[0].x
					y: descender + serifHeight * serifCurve
					width: thickness
					lDir: '90deg'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[0].x + thickness / 2
					y: xHeight - Math.max( thickness * contrast + 80 , 120 * aperture )
					width: thickness * contrast * .7
					lDir: Math.min( 90, Math.max( 45, 85 * aperture )) + 'deg'
					angle: -60 + 'deg'
					distr: 1
				1:
					x: anchors[0].x / 2
					y: xHeight + overshoot
					width: thickness * contrast
					lDir: '0deg'
					distr: 0
					angle: '-85deg'
				2:
					x: anchors[0].x
					y: xHeight / 2
					width: thickness
					lDir: '-90deg'
				3:
					x: anchors[0].x / 2
					y: 0 - overshoot
					width: thickness * contrast
					lDir: '180deg'
					distr: 0
					angle: '85deg'
				4:
					x: contours[1].nodes[0].x
					y: Math.max( thickness * contrast + 20 , 120 * aperture )
					width: thickness * contrast * .6
					## lDir: 180 - 60 * aperture + 'deg'
					lDir: Math.min( 90, 90 + 10 * aperture ) + 'deg'
					angle: 60 + 'deg'
					distr: 1
	components:
		0:
			base: 'serif_Bottom'
			anchors:
				0:
					y: descender + serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: descender + serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]
		1:
			base: 'term_TL'
			anchors:
				0:
					x: contours[0].expanded[0].nodes[1].x
					y: contours[0].expanded[0].nodes[1].y
				1:
					x: contours[0].expanded[0].nodes[3].x
					y: contours[0].expanded[0].nodes[3].y
				2:
					x: 0
					y: xHeight