exports.glyphs['b'] =
	unicode: 'b'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'lowercase'
	]
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
					x: contours[0].nodes[3].expandedTo[1].x
					# y: xHeight * ( 195 / 500 )
					y: contours[0].nodes[2].expandedTo[1].y
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 50 / 86 )
						distr: 0
					})
				1:
					# dirIn: if width <= 1.2 then - 65 + 65 * width - 65 + 'deg' else - 65 + 15 * width + 'deg'
					# dirIn: 100 + 'deg'
					expandedTo: [
						x: contours[0].nodes[3].expandedTo[1].x
						y: 70
						# dirIn: - 165 + 'deg'
						# dirOut: Math.max( - 85, if width <= 1.2 then - 65 + 160 * width - 160 else - 65 + 26.5 * width ) + 'deg'
						dirOut: Math.max( - 70, Math.min( -50 , if width <= 1.2 then - ( 65 / 85 ) * thickness + 65 * width - 65 else - ( 65 / 85 ) * thickness + 15 * width ) ) + 'deg'
					,
						x: Utils.onLine({
							y: contours[1].nodes[1].expandedTo[0].y - 5
							on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
						})
						y: contours[1].nodes[1].expandedTo[0].y - 5
						# dirIn: - 53 + 'deg'
						# dirIn: Math.max( - 85, if width <= 1.2 then - 53 + 148 * width - 148 else - 53 + 25 * width ) + 'deg'
						# dirIn: if width <= 1.2 then - 53 + 53 * width - 53 + 'deg' else - 58 + 15 * width + 'deg'
						dirIn: Math.max( - 70, Math.min( -50 , if width <= 1.2 then - ( 53 / 85 ) * thickness + 53 * width - 53 else - ( 58 / 85 ) * thickness + 15 * width ) ) + 'deg'
					]
				2:
					x: contours[1].nodes[5].expandedTo[1].x + ( contours[1].nodes[3].expandedTo[0].x - contours[1].nodes[5].expandedTo[1].x ) * 0.5
					# x: contours[1].nodes[3].expandedTo[0].x
					y: - overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 10 / 86 ) + thickness * contrast * ( 10 / 86 )
						angle: 180 + 76 + 'deg'
						distr: 1
					})
				3:
					x: ( 550 - (21) ) * width
					y: xHeight * ( 250 / 500 )
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 97 / 86 )
						angle: 180 - 174 + 'deg'
						distr: 0.75
					})
				4:
					x: contours[1].nodes[5].x + ( contours[1].nodes[3].expandedTo[1].x - contours[1].nodes[5].x ) * 0.4
					y: xHeight + overshoot / 2
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 35 / 86 ) + thickness * ( 15 / 86 ) * contrast
						angle: 180 - 135 + 'deg'
						distr: 1
					})
				5:
					x: contours[0].nodes[3].expandedTo[1].x - ( 10 / 85 ) * thickness
					# y: xHeight * ( 350 / 500 )
					y: xHeight - 100
					# dirOut: 55 + 'deg'
					dirIn: if width <= 1.2 then 55 - 55 * width + 55 + 'deg' else 60 - 15 * width + 'deg'
					expand: Object({
						width: ( 10 / 85 ) * thickness + ( 15 / 85 ) * thickness * contrast
						angle: 90 + 'deg'
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
