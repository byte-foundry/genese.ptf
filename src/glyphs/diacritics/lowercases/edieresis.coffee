exports.glyphs['edieresis'] =
	unicode: 'ë'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'lowercase',
		'diacritic'
	]
	components:
		0:
			base: 'e'
			parentAnchors:
				0:
					x: 0
					y: 0
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: 260 + thickness / 4 - 42 - thickness / 2
					y: xHeight + 70
		2:
			base: 'dot'
			parentAnchors:
				0:
					x: 260 + thickness / 4 + 42 + thickness / 2
					y: xHeight + 70
