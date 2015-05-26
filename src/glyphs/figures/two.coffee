exports.glyphs['two'] =
	# unicode: 50
	unicode: '2'
	ot:
		advanceWidth: contours[2].nodes[1].x + 23 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 78 - (10)
					y: ( 290 / 500 ) * xHeight
					dirOut: 79 + 'deg'
					expand: Object({
						width: thickness * ( 14 / 85 )
						angle: 159 + 'deg'
						distr: 0.75
					})
				1:
					x: 290 + (0)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 78 / 85 )
						angle: 180 - 117 + 'deg'
						distr: 1
					})
				2:
					x: 460 - (64)
					y: ( 350 / 500 ) * xHeight
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 89 / 85 )
						angle: 180 - 164 + 'deg'
						distr: 0.25
					})
				3:
					x: 205 - (0)
					y: ( 85 / 500 ) * xHeight
					dirIn: 28 - (5) + 'deg'
					tensionIn: 1.1
					type: 'smooth'
					expand: Object({
						width: thickness * ( 170 / 85 )
						angle: 180 - 155 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				2:
					x: 420 + (0)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 101 / 85 )
						angle: 123 + 'deg'
						distr: 0
					})
				1:
					x: 205 + (0)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 90 + 'deg'
						distr: 0
					})
				0:
					x: 50 + (0)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 15 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
				1:
					x: contours[2].nodes[0].x + 85
					y: contours[2].nodes[0].y + 140
					dirOut: 0 + 'deg'
					typeOut: 'line'
				2:
					x: contours[2].nodes[1].x - 10
					y: contours[2].nodes[1].y + 10
					dirOut: - 129 + 'deg'
				3:
					x: contours[1].nodes[2].expandedTo[1].x
					y: contours[1].nodes[2].expandedTo[1].y
					dirIn: 0 + 'deg'
					typeOut: 'line'
