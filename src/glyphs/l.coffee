exports.glyphs['l'] =
	unicode: 'l'
	ot:
		advanceWidth: width * 250 + thickness * 2 - ( 86 * 2 ) + serifWidth
	anchors:
		0:
			x: 115 + ( 21 )
			y: ascenderHeight - ( 160 / 500 ) * ascenderHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: 0 + serifHeight * serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
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
		1:
			base: 'term_TL'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: anchors[0].y
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: anchors[0].y
					serifWidth: 1
				1:
					x: Utils.onLine({
						y: anchors[0].y
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: anchors[0].y
				2:
					x: 0
					y: ascenderHeight
