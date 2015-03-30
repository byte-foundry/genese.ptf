exports.glyphs['d'] =
	unicode: 'd'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[1].x + serifWidth + 25 * spacing
	anchors:
		0:
			x: 415 + 21
			y: ascenderHeight - ( 160 / 500 ) * ascenderHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: 90 + serifHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: anchors[0].y
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + thickness * ( 5 / 85 )
					y: 75
					dirOut: - 125 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 45 / 85 )
						angle: 90 + 'deg'
						distr: 0.25
					})
				1:
					x: 265
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 50 / 85 )
						angle: 45 + 'deg'
						distr: 0
					})
				2:
					x: 45 + 18
					y: xHeight * ( 257 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 95 / 86 )
						angle: 6 + 'deg'
						distr: 0.25
					})
				3:
					x: 275
					y: xHeight + overshoot
					dirIn: 0 + 'deg'
					tensionIn: 1.1
					type: 'smooth'
					expand: Object({
						width: thickness * ( 27 / 86 )
						angle: - 68 + 'deg'
						distr: 0
					})
				4:
					x: 420
					y: 385
					# dirOut: - 116 + 'deg'
					dirOut: 90 + 'deg'
					tensionIn: 0.9
					type: 'smooth'
					expand: Object({
						width: thickness * ( 54 / 86 )
						angle: 180 + 34 + 'deg'
						distr: 1
					})
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
					serifWidth: 1.5
				1:
					x: Utils.onLine({
						y: anchors[0].y
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: anchors[0].y
				2:
					x: 0
					y: ascenderHeight
		1:
			base: 'term_BR'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: 90 + serifHeight
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: 90 + serifHeight
				1:
					x: Utils.onLine({
						y: 90 + serifHeight
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: 90 + serifHeight
					serifWidth: 1.85
