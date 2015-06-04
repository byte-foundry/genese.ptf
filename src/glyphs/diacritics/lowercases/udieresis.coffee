exports.glyphs['udieresis'] =
	unicode: 'ü'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	components:
		0:
			base: 'u'
			parentAnchors:
				0:
					x: 0
					y: 0
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: 270 + thickness / 4 - 42 - thickness / 2
					y: xHeight + 70
			parentParameters:
				thickness:
					if thickness < 40
					then 40
					else thickness
		2:
			base: 'dot'
			parentAnchors:
				0:
					x: 270 + thickness / 4 + 42 + thickness / 2
					y: xHeight + 70
			parentParameters:
				thickness:
					if thickness < 40
					then 40
					else thickness
