exports.glyphs['parenleft'] =
	unicode: '('
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
					x: 320
					y: capHeight + overshoot
					dirOut: - 146 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 11 / 85 )
						angle: - 62 + 'deg'
						distr: 0
					})
				1:
					x: 100
					y: ( contours[0].nodes[0].y + contours[0].nodes[2].y ) / 2
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 60 / 85 )
						angle: 0 + 'deg'
					})
				2:
					x: 320 - (7)
					y: ( 180 / 210 ) * descender
					dirIn: 143 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 11 / 85 )
						angle: 62 + 'deg'
						distr: 0
					})
