exports.glyphs['a'] =
	unicode: 'a'
	advanceWidth: width * 400 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 300 + thickness - 80
			y: xHeight * 300/465
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 80 / thickness
					y: xHeight - Math.max( 50 , 80 * aperture )
					width: thickness * contrast * .3 + thickness * .55 
					lDir: Math.min( 90, 50 * aperture ) + 'deg'
				1:
					x: anchors[0].x / 2
					y: xHeight + overshoot
					width: thickness * contrast * .9
					lDir: 0 + 'deg'
					angle: - 80 + axis + 'deg'
					distr: 0
					rDir: 30 * breakPath + 'deg'
				2:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness
					lDir: - 90 + 'deg'
					lType: 'line'
				3:
					x: contours[0].nodes[2].x
					y: xHeight * 90/465
					width: thickness
					lDir: - 90 + 'deg'
					lTension: 1.95
					# lType: 'line'
				4:
					x: contours[0].nodes[2].x + thickness / 2
					y: 0
					width: thickness * contrast * .3 + thickness * .55
					lDir: 0 + 'deg'
					distr: 1
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[2].x - thickness / 2
					y: xHeight * 160/465
					width: thickness * .15 + thickness * contrast * .75
					lDir: 90 + 'deg'
					angle: 20 + 'deg'
					distr: 0
				1:
					x: width * 120
					y: - overshoot
					width: thickness * contrast * .8 + thickness * .1
					lDir: 0 + 'deg'
					angle: - 90 - 10 + axis + 'deg'
					distr: 1
				2:
					x: 0
					y: xHeight * 150/465
					width: thickness
					lDir: - 90 + 'deg'
				3:
					x: contours[1].nodes[1].x
					y: xHeight * 310/465
					width: thickness * contrast * .8 + thickness * .1
					lDir: 180 + 'deg'
					angle: 90 + 15 + axis + 'deg'
					distr: 1
				4:
					x: contours[1].nodes[0].x + thickness / 2
					y: contours[1].nodes[3].y - xHeight * 80/465
					width: thickness * .15 + thickness * contrast * .75
					lDir: 90 + 30 + 'deg'
					angle: 60 + 'deg'
					distr: 1



