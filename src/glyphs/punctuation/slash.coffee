exports.glyphs['slash'] =
	unicode: '/'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + 30 * spacing
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 290 + (22)
					y: capHeight + overshoot * 2
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 50 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: 30 + (22)
					y: - 80
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 50 / 85 )
						angle: 0 + 'deg'
						distr: 0.5
					})
