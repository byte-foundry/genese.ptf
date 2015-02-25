exports.glyphs['t'] =
	unicode: 't'
	advanceWidth: width * 350 + thickness
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 290 + thickness - 80
					y: 20
					width: thickness * contrast * .65 + thickness * .20
					lDir: 50 + 'deg'
					angle: - 50 + 'deg'
					distr: 1
				1:
					x: ( width * 70 + contours[0].nodes[0].x + thickness / 2 ) / 2
					y: - overshoot
					width: thickness * contrast * .9
					lDir: 0 + 'deg'
					distr: 1
				2:
					x: width * 70
					y: 120
					width: thickness
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 1
				3:
					x: contours[0].nodes[2].x
					y: xHeight
					width: thickness
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 1
				4:
					x: contours[0].nodes[2].x + thickness
					y: ascenderHeight - 145
					width: thickness * contrast * .8
					lDir: - 80 + 'deg'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: xHeight
					width: thickness * contrast * .85
					lDir: '0deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[0].nodes[4].x + 100
					y: xHeight
					width: thickness * contrast * .85
					lDir: '0deg'
					distr: 0



				