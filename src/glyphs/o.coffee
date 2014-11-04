exports.glyphs['o'] =
	type: 'test'
	anchors:
		0:
			x: 400 * width
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
					lDir: '90deg'
				1:
					x: anchors[0].x / 2
					y: xHeight + overshoot
					width: thickness * contrast * .9
					lDir: '0deg'
					distr: 0
					angle: -105 + 'deg'
					## angle: -105 * axis + 'deg'
				2:
					x: anchors[0].x 
					y: anchors[0].y
					width: thickness
					lDir: '-90deg'
				3:
					x: contours[0].nodes[1].x
					y: 0 - overshoot
					width: thickness * contrast * .9
					lDir: '180deg'
					distr: 0
					## Need to find a way to reproduce axis like the top curve
					angle: 75 + 'deg'
					##
