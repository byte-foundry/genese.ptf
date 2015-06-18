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
					x: 470 * width + ( 10 / 85 ) * thickness * aperture - 10
					# y: ( 135 / 500 ) * xHeight
					y: Math.max( contours[0].nodes[1].expandedTo[1].y + thickness / 10, 40 + xHeight * ( 88 / 500 ) * aperture )
					dirOut: - 109 + 'deg'
					dirOut: Math.min( - 140 + ( 31 / 500 ) * xHeight * aperture , - 90 ) + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 13 / 86 )
						# angle: 146 + 'deg'
						angle: contours[0].nodes[0].dirOut - Math.PI / 2
						distr: 0
					})
				1:
					x: 275 * width
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
					x: 285 * width
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
					x: contours[1].nodes[1].x - Math.max( 5, thickness * ( 40 / 85 ) + serifBall )
					y: contours[1].nodes[1].y - Math.max( 5, thickness * ( 40 / 85 ) + serifBall )
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					# type: 'smooth'
				3:
					x: contours[1].nodes[2].x - Math.max( 5, thickness * ( 40 / 85 ) + serifBall )
					y: contours[1].nodes[1].y
					dirOut: if thickness > 85 then 111 + 21 - ( 21 / 85 ) * thickness + 'deg' else 111 - 21 + ( 21 / 85 ) * thickness + 'deg'
					type: 'smooth'
				4:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].expandedTo[1].y
					dirIn: 0 + 'deg'
					# type: 'smooth'
