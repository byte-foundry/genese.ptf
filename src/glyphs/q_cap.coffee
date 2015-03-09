exports.glyphs['q_cap'] =
	unicode: 'Q'
	advanceWidth: width * 700 + thickness
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
					angle: -105 + axis + 'deg'
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
					angle: 75 + axis + 'deg'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: capHeight * (150/720)
					y: 0 - overshoot
					width: thickness * opticThickness * contrast * .9
					width: 0
					lDir: 0 + 'deg'
					lType: ' line'
					angle: -105 + 'deg'
					# distr: 0
				1:
					x: contours[0].nodes[1].x + ( contours[0].nodes[2].x - contours[0].nodes[1].x ) / 2
					x: contours[0].nodes[2].x
					y: - 100
					width: thickness * opticThickness * contrast * .5 + thickness * opticThickness * .3 
					lDir: '0deg'
					angle: -105 + 'deg'
					distr: 1
					## angle: -105 * axis + 'deg'
