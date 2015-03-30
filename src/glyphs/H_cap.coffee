exports.glyphs['H_cap'] =
	unicode: 'H'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x + serifWidth + 40 * spacing
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
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + thickness * opticThickness - thickness * ( 15 / 86 )
					y: anchors[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 26 / 86 )
					})
				1:
					x: anchors[0].x + thickness * ( 15 / 86 )
					y: anchors[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 26 / 86 )
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 580
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness
						distr: 0
					})
				1:
					x: contours[2].nodes[0].x
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
		1:
			base: 'serif_Bottom'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: serifHeight
						on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: serifHeight
				1:
					x: Utils.onLine({
						y: serifHeight
						on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
					})
					y: serifHeight
