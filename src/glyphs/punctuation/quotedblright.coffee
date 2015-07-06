exports.glyphs['quotedblright'] =
	unicode: '”'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	components:
		0:
			base: '_quoteright'
			parentAnchors:
				0:
					x: 42 + (36)
					y: capHeight + overshoot
		1:
			base: '_quoteright'
			parentAnchors:
				0:
					x: 42 + (15) + Math.max( thickness * ( 80 / 85 ) * 2, 80 )
					y: capHeight + overshoot
