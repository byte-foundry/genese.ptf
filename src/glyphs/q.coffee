exports.glyphs['q'] =
	unicode: 'q'
	advanceWidth: width * 380 + thickness * 2
	anchors:
		0:
			x: width * 365 + thickness - 80 - thickness / 2
			y: xHeight - Math.max( thickness * contrast + 20 , 150 * aperture )
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 365 + thickness - 80
					y: xHeight
					width: thickness * .8
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0.4
				1:
					x: contours[0].nodes[0].x
					y: anchors[0].y
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				2:
					x: contours[0].nodes[0].x
					y: descender + serifHeight * serifCurve
					width: thickness
					lDir: 90 + 'deg'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: Math.max( thickness * contrast + 80 , 150 * aperture )
					width: Math.max( thickness * .7 * contrast , thickness * .7 * contrast * aperture )
					lDir: Math.min( 90, Math.max( 45, 85 * aperture )) + 'deg'
					angle: - 60 + 'deg'
					distr: 0
				1:
					x: contours[0].nodes[0].x / 2
					y: - overshoot
					width: thickness * .8 * contrast
					lDir: 0 + 'deg'
					angle: -90 - 10 - axis + 'deg'
					distr: 1
				2:
					x: 0
					y: xHeight / 2
					width: thickness
					lDir: -90 + 'deg'
				3:
					x: contours[0].nodes[0].x / 2
					y: xHeight + overshoot
					width: thickness * .8 * contrast
					lDir: 180 + 'deg'
					angle: 90 - 10 - axis + 'deg'
					distr: 1
				4:
					x: contours[0].nodes[0].x - thickness / 2
					y: xHeight - Math.max( thickness * contrast + 80 , 150 * aperture )
					width: thickness * .7 * contrast
					lDir: Math.min( 90, 90 + 10 * aperture ) + 'deg'
					angle: 60 + 'deg'
					distr: 0
	components:
		0:
			base: 'serif_Bottom'
			anchors:
				0:
					x: contours[0].nodes[2].x - thickness / 2
					y: descender + serifHeight
				1:
					x: contours[0].nodes[2].x + thickness / 2
					y: descender + serifHeight
		