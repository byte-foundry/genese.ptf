exports.glyphs['e'] =
	unicode: 'e'
	ot:
		advanceWidth: width * 540 + thickness * 2 - ( 86 * 2 )
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
					x: ( 404 + (42) ) * width
					y: xHeight * ( 340 / 500 )
					dirOut: Math.max( 90, Math.min( 120, 180 - ( 80 / 500 ) * xHeight ) ) + 'deg'
					tensionOut: 1.2
					expand: Object({
						width: thickness * ( 94 / 86 )
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) * (295-50)/(495-50)
					y: xHeight + overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 20 / 86 )
						angle: - 104 + 180 + 'deg'
						distr: 1
					})
				2:
					x: 45
					y: xHeight * ( 240 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 96 / 86 )
						angle: 21 + 180 + 'deg'
						distr: 0.75
					})
				3:
					x: 270
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					# dirIn: 0 + 'deg'
					expand: Object({
						angle: 70 + 180 + 'deg'
						width: thickness * ( 67 / 86 )
						distr: 1
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x - ( 20 / 85 ) * thickness
					y: xHeight * ( 135 / 500 ) + ( 20 / 85 ) * thickness - 20
					dirIn: Math.min( - 116, Math.max( - 100 , - ( 100 / 500 ) * xHeight ) ) + 'deg'
					dirIn: - 110 + 'deg'
					expand: Object({
						angle: 163 + 180 + 'deg'
						distr: 0.25
						width: thickness * ( 11 / 86 )
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 86 )
						distr: 1
					})
				1:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y
					dirOut: 0 + 'deg'
					expand: Object({
						angle: - 90 + 'deg'
						width: thickness * ( 25 / 86 )
						distr: 1
					})
