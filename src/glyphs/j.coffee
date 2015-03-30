exports.glyphs['j'] =
	unicode: 'j'
	ot:
		advanceWidth: width * 250 + thickness * 2 - ( 86 * 2 ) + serifWidth
	anchors:
		0:
			x: 115 + ( 21 )
			y: xHeight - ( 160 / 500 ) * xHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: 50
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
		1:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: 90 + 'deg'
				1:
					x: 180
					y: - 40
					# type: 'smooth'
					dirIn: - 125 + 'deg'
					dirOut: - 125 + 'deg'
				2:
					x: 65
					y: - 160
					dirOut: - 146 + 'deg'
					type: 'smooth'
				3:
					x: - 15
					y: - 190
					dirOut: 0 + 'deg'
					type: 'smooth'
				4:
					x: - 70
					y: - 140
					dirOut: 90 + 'deg'
					type: 'smooth'
				5:
					x: - 25
					y: - 95
					dirOut: 0 + 'deg'
					type: 'smooth'
				6:
					x: 55
					y: - 125
					dirOut: 0 + 'deg'
					type: 'smooth'
				7:
					x: contours[0].nodes[0].expandedTo[0].x
					y: 0
					dirOut: 90 + 'deg'
					type: 'smooth'
				8:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					type: 'smooth'
	components:
		0:
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
					y: xHeight

		1:
			base: 'title'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[0].x + thickness / 2
					y: Math.max( capHeight + overshoot, xHeight + thickness * ( 100 / 86 ) + 50 )
