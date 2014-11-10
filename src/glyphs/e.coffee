exports.glyphs['e'] =
	unicode: 'e'
	advanceWidth: width * 430 + thickness
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 345 - 40 + thickness / 2
					y: 50
					width: thickness * contrast * .85
					lDir: 45 + 'deg'
					angle: -35 + 'deg'
					distr: 1
				1:
					x: contours[0].nodes[0].x / 2
					y: - overshoot
					width: thickness * contrast * .85
					lDir: 0 + 'deg'
					distr: 1
					angle: - 90 - axis + 'deg'
				2:
					x: 0
					y: xHeight / 2 * crossbar
					width: thickness
					lDir: '-90deg'
				3:
					x: contours[0].nodes[1].x
					y: xHeight + overshoot
					width: thickness * contrast * .85
					lDir: '180deg'
					distr: 1
					angle: 90 - axis + 'deg'
				4:
					x: width * 345
					y: xHeight / 2 * crossbar
					width: thickness / 2 + thickness / 2 * contrast
					lDir: 90 + 'deg'
					lType: 'line'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: contours[0].nodes[4].y
					width: thickness * contrast * .85
					lDir: 180 + 'deg'
					distr: 0
					lType: 'line'
				1:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[4].y
					width: thickness * contrast * .85
					lDir: 180 + 'deg'
					distr: 0
					