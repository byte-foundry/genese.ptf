exports.glyphs['M_cap'] =
	unicode: 'M'
	ot:
		advanceWidth: contours[1].nodes[1].expandedTo[1].x + serifWidth + 40 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				1:
					x: 165 + (6)
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
						distr: 0.25
					})
				0:
					x: 140 + (9)
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 35 / 85 ) * opticThickness
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				1:
					x: 700 + (24)
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 95 / 85 ) * opticThickness
						distr: 0.25
					})
				0:
					x: 720 + (25)
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 35 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					x: 440 - (0)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 15 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0
					})
		3:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x - Math.min( 15 * ( thickness / 85 ), 0 )
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 108 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0
					})
				1:
					expandedTo:
						[
							{
								x: Utils.onLine({
									y: thickness * ( 130 / 85 ) * opticThickness
									on: [ contours[3].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
								})
								y: thickness * ( 130 / 85 ) * opticThickness
								typeOut: 'line'
							}
							{
								x: Utils.onLine({
									y: thickness * ( 130 / 85 ) * opticThickness
									on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
								})
								y: thickness * ( 130 / 85 ) * opticThickness
								typeIn: 'line'
							}
						]
				2:
					x: contours[2].nodes[1].expandedTo[0].x + contours[2].nodes[1].expand.width
					y: contours[2].nodes[1].y
					typeOut: 'line'
					expand: Object({
						width: contours[2].nodes[1].expand.width
						angle: 0 + 'deg'
						distr: 1
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: 0 + serifHeight + serifCurve
				1:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: 0 + serifHeight + serifCurve
				2:
					leftWidth: 40
					rightWidth: 40
					angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: 0 + serifHeight + serifCurve
				1:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: 0 + serifHeight + serifCurve
				2:
					leftWidth: 40
					rightWidth: 40
					angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point )
		2:
			base: 'serif_right'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
				2:
					anchorLine: capHeight
					rightWidth: 1.6
					directionY: -1
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
		3:
			base: 'serif_left'
			parentAnchors:
				0:
					x: contours[3].nodes[0].expandedTo[1].x
					y: contours[3].nodes[0].expandedTo[1].y
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[2].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					leftWidth: 40
					rightWidth: 40
					directionY: -1
					angle: Utils.lineAngle( contours[3].nodes[0].expandedTo[0].point, contours[3].nodes[2].expandedTo[0].point )
