exports.glyphs['I_cap'] =
	unicode: 'I'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + serifWidth + 40 * spacing
	anchors:
		0:
			x: 580
			y: capHeight * ( 383 / 750 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 145
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness
						distr: 0
					})
	components:
		0:
			base: 'serif_Bottom'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: serifHeight
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: serifHeight
				1:
					x: Utils.onLine({
						y: serifHeight
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: serifHeight
