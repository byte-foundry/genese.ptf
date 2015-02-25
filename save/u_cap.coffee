exports.glyphs['u_cap'] =
	unicode: 'U'
	advanceWidth: width * 600 + ( thickness * 2 ) * contrast - 80
	anchors:
		0:
			x: width * 500 + thickness * contrast - 80
			y: capHeight * 280/688 * crossbar
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: 0
					y: 200 + (100/698) * capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
				2:
					x: anchors[0].x / 2
					y: 0 - overshoot
					width: thickness * opticThickness * .85 * contrast
					lDir: 180 + 'deg'
					distr: 0
				3:
					x: anchors[0].x
					y: contours[0].nodes[1].y
					width: thickness * opticThickness * contrast
					lDir: - 90 + 'deg'
					lType: 'line'
				4:
					x: anchors[0].x
					y: capHeight
					width: thickness * opticThickness * contrast
					lDir: - 90 + 'deg'