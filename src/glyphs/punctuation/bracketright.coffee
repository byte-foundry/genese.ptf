exports.glyphs['bracketright'] =
	unicode: 93
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + 100 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 160 + (5)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: - 195
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].x - 210
					y: contours[1].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: - 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[2].nodes[0].x - 210
					y: contours[2].nodes[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: - 90 + 'deg'
						distr: 1
					})
