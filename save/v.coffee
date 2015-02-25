exports.glyphs['v'] =
	unicode: 'v'
	advanceWidth: width * 440 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 345 + thickness - 80
			y: xHeight
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: xHeight
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: anchors[0].x / 2
					y: - overshoot
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				2:
					x: anchors[0].x / 2 + thickness / 2
					y: - overshoot
					width: thickness * contrast
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 0
				3:
					x: anchors[0].x + thickness / 2
					y: xHeight
					width: thickness * contrast
					lDir: - 90 + 'deg'
					distr: 0
				