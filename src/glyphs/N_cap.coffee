exports.glyphs['N_cap'] =
	unicode: 'N'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[1].x + serifWidth + 9 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				1:
					x: 150 + (26)
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
						distr: 0.25
					})
				0:
					x: 145 + (26)
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 ) * opticThickness
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 620 + (26)
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 ) * opticThickness
						distr: 0.25
					})
				1:
					x: 625 + (23)
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * opticThickness
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				1:
					x: 80 + (50)
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 124 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				0:
					x: Utils.onLine({
						y: capHeight * ((135/85)*thickness/700)
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: capHeight * ((135/85)*thickness/700)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 124 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 1
					})
		3:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
				2:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve * ( 100 / 15 )
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: 0 + serifHeight + serifCurve * ( 100 / 15 )
				1:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve * ( 100 / 15 )
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: 0 + serifHeight + serifCurve * ( 100 / 15 )
				2:
					leftWidth: 40
					rightWidth: 40
					leftCurve: 5
					rightCurve: 5
					angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * ( 100 / 15 )
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve * ( 100 / 15 )
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * ( 100 / 15 )
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve * ( 100 / 15 )
				2:
					anchorLine: capHeight
					leftWidth: 40
					rightWidth: 40
					leftCurve: 5
					rightCurve: 5
					directionY: -1
					angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point )
		2:
			base: 'serif_left'
			parentAnchors:
				0:
					x: contours[2].nodes[1].expandedTo[1].x
					y: contours[2].nodes[1].expandedTo[1].y
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * (35/15)
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve * (35/15)
				2:
					anchorLine: capHeight
					leftWidth: 1.3
					leftCurve: 5
					directionY: -1
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
