exports.glyphs['p'] =
	unicode: 'p'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[1].x + 35 * spacing
	anchors:
		0:
			x: 475 - 86 + thickness
			y: xHeight * ( 250 / 500 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 115 + (26)
					y: xHeight - spurHeight * ( 60 ) - serifHeight * ( 10 / 20 ) - serifCurve * ( 40 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: descender + serifHeight + serifCurve
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
					x: contours[0].nodes[0].expandedTo[1].x - ( 10 / 86 ) * thickness
					y: xHeight * ( 435 / 500 )
					dirOut: 60 + 'deg'
					expand: Object({
						width: thickness * ( 45 / 86 )
						angle: 90 + 'deg'
						distr: 1
					})
				1:
					x: anchors[0].x * ( 345 / 475 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 53 / 86 )
						angle: 180 + 222 + 'deg'
						distr: 1
					})
				2:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 90 + 'deg'
					tensionOut: 0.9
					type: 'smooth'
					expand: Object({
						width: thickness * ( 97 / 86 )
						angle: 12 + 'deg'
						distr: 0
					})
				3:
					x: contours[1].nodes[1].x
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * contrast * ( 27 / 86 )
						angle: 180 + 112 + 'deg'
						distr: 1
					})
				4:
					x: contours[1].nodes[0].x
					y: xHeight * ( 145 / 500 )
					dirOut: - 64 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 51 / 86 ) * contrast
						angle: 180 + 29 + 'deg'
						distr: 0
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: descender
					leftWidth: 1
					rightWidth: 1
		1:
			base: 'attaque'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: xHeight
					leftWidth: 1.25
