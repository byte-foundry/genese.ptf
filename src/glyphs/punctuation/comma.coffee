exports.glyphs['comma'] =
	unicode: 44
	# unicode: ','
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: 550 - 86 + thickness
			y: xHeight * ( 250 / 500 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 125
					y: 115
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 29 / 85 )
						angle: - 121 + 'deg'
						distr: 0
					})
				1:
					x: 160 + (26)
					y: - 15 + (23)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 10 / 85 ) + thickness * ( 36 / 85 ) * contrast
						angle: 180 + 41 + 'deg'
						distr: 0.25
					})
				2:
					x: 65 + (0)
					y: - 95 - (15)
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 20 / 85 ) * contrast
						angle: 180 - 90 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
				1:
					x: 175
					y: 55
					dirOut: - 90 + 'deg'
					type: 'smooth'
				2:
					x: contours[1].nodes[0].x
					y: - overshoot / 2
				3:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[1].nodes[1].y
					dirOut: 90 + 'deg'
					type: 'smooth'
