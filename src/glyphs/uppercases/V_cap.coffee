exports.glyphs['V_cap'] =
	unicode: 'V'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + serifWidth - 40 * spacing + (150)
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 595 + (10)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 35 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 315 + (6)
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 26 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 20 + (108)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 108 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 1
					})
				1:
					expandedTo:
						[
							{
								x: Utils.onLine({
									y: thickness * ( 130 / 85 ) * opticThickness
									on: [ contours[1].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
								})
								y: thickness * ( 130 / 85 ) * opticThickness
								typeOut: 'line'
							}
							{
								x: Utils.onLine({
									y: thickness * ( 130 / 85 ) * opticThickness
									on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
								})
								y: thickness * ( 130 / 85 ) * opticThickness
								typeIn: 'line'
							}
						]
				2:
					x: contours[0].nodes[1].expandedTo[0].x + contours[0].nodes[1].expand.width
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
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
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					leftWidth: 0.9
					rightWidth: 0.9
					angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
					directionY: -1
		1:
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
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					leftWidth: 0.9
					rightWidth: 0.9
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
					directionY: -1
	# components:
	# 	0:
	# 		base: 'serif'
	# 		parentAnchors:
	# 			0:
	# 				x: Utils.onLine({
	# 					y: capHeight - serifHeight - serifCurve * ( 150 / 15 )
	# 					on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
	# 				})
	# 				y: capHeight - serifHeight - serifCurve * ( 150 / 15 )
	# 			1:
	# 				x: Utils.onLine({
	# 					y: capHeight - serifHeight - serifCurve * ( 150 / 15 )
	# 					on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
	# 				})
	# 				y: capHeight - serifHeight - serifCurve * ( 150 / 15 )
	# 			2:
	# 				anchorLine: capHeight
	# 				directionY: -1
	# 				leftCurve: 5
	# 				rightCurve: 5
	# 				leftWidth: 2
	# 				rightWidth: 2
	# 				angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
