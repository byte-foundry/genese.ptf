exports.glyphs['b'] =
	unicode: 'b'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: 550 - 86 + thickness
			y: xHeight * ( 250 / 500 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 95
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * .116
						distr: 0
					})
				1:
					x: 95
					# y: xHeight * ( 195 / 500 )
					y: 195
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: - 30 + 'deg'
						distr: 0
					})
				2:
					x: 95
					# y: xHeight * ( 195 / 500 )
					y: 195
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0
					})
				3:
					x: contours[0].nodes[0].x
					y: ascenderHeight - spurHeight * ( 60 ) - serifHeight * ( 10 / 20 ) - serifCurve * ( 40 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 95 + thickness
					# y: xHeight * ( 350 / 500 )
					y: xHeight - 150
					dirOut: 84 + 'deg'
					expand: Object({
						width: thickness * .2 * contrast
						angle: - 10 + 180 + 'deg'
						distr: 0
					})
				1:
					x: anchors[0].x * ( 330 / 455 ) - 69
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 58 / 86 )
						angle: 180 + 240 + 'deg'
						distr: 1
					})
				2:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 97 / 86 )
						angle: 22 + 'deg'
						distr: 1
					})
				3:
					x: anchors[0].x * ( 310 / 455 ) - 65
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * contrast * ( 20 / 86 )
						angle: 180 + 76 + 'deg'
						distr: 1
					})
				4:
					x: contours[1].nodes[0].x
					# y: xHeight * ( 95 / 500 )
					y: 95
					dirOut: - 64 + 'deg'
					expand: Object({
						width: thickness * ( 50 / 86 ) * contrast
						angle: 180 + 29 + 'deg'
						distr: 0
					})
				5:
					x: contours[1].nodes[0].x
					# y: xHeight * ( 195 / 500 )
					y: 195
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 50 / 86 ) * contrast
						distr: 0
					})
	components:
		0:
			base: 'attaque'
			parentAnchors:
				0:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].y
				1:
					x: contours[0].nodes[3].expandedTo[1].x
					y: contours[0].nodes[3].y
				2:
					anchorLine: ascenderHeight
					leftWidth: 1.25
