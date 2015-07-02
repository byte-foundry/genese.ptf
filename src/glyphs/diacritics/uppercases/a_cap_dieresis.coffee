exports.glyphs['a_cap_dieresis'] =
	unicode: 'Ä'
	ot:
		advanceWidth: width * 680 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'uppercase',
		'diacritic'
	]
	components:
		0:
			base: 'A_cap'
			parentAnchors:
				0:
					x: 0
					y: 0
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: 330 + thickness / 4 - 42 - thickness / 2
					y: capHeight + 70
			parentParameters:
				thickness:
					if thickness < 40
					then 40
					else thickness
		2:
			base: 'dot'
			parentAnchors:
				0:
					x: 330 + thickness / 4 + 42 + thickness / 2
					y: capHeight + 70
			parentParameters:
				thickness:
					if thickness < 40
					then 40
					else thickness
