exports.glyphs['five'] =
	unicode: '5'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + serifWidth * 1.6 + 40 * spacing + (50)
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 180 + (0)
					y: descender * ( 200 / 250 )
					dirOut: 22 + 'deg'
					expand: Object({
						width: thickness * ( 11 / 85 )
						angle: 116 + 'deg'
						distr: 0
					})
				1:
					x: 285 + (40)
					y: 20 + (18)
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 87 / 85 )
						angle: 180 + 24 + 'deg'
					})
				2:
					x: 40 + (30)
					y: ( ( 280 + (40) ) / 500 ) * xHeight
					dirIn: - 10 + 'deg'
					tensionIn: .9
					expand: Object({
						width: thickness * ( 100 / 85 )
						angle: 180 + 53 + 'deg'
					})
		1:
			skeleton: true
			closed: false
			nodes:
				2:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[2].x
					y: contours[1].nodes[2].y + thickness * ( 15 / 85 )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 0 + 'deg'
						distr: 0
					})
				0:
					x: 185
					y: xHeight + overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 26 / 85 )
						angle: - 18 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 93 / 85 )
						angle: - 124 + 'deg'
						distr: 0
					})
				0:
					x: 343
					y: ( 370 / 500 ) * xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 93 / 85 )
						angle: - 120 + 'deg'
						distr: 1
					})
