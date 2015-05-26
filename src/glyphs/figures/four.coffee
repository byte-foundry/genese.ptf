exports.glyphs['four'] =
	unicode: '4'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + serifWidth * 1.6 + 40 * spacing + (50)
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 365 + (22)
					y: descender
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - ( 500 - 420 + thickness - 85 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].x + ( contours[0].nodes[0].expand.width * ( 1 - contours[0].nodes[0].expand.distr ) )
					y: xHeight + overshoot
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 11 / 85 )
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: thickness * ( 15 / 85 )
						on: [ contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: thickness * ( 15 / 85 )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 41 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 0 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 15 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: Utils.onLine({
						y: thickness * ( 80 / 85 )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: thickness * ( 80 / 85 )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 80 / 85 )
						angle: 90 + 'deg'
						distr: 1
					})
				2:
					x: contours[0].nodes[1].expandedTo[1].x + 115
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 80 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
