exports.glyphs['eacute'] =
	unicode: 'é'
	advanceWidth: width * 430 + thickness
	anchors:
		0:
			x: width * 100
			y: xHeight + 50
	components:
		0:
			base: 'e'
			anchors:
				0:
					x: 0
					y: 0
		1:
			base: 'acute'
			anchors:
				0:
					x: anchors[0].x
					y: anchors[0].y