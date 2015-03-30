exports.glyphs['v'] =
	unicode: 'v'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + serifWidth + 25 * spacing
	anchors:
		0:
			x: 395
			y: xHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 395 + 17
					y: xHeight - serifHeight * serifCurve
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 214 + 6
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 30 + (93)
					y: xHeight - serifHeight * serifCurve
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 93 / 85 )
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: 176 + (93)
					y: 95
					# typeOut: 'line'
					expand: Object({
						width: thickness * ( 93 / 85 )
						angle: 0 + 'deg'
						distr: 1
					})
					expandedTo:
						[
							{
								x: Utils.onLine({
									y: thickness * ( 95 / 85 )
									on: [ contours[1].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
								})
								y: thickness * ( 95 / 85 )
								typeOut: 'line'
							}
							{
								x: Utils.onLine({
									y: thickness * ( 95 / 85 )
									on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
								})
								y: thickness * ( 95 / 85 )
								typeIn: 'line'
							}
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
	components:
		0:
			base: 'serif_Top'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight * serifCurve - serifHeight
						on: [ contours[1].nodes[2].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: xHeight - serifHeight * serifCurve - serifHeight
					dirOut: Utils.lineAngle( contours[1].nodes[2].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point )
					serifWidth: 0.9
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight * serifCurve - serifHeight
						on: [ contours[1].nodes[2].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: xHeight - serifHeight * serifCurve - serifHeight
					dirOut: Utils.lineAngle( contours[1].nodes[2].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point )
					serifWidth: 0.9
		1:
			base: 'serif_Top'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight * serifCurve - serifHeight
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: xHeight - serifHeight * serifCurve - serifHeight
					dirOut: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
					serifWidth: 1.25
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight * serifCurve - serifHeight
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: xHeight - serifHeight * serifCurve - serifHeight
					dirOut: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point )
					serifWidth: 1.15



# exports.glyphs['v'] =
# 	unicode: 'v'
# 	ot:
# 		advanceWidth: width * 350 + thickness * 2 - ( 86 * 2 )
# 	anchors:
# 		0:
# 			x: 395
# 			y: xHeight
# 	contours:
# 		0:
# 			skeleton: true
# 			closed: false
# 			nodes:
# 				0:
# 					x: 395 + 12
# 					y: xHeight
# 					typeOut: 'line'
# 					expand: Object({
# 						width: thickness * ( 39 / 85 )
# 						angle: 0 + 'deg'
# 						distr: 0.25
# 					})
# 				1:
# 					x: 214
# 					y: - overshoot
# 					typeOut: 'line'
# 					expand: Object({
# 						width: thickness * ( 25 / 85 )
# 						angle: 0 + 'deg'
# 						distr: 0.25
# 					})
# 		1:
# 			skeleton: true
# 			closed: false
# 			nodes:
# 				0:
# 					x: contours[0].nodes[1].expandedTo[0].x
# 					y: - overshoot
# 					typeOut: 'line'
# 					expand: Object({
# 						width: 0
# 						angle: 90 + 'deg'
# 						distr: 0.25
# 					})
# 				1:
# 					x: contours[0].nodes[1].expandedTo[0].x + thickness * ( 93 / 85 )
# 					y: - overshoot
# 					typeOut: 'line'
# 					expand: Object({
# 						width: 0
# 						angle: 90 + 'deg'
# 						distr: 0.25
# 					})
# 		2:
# 			skeleton: true
# 			closed: false
# 			nodes:
# 				0:
# 					x: 30 + 85
# 					y: xHeight
# 					typeOut: 'line'
# 					expand: Object({
# 						width: thickness * ( 93 / 85 )
# 						angle: 0 + 'deg'
# 						distr: 0.75
# 					})
# 				1:
# 					y: Utils.onLine({
# 						x: contours[0].nodes[1].expandedTo[1].x
# 						on: [ contours[2].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[1].point ]
# 					})
# 					x: contours[0].nodes[1].expandedTo[1].x
# 					typeOut: 'line'
# 					expand: Object({
# 						width: thickness * ( 93 / 85 )
# 						angle: 0 + 'deg'
# 						distr: 0.75
# 					})
# 				2:
# 					x: contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[1].expand.width
# 					y: - overshoot
# 					typeOut: 'line'
# 					expand: Object({
# 						width: thickness * ( 25 / 85 )
# 						angle: 0 + 'deg'
# 						distr: 0.25
# 					})
# 					expandedTo:
# 						[
# 							{
# 								x: contours[0].nodes[1].expandedTo[0].x
# 								y: contours[0].nodes[1].expandedTo[0].y
# 							}
# 							{
# 								x: contours[0].nodes[1].expandedTo[1].x
# 								y: contours[0].nodes[1].expandedTo[1].y
# 							}
# 						]
# 		# 2:
# 		# 	skeleton: true
# 		# 	closed: false
# 		# 	nodes:
# 		# 		0:
# 		# 			x: 30
# 		# 			y: xHeight
# 		# 			typeOut: 'line'
# 		# 			expand: Object({
# 		# 				width: thickness * ( 93 / 85 )
# 		# 				angle: 0 + 'deg'
# 		# 				distr: 0.25
# 		# 			})
# 		# 		1:
# 		# 			x: Utils.lineLineIntersection({
# 		# 				px1: contours[2].nodes[0].expandedTo[1].point,
# 		# 				py1: contours[1].nodes[1].expandedTo[1].point,
# 		# 				px2: contours[0].nodes[0].expandedTo[1].point,
# 		# 				py2: contours[0].nodes[0].expandedTo[1].point
# 		# 			})[0]
# 		# 			y: Utils.lineLineIntersection({
# 		# 				px1: contours[2].nodes[0].expandedTo[1].point,
# 		# 				py1: contours[1].nodes[1].expandedTo[1].point,
# 		# 				px2: contours[0].nodes[0].expandedTo[1].point,
# 		# 				py2: contours[0].nodes[0].expandedTo[1].point
# 		# 			})[1]
# 		# 			typeOut: 'line'
# 		# 			expand: Object({
# 		# 				width: thickness * ( 93 / 85 )
# 		# 				angle: 0 + 'deg'
# 		# 				distr: 0.25
# 		# 			})
