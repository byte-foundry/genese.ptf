exports.glyphs['hyphen'] =
	unicode: '-'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + 80 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 80
					y: xHeight * ( 285 / 500 ) * crossbar
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 70 / 85 ) * opticThickness
						angle: 90 + 'deg'
					})
				1:
					x: 310 * width
					y: xHeight * ( 285 / 500 ) * crossbar
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 70 / 85 ) * opticThickness
						angle: 90 + 'deg'
					})
