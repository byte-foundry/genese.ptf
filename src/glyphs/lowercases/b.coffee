exports.glyphs['b'] =
	unicode: 'b'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
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
					x: contours[0].nodes[0].x
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
					x: contours[0].nodes[0].x
					# y: xHeight * ( 195 / 500 )
					y: contours[0].nodes[1].y
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
					x: contours[0].nodes[3].expandedTo[1].x - ( 10 / 85 ) * thickness
					# y: xHeight * ( 350 / 500 )
					y: xHeight - 100
					# dirOut: 55 + 'deg'
					dirOut: if width <= 1.2 then 55 - 55 * width + 55 + 'deg' else 60 - 15 * width + 'deg'
					expand: Object({
						width: ( 25 / 85 ) * thickness
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[2].x * ( 330 / 455 ) - (69)
					x: contours[1].nodes[0].x + ( contours[1].nodes[2].expandedTo[1].x - contours[1].nodes[0].x ) * 0.45
					y: xHeight + overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 50 / 86 )
						angle: 180 - 135 + 'deg'
						distr: 1
					})
				2:
					x: ( 550 - (21) ) * width
					y: xHeight * ( 250 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 97 / 86 )
						angle: 180 - 174 + 'deg'
						distr: 0.75
					})
				3:
					x: contours[1].nodes[2].x * ( 310 / 455 ) - (65)
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * contrast * ( 20 / 86 )
						angle: 180 + 76 + 'deg'
						distr: 1
					})
				4:
					x: contours[0].nodes[3].expandedTo[1].x
					# y: xHeight * ( 95 / 500 )
					y: 95
					dirIn: if width <= 1.2 then - 64 + 64 * width - 64 + 'deg' else - 64 + 15 * width + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 50 / 86 ) * contrast
						angle: 180 + 29 + 'deg'
						distr: 1
					})
				4:
					# dirIn: if width <= 1.2 then - 65 + 65 * width - 65 + 'deg' else - 65 + 15 * width + 'deg'
					# dirIn: 100 + 'deg'
					expandedTo: [
						x: contours[0].nodes[3].expandedTo[1].x
						y: 95
						# dirIn: - 165 + 'deg'
						dirIn: if width <= 1.2 then - 65 + 65 * width - 65 + 'deg' else - 65 + 15 * width + 'deg'
					,
						x: Utils.onLine({
							y: 60 + 10 * width
							on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
						})
						y: 60 + 10 * width
						dirOut: - 53 + 'deg'
						dirOut: if width <= 1.2 then - 53 + 53 * width - 53 + 'deg' else - 53 + 15 * width + 'deg'
					]
				5:
					x: contours[0].nodes[3].expandedTo[1].x
					# y: xHeight * ( 195 / 500 )
					y: 195
					dirOut: - 90 + 'deg'
					typeIn: 'line'
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
