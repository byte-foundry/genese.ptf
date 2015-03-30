exports.glyphs['c'] =
	unicode: 'c'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + 35 * spacing
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 465
					y: 135
					dirOut: - 109 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 18 / 86 )
						angle: 146 + 'deg'
						distr: 0
					})
				1:
					x: 275
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 60 / 86 )
						angle: 66 + 'deg'
						distr: 0
					})
				2:
					x: 45 + 24
					y: xHeight * ( 235 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 103 / 86 )
						angle: 23 + 10 - 10 * ( thickness / 85 ) + 'deg'
						distr: 0.25
					})
				3:
					x: 285
					y: xHeight + overshoot
					dirOut: 90 + 'deg'
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 20 / 86 )
						angle: - 104 + 'deg'
						distr: 0
					})
		1:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					# dirOut: 0 + 'deg'
					# type: 'smooth'
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: xHeight - 95
					dirOut: 90 + 'deg'
					dirIn: 90 + 'deg'
					# type: 'smooth'
				2:
					x: 425
					y: xHeight - ( 500 - 365 )
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					# type: 'smooth'
				3:
					x: 380
					y: xHeight - ( 500 - 405 )
					dirOut: 111 + 'deg'
					dirIn: 111 + 'deg'
					# type: 'smooth'
				4:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
					dirIn: 0 + 'deg'
					# type: 'smooth'
