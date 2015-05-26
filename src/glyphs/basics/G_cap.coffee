exports.glyphs['G_cap'] =
	unicode: 'G'
	ot:
		advanceWidth: contours[1].nodes[3].x + 40 * spacing
	anchors:
		0:
			x: 600 - 28
			y: 565
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					# x: 590 + 0
					# y: capHeight * ( 670 / 750 )
					# dirOut: 113 + 'deg'
					# dirIn: 180 + 'deg'
					# expand: Object({
					# 	width: thickness * ( 170 / 85 ) * opticThickness
					# 	angle: - 76 + 'deg'
					# 	distr: 0
					# })
					expandedTo:
						[
							{
								x: 600
								y: 700
								dirOut: 180 + 'deg'
								tensionOut: 0.3
							}
							{
								x: 615
								y: 520
								dirIn: 113 + 'deg'
							}
						]
				1:
					x: 380
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.5
					expand: Object({
						width: thickness * ( 27 / 85 ) * opticThickness
						angle: - 68 + 'deg'
						distr: 0
					})
				2:
					x: 35 + 27
					y: capHeight * ( 375 / 750 )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: 390
					y: - overshoot
					type: 'smooth'
					dirIn: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: thickness * ( 50 / 85 ) * opticThickness
						angle: 37 + 'deg'
						distr: 0
					})
				4:
					x: 670 - 1
					y: 65 + 4
					type: 'smooth'
					dirIn: - 151 + 'deg'
					expand: Object({
						width: thickness * ( 16 / 85 ) * opticThickness
						angle: 108 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					# typeOut: 'line'
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 20
					y: contours[0].nodes[0].expandedTo[0].y + 35
					dirIn: - 102 + 'deg'
				2:
					x: contours[1].nodes[1].x + 15
					y: contours[1].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[1].nodes[2].x - 5
					y: contours[1].nodes[2].y - 210
					typeOut: 'line'
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 485 + 25
					y: 325 - serifHeight - serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
					})
				1:
					x: contours[2].nodes[0].x
					y: 5
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 104 / 85 ) * opticThickness
						angle: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[4].point )
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].y
				1:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].y
				2:
					anchorLine: 325
					leftWidth: 1.6
					rightWidth: 1.6
					directionY: -1
