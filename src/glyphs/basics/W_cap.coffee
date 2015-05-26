exports.glyphs['W_cap'] =
	unicode: 'W'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x + serifWidth + 25 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: 510 + (8)
					# y: capHeight * ( 500 / 750 )
					x: Utils.onLine({
						y: capHeight * ( 500 / 750 )
						on: [ contours[3].nodes[0].point, contours[3].nodes[1].point ]
					})
					y: capHeight * ( 500 / 750 )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 33 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
					transforms: Array(
						[ 'translate', - thickness * ( 55 / 85 ) - 4, 0 ]
					)
				1:
					x: 325 + (6)
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
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 93 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: 176 + (93)
					y: 95
					# typeOut: 'line'
					expand: Object({
						width: thickness * ( 93 / 85 ) * opticThickness
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
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 935 + (10)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 655 + (6)
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 430 + (93)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 93 / 85 )
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					x: 655 + (0)
					y: 138
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
									y: thickness * ( 138 / 85 )
									on: [ contours[3].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
								})
								y: thickness * ( 138 / 85 )
								typeOut: 'line'
							}
							{
								x: Utils.onLine({
									y: thickness * ( 138 / 85 )
									on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
								})
								y: thickness * ( 138 / 85 )
								typeIn: 'line'
							}
						]
				2:
					x: contours[2].nodes[1].expandedTo[0].x + contours[2].nodes[1].expand.width
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 1
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					leftWidth: 0.9
					rightWidth: 0.9
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[2].expandedTo[0].point )
					directionY: -1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[3].nodes[1].expandedTo[1].point, contours[3].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[3].nodes[1].expandedTo[0].point, contours[3].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					leftWidth: 0.9
					rightWidth: 0.9
					angle: Utils.lineAngle( contours[3].nodes[1].expandedTo[0].point, contours[3].nodes[0].expandedTo[0].point )
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					leftWidth: 0.9
					rightWidth: 0.9
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
					directionY: -1
