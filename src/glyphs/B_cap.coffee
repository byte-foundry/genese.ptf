exports.glyphs['B_cap'] =
	unicode: 'B'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + 45 * spacing
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
					x: 145 + 25
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * opticThickness
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].x + 120
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 45 / 85 ) * opticThickness
						angle: - 153 + 'deg'
						distr: 0
					})
				2:
					x: anchors[0].x
					y: anchors[0].y
					# dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: 325
					y: 395
					typeOut: 'line'
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness * ( 21 / 85 ) * opticThickness
						angle: 119 + 'deg'
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[3].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * opticThickness
						angle: 90 + 'deg'
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[4].x
					y: contours[1].nodes[4].y
					typeOut: 'line'
					expand: Object({
						width: contours[1].nodes[4].expand.width
						angle: 180 + 90 + 'deg'
					})
				1:
					x: 375
					y: contours[1].nodes[3].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 14 / 85 ) * opticThickness
						angle: 180 + 72 + 'deg'
					})
				2:
					x: contours[1].nodes[2].expandedTo[0].x + thickness * ( 20 / 85 )
					y: 195
					type: 'smooth'
					expand: Object({
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 120
					y: 0
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness * ( 32 / 85 ) * opticThickness
						angle: - 38 + 180 + 'deg'
						distr: 0
					})
		3:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[2].nodes[3].expandedTo[1].x
					y: contours[2].nodes[3].expandedTo[1].y
					typeOut: 'line'
				1:
					x: contours[3].nodes[0].x - 50
					y: contours[3].nodes[0].y
					dirOut: 180 + 'deg'
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( serifHeight + serifCurve ) * ( 80 / 35 )
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				3:
					x: contours[3].nodes[2].x
					y: 0
					typeOut: 'line'
				4:
					x: contours[2].nodes[3].expandedTo[0].x
					y: contours[2].nodes[3].expandedTo[0].y
					typeOut: 'line'
	# components:
	# 	0:
	# 		base: 'serif_Bottom'
	# 		parentAnchors:
	# 			0:
	# 				x: Utils.onLine({
	# 					y: serifHeight
	# 					on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
	# 				})
	# 				y: serifHeight
	# 			1:
	# 				x: Utils.onLine({
	# 					y: serifHeight
	# 					on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
	# 				})
	# 				y: serifHeight
