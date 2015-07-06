exports.glyphs['i_cap_acute'] =
	unicode: 'Í'
	ot:
		advanceWidth: width * 420 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'I_cap'
			parentAnchors:
				0:
					x: 0
					y: 0
		1:
			base: 'acute'
			parentAnchors:
				0:
					x: 200
					y: capHeight + 70
