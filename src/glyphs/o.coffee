exports.glyphs['o'] =
	unicode: 'o'
	advanceWidth: width * 440 + thickness
	anchors:
		0:
			x: width * 380
			y: xHeight / 2
	contours:
		0:
			tags: 'skeleton'
			type: 'closed'
			nodes:
				0:
					x: 0
					y: xHeight / 2
					width: thickness
					lDir: 90 + 'deg'
				1:
					x: anchors[0].x / 2
					y: xHeight + overshoot
					width: thickness * contrast * .9
					lDir: 0 + 'deg'
					distr: 0
					angle: - 85 + axis + 'deg'
					## angle: -105 * axis + 'deg'
				2:
					x: anchors[0].x 
					y: anchors[0].y
					width: thickness
					lDir: - 90 + 'deg'
				3:
					x: contours[0].nodes[1].x
					y: 0 - overshoot
					width: thickness * contrast * .9
					lDir: 180 + 'deg'
					distr: 0
					## Need to find a way to reproduce axis like the top curve
					angle: 95 + axis + 'deg'
					##
