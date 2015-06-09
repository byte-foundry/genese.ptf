exports.glyphs['y'] =
	unicode: 'y'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + serifWidth + 25 * spacing + (50)
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 395 + (10)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: 214 + (6)
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 30 + (93)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 93 / 85 )
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					expandedTo: [
						x: Utils.onLine({
							y: ( thickness * ( 100 / 85 ) / 500 ) * xHeight
							on: [ contours[1].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
						})
						y: ( thickness * ( 100 / 85 ) / 500 ) * xHeight
						typeOut: 'line'
					,
						x: Utils.onLine({
							y: ( thickness * ( 100 / 85 ) / 500 ) * xHeight
							on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
						})
						y: ( thickness * ( 100 / 85 ) / 500 ) * xHeight
						typeIn: 'line'
					]
				2:
					x: contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[1].expand.width
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 180 + 'deg'
						distr: 0
					})
				1:
					x: Utils.onLine({
						y: - 110
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: - 110
					# dirOut: Utils.lineAngle( contours[2].nodes[0].point, contours[2].nodes[1].point )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 28 / 85 )
						angle: 180 - 56 + 'deg'
						distr: 1
					})
				2:
					x: 151 + (0)
					y: ( 135 / 250 ) * descender
					dirIn: 0 + 'deg'
					# dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 80 / 85 )
						angle: 180 - 126 + 'deg'
						distr: 1
					})
		3:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[2].nodes[2].expandedTo[1].x
					y: contours[2].nodes[2].expandedTo[1].y
				1:
					x: contours[2].nodes[2].expandedTo[1].x - ( contours[2].nodes[2].expandedTo[1].x - contours[3].nodes[2].x ) / 2
					y: contours[2].nodes[2].expandedTo[0].y + ( 95 / 85 ) * thickness
				2:
					x: contours[2].nodes[2].expandedTo[0].x - ( 50 / 85 ) * thickness
					y: contours[2].nodes[2].expandedTo[0].y + ( contours[3].nodes[1].y - contours[2].nodes[2].expandedTo[0].y ) / 2 + ( 5 / 85 ) * thickness
					dirOut: - 90 + 'deg'
					type: 'smooth'
				3:
					x: contours[2].nodes[2].expandedTo[0].x
					y: contours[2].nodes[2].expandedTo[0].y
		# TODO:
		# This contour is used to set the spacing
		# We need to call the advanceWidth of the component instead
		# like: glyphs['v'].ot.advanceWidth
		# 4:
		# 	skeleton: true
		# 	closed: false
		# 	nodes:
		# 		0:
		# 			x: 395 + 17
		# 			y: xHeight - serifHeight * serifCurve
		# 			typeOut: 'line'
		# 			expand: Object({
		# 				width: thickness * ( 39 / 85 )
		# 				angle: 0 + 'deg'
		# 				distr: 0.25
		# 			})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve
				2:
					anchorLine: xHeight
					leftWidth: 0.9
					rightWidth: 0.9
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[2].expandedTo[0].point )
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve
				2:
					anchorLine: xHeight
					leftWidth: 0.9
					rightWidth: 0.9
					angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
					directionY: -1
