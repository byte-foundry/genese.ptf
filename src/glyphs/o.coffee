exports.glyphs['o'] =
	unicode: 'o'
	advanceWidth: width * 545 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: ( 450 + ( 66 ) ) * width
			y: xHeight * ( 250 / 500 )
		1:
			x: ( 290 - 33 ) * width + 33 
			y: xHeight + overshoot
	contours:
		0:
			tags: 'skeleton'
			type: 'closed'
			nodes:
				0:
					x: 45 + ( 19 )
					y: anchors[0].y
					width: thickness * ( 95 / 86 )
					lDir: 90 + 'deg'
					distr: 0.25
				1:
					x: anchors[1].x
					y: anchors[1].y
					width: thickness * ( 26 / 86 ) * contrast
					lDir: 0 + 'deg'
					angle: - 90 + 'deg'
					distr: 0
				2:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * ( 95 / 86 )
					lDir: - 90 + 'deg'
					distr: 0.25
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					width: thickness * ( 26 / 86 ) * contrast
					lDir: 180 + 'deg'
					angle: 90 + 'deg'
					distr: 0