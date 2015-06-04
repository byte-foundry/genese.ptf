exports.glyphs['idieresis'] =
	unicode: 'ï'
	ot:
		advanceWidth: width * 250 + thickness * 2 - ( 86 * 2 ) + serifWidth
	components:
		0:
			base: 'stem'
			parentAnchors:
				0:
					x: 0
					y: 0
		1:
			base: 'dot'
			parentAnchors:
				0:
					x: 140 + thickness / 4 - 42 - thickness / 2
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
					x: 140 + thickness / 4 + 42 + thickness / 2
					y: xHeight + 70
			parentParameters:
				thickness:
					if thickness < 40
					then 40
					else thickness