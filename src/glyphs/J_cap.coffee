exports.glyphs['J_cap'] =
	unicode: 'J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + serifWidth + 40 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 155 + (25)
					y: capHeight
					typeOut: 'line'
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
					dirOut: 90 + 'deg'
					# typeOut: 'line'
					expand: Object({
						width: thickness * ( 134 / 85 ) * opticThickness
						angle: 180 - 138 + 'deg'
						distr: 0.25
					})
				2:
					x: 35
					y: - 220
					dirIn: 0 + 'deg'
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 43 / 85 ) * opticThickness
						angle: - 125 + 'deg'
						distr: 0
					})
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
	# 					on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
	# 				})
	# 				y: serifHeight
