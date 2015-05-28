exports.glyphs['Z_cap'] =
	unicode: 'Z'
	ot:
		advanceWidth: contours[4].nodes[1].x + 15 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 625 + (0)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: 218 + (0)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 28 / 85 )
						angle: - 64 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 40 + (0)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: 645 + (0)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 167 / 85 )
						angle: 171 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 92 / 85 )
						angle: 167 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 89 / 85 )
						angle: 167 + 'deg'
						distr: 0
					})
		3:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirOut: 180 + 'deg'
				1:
					x: contours[3].nodes[0].x - 153
					y: contours[3].nodes[0].y
					typeOut: 'line'
				2:
					x: contours[3].nodes[1].x - 15
					y: contours[3].nodes[1].y - 205
					typeOut: 'line'
				3:
					x: contours[3].nodes[2].x + 15
					y: contours[3].nodes[2].y
					dirOut: 70 + 'deg'
					tensionOut: 1.4
				4:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point )
					tensionIn: 1.5
		4:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[4].nodes[0].x + 45
					y: contours[4].nodes[0].y + 185
					typeOut: 'line'
				2:
					x: contours[4].nodes[1].x - 15
					y: contours[4].nodes[1].y
					dirOut: - 114 + 'deg'
				3:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
	# components:
	# 	0:
	# 		base: 'serif_v'
	# 		parentAnchors:
	# 			1:
	# 				x: Math.max(contours[2].nodes[1].expandedTo[0].x, contours[2].nodes[1].expandedTo[0].x - serifHeight - serifCurve * ( 100 / 15 ) )
	# 				y: contours[2].nodes[1].expandedTo[0].y
	# 			0:
	# 				x: Math.max(contours[2].nodes[1].expandedTo[1].x, contours[2].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 100 / 15 ) )
	# 				y: contours[2].nodes[1].expandedTo[1].y
	# 			2:
	# 				anchorLine: contours[2].nodes[1].expandedTo[0].x
	# 				rightWidth: 60
	# 				left: false
	# 		transformOrigin: Array( contours[2].nodes[1].expandedTo[0].x, contours[2].nodes[1].expandedTo[0].y )
	# 		transforms: Array( [ 'skewX', serifRotate * (8) + 'deg' ] )
