exports.glyphs['parenright'] =
	unicode: ')'
	ot:
		advanceWidth: width * 470 + thickness - 85
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
					x: 30
					y: capHeight + overshoot
					dirOut: - 33 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 11 / 85 )
						angle: 63 + 'deg'
						distr: 1
					})
				1:
					x: 250
					y: ( contours[0].nodes[0].y + contours[0].nodes[2].y ) / 2
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 60 / 85 )
						angle: 0 + 'deg'
					})
				2:
					x: 30 + (7)
					y: ( 180 / 210 ) * descender
					dirIn: 33 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 11 / 85 )
						angle: - 63 + 'deg'
						distr: 1
					})
