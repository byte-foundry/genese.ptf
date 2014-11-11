exports.glyphs['o_cap'] =
	unicode: 'O'
	advanceWidth: width * 650 + thickness
	anchors:
		0:
			x: 600 * width
			y: capHeight / 2
	contours:
		0:
			tags: 'skeleton'
			type: 'closed'
			nodes:
				0:
					x: 0
					y: capHeight / 2
					width: thickness * opticThickness
					lDir: '90deg'
				1:
					x: anchors[0].x / 2
					y: capHeight + overshoot
					width: thickness * opticThickness * contrast * .9
					lDir: '0deg'
					distr: 0
					angle: -105 + 'deg'
					## angle: -105 * axis + 'deg'
				2:
					x: anchors[0].x 
					y: anchors[0].y
					width: thickness * opticThickness
					lDir: '-90deg'
				3:
					x: contours[0].nodes[1].x
					y: 0 - overshoot
					width: thickness * opticThickness * contrast * .9
					lDir: '180deg'
					distr: 0
					## Need to find a way to reproduce axis like the top curve
					angle: 75 + 'deg'
					##
