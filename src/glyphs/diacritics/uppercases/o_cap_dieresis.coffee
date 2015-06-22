exports.glyphs['o_cap_dieresis'] =
	unicode: 'Ö'
	ot:
		advanceWidth: width * 800 + thickness * 2 - ( 86 * 2 )
	components:
		0:
			base: 'O_cap'
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