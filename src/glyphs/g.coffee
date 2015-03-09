exports.glyphs['g'] =
	unicode: 'g'
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
					y: xHeight - serifHeight * serifCurve
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
					y: 0
					width: thickness
					lDir: 90 + 'deg'
				3:
					x: contours[0].nodes[0].x / 2
					y: descender - overshoot
					width: thickness * contrast * .8
					lDir: 0 + 'deg'
					angle: 180 + 90 - 15 + 'deg'
					distr: 1
				4:
					x: 1 ## Should be 0 but create an issue with left offcurve
					y: descender + 100 * aperture
					width: thickness * contrast * .3 + thickness * .55
					lDir: - 60 + 60 * width - 60 * aperture + 'deg'
					distr: 1
					angle: 180 + 30 + 'deg'
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