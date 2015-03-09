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
					width: thickness * contrast * .3 + thickness * .45 
					# lDir: Math.max( Math.min( 70, 50 * aperture * width ), 60 ) + 'deg'
					lDir: if thickness < 70 then 70 + 'deg' else Math.min( 90, 50 * aperture ) + 'deg'
					angle: if aperture  > 1 then - 55 + ( 55 / 1.9 ) * aperture + 'deg' else - 55 + 'deg'
				1:
					x: anchors[0].x / 2
					y: xHeight + overshoot
					width: thickness * contrast * .8
					lDir: 0 + 'deg'
					angle: - 100 + ( thickness * (15/80) ) + axis + 'deg'
					distr: 0
					rDir: 30 * breakPath + 'deg'
				2:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: .75
				3:
					x: contours[0].nodes[2].x
					y: xHeight * 90/465
					width: thickness
					lDir: - 90 + 'deg'
					lTension: 1.95
					distr: .75
					# lType: 'line'
				4:
					x: contours[0].nodes[2].x + thickness * contours[0].nodes[2].distr
					y: 0
					width: thickness * contrast * .3 + thickness * .55
					lDir: 0 + 'deg'
					distr: 1
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[2].x - thickness * ( 1 - contours[0].nodes[2].distr )
					y: xHeight * 160/465
					width: thickness * .15 + thickness * contrast * .5
					lDir: 90 + 'deg'
					angle: 20 + 'deg'
					distr: 0
				1:
					x: width * 120
					y: - overshoot
					width: thickness * contrast * .65 + thickness * .2
					lDir: 0 + 'deg'
					angle: - 90 - ( thickness * (20/80) ) + axis + 'deg'
					distr: 1
				2:
					x: 0
					y: xHeight * 150/465 * crossbar
					width: thickness
					lDir: - 90 + 'deg'
					angle: 180 - 10 + 'deg'
				3:
					x: contours[1].nodes[1].x
					y: xHeight * 310/465 * crossbar
					width: thickness * contrast * .8 + thickness * .1
					lDir: 180 + 'deg'
					angle: 90 + ( thickness * (15/80) ) + axis + 'deg'
					distr: 1
				4:
					x: contours[0].nodes[2].x + thickness * ( 1 - contours[0].nodes[2].distr )
					y: contours[1].nodes[3].y - xHeight * 80/465 * crossbar
					width: thickness * .15 + thickness * contrast * .5
					lDir: 90 + 30 + 'deg'
					angle: 60 + 'deg'
					distr: 1



