exports.glyphs['x'] =
	unicode: 'x'
	advanceWidth: width * 440 + ( thickness * 2 ) - 80
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 300
					y: 0
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: 0
					y: xHeight
					width: thickness
					lDir: 90 + 'deg'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness * contrast
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[0].nodes[0].x + thickness
					y: xHeight
					width: thickness * contrast
					lDir: 90 + 'deg'
					distr: 1
				