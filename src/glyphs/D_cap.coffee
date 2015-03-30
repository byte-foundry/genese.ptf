exports.glyphs['D_cap'] =
	unicode: 'D'
	ot:
		advanceWidth: contours[1].nodes[2].expandedTo[0].x + 45 * spacing
	anchors:
		0:
			x: 740 - 0
			y: 375
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
					x: contours[1].nodes[0].x + 120 + (10)
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 82 / 85 ) * opticThickness
						angle: - 166 + 'deg'
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
					x: contours[0].nodes[0].expandedTo[1].x + 80
					y: 0
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness * ( 36 / 85 ) * opticThickness
						angle: 146 + 'deg'
						distr: 0
					})
		2:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[1].y
					# typeOut: 'line'
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( serifHeight / 20 ) * 80 * serifCurve
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				2:
					x: contours[2].nodes[1].x
					y: 0
					typeOut: 'line'
				3:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].expandedTo[0].y
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
