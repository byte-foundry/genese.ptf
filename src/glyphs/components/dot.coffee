exports.glyphs['dot'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 180 + 'deg'
					type: 'smooth'
				1:
					x: anchors[0].x - thickness * ( 120 / 85 ) / 2
					y: anchors[0].y + thickness * ( 120 / 85 ) / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
				2:
					x: anchors[0].x
					y: anchors[0].y + thickness * ( 120 / 85 )
					dirOut: 0 + 'deg'
					type: 'smooth'
				3:
					x: anchors[0].x + thickness * ( 120 / 85 ) / 2
					y: anchors[0].y + thickness * ( 120 / 85 ) / 2
					dirOut: - 90 + 'deg'
					type: 'smooth'