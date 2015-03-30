exports.glyphs['r'] =
	unicode: 'r'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + serifWidth + 10 * spacing
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
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x - thickness * ( 5 / 85 )
					y: ( 385 / 500 ) * xHeight
					dirOut: 70 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: - 90 + 'deg'
						distr: 0.25
					})
				1:
					x: 350
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 56 / 85 )
						angle: - 135 + 'deg'
						distr: 0
					})
				2:
					x: 345 + 25
					y: 435
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 100 / 85 )
						angle: 180 + 'deg'
						distr: 0.75
					})
		2:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].expandedTo[0].y
					dirOut: - 90 + 'deg'
					# type: 'smooth'
				1:
					x: contours[1].nodes[2].expandedTo[1].x + ( contours[1].nodes[2].expandedTo[0].x - contours[1].nodes[2].expandedTo[1].x ) / 2
					# x: 365
					y: contours[1].nodes[2].expandedTo[0].y - thickness * ( 50 / 85 )
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					# type: 'smooth'
				2:
					x: contours[1].nodes[2].expandedTo[1].x
					y: contours[1].nodes[2].expandedTo[1].y
					dirIn: - 90 + 'deg'
					# type: 'smooth'
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
					y: xHeight
