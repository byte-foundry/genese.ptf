exports.glyphs['R_cap'] =
	unicode: 'R'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x - 60 * spacing
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 145
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					dirOut: 0 + 'deg'
					# typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 20 / 85 )
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 100
					y: capHeight
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness * ( 36 / 85 )
						angle: - 146 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + 245 + (93)
					y: capHeight * ( ( 555 - (12) ) / 750 )
					dirOut: - 90 + 'deg'
					tensionOut: 1.15
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness * ( 112 / 85 )
						angle: 180 - 10 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x + (50)
					y: capHeight * ( 365 / 750 )
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness * ( 25 / 85 )
						distr: 1
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[3].y
					dirOut: 180 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: contours[1].nodes[3].expand.width
						distr: 1
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 785 + (0)
					y: 0
					dirOut: - 176 + 'deg'
					expand: Object({
						width: thickness * opticThickness * ( 20 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: 530 + (29)
					y: 95 + (5)
					dirIn: Utils.lineAngle( contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[2].expandedTo[1].point )
					tensionOut: 0
					tensionIn: 1.3
					type: 'smooth'
					expand: Object({
						width: thickness * opticThickness * ( 117 / 85 )
						angle: 10 + 'deg'
						distr: 0.25
					})
				2:
					x: 340 + (0)
					y: 365 + (0)
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness * ( 107 / 85 )
						angle: 11 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: serifHeight + serifCurve
				1:
					x: Utils.onLine({
						y: serifHeight + serifCurve
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: serifHeight + serifCurve
				2:
					leftWidth: 1.6
					rightWidth: 1.6
		1:
			base: 'serif_left'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y - serifHeight - serifCurve * ( 65 /15 )
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y - serifHeight - serifCurve * ( 65 /15 )
				2:
					anchorLine: capHeight
					leftWidth: 1
					direction: -1			
