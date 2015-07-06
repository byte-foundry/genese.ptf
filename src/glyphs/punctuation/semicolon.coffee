exports.glyphs['semicolon'] =
	unicode: 59
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: 'comma'
			parentAnchors:
				0:
					x: 125
					y: - overshoot / 2
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: 125
					y: xHeight + overshoot / 2 - 120
