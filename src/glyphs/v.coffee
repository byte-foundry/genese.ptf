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
					y: xHeight
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
							y: thickness * ( 95 / 85 )
							on: [ contours[1].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
						})
						y: thickness * ( 95 / 85 )
						typeOut: 'line'
					,
						x: Utils.onLine({
							y: thickness * ( 95 / 85 )
							on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
						})
						y: thickness * ( 95 / 85 )
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
					direction: -1
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
					direction: -1
