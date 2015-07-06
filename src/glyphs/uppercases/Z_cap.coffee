exports.glyphs['Z_cap'] =
	unicode: 'Z'
	ot:
		advanceWidth: contours[2].nodes[1].x + 15 * spacing
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
					x: 625 + (0)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: 85 + (0)
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 28 / 85 )
						angle: - 90 + 'deg'
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
					x: 665 + (0)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 90 + 'deg'
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
						width: thickness * ( 105 / 85 )
						angle: 167 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 95 / 85 )
						angle: 167 + 'deg'
						distr: 0
					})
		# 3:
		# 	skeleton: false
		# 	closed: false
		# 	nodes:
		# 		0:
		# 			x: contours[0].nodes[1].expandedTo[0].x
		# 			y: contours[0].nodes[1].expandedTo[0].y
		# 			dirOut: 180 + 'deg'
		# 		1:
		# 			x: contours[3].nodes[0].x - 153
		# 			y: contours[3].nodes[0].y
		# 			typeOut: 'line'
		# 		2:
		# 			x: contours[3].nodes[1].x - 15
		# 			y: contours[3].nodes[1].y - 205
		# 			typeOut: 'line'
		# 		3:
		# 			x: contours[3].nodes[2].x + 15
		# 			y: contours[3].nodes[2].y
		# 			dirOut: 70 + 'deg'
		# 			tensionOut: 1.4
		# 		4:
		# 			x: contours[0].nodes[1].expandedTo[1].x
		# 			y: contours[0].nodes[1].expandedTo[1].y
		# 			dirIn: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point )
		# 			tensionIn: 1.5
		# 4:
		# 	skeleton: false
		# 	closed: false
		# 	nodes:
		# 		0:
		# 			x: contours[1].nodes[1].expandedTo[0].x
		# 			y: contours[1].nodes[1].expandedTo[0].y
		# 			typeOut: 'line'
		# 		1:
		# 			x: contours[4].nodes[0].x + 45
		# 			y: contours[4].nodes[0].y + 185
		# 			typeOut: 'line'
		# 		2:
		# 			x: contours[4].nodes[1].x - 15
		# 			y: contours[4].nodes[1].y
		# 			dirOut: - 114 + 'deg'
		# 		3:
		# 			x: contours[1].nodes[1].expandedTo[1].x
		# 			y: contours[1].nodes[1].expandedTo[1].y
	components:
		0:
			base: 'serif_v'
			parentAnchors:
				0:
					x: Math.max(contours[1].nodes[0].expandedTo[1].x, contours[1].nodes[1].expandedTo[1].x - serifHeight - serifCurve * ( 200 / 15 ) )
					y: Utils.onLine({
						x: Math.max(contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].x - serifHeight - serifCurve * ( 200 / 15 ) )
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
				1:
					x: Math.max(contours[1].nodes[0].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].x - serifHeight - serifCurve * ( 200 / 15 ) )
					y: contours[1].nodes[1].expandedTo[0].y
				2:
					anchorLine: contours[1].nodes[1].expandedTo[0].x
					rightWidth: 90
					left: false
			parentParameters:
				serifMedian: serifMedian * 0.84
				serifHeight: serifHeight * ( 22 / 20 )
				serifCurve: serifCurve * ( 25 / 15 )
			transformOrigin: Array( contours[1].nodes[1].expandedTo[0].x, contours[1].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (14) + 'deg' ] )
		1:
			base: 'serif_v'
			parentAnchors:
				0:
					x: Math.min(contours[0].nodes[0].expandedTo[1].x, contours[0].nodes[1].expandedTo[1].x + serifHeight + serifCurve * ( 120 / 15 ) )
					y: contours[0].nodes[1].expandedTo[0].y
				1:
					x: Math.min(contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[1].expandedTo[0].x + serifHeight + serifCurve * ( 120 / 15 ) )
					y: Utils.onLine({
						x: Math.max(contours[0].nodes[1].expandedTo[0].x, contours[0].nodes[1].expandedTo[0].x + serifHeight + serifCurve * ( 120 / 15 ) )
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
				2:
					anchorLine: contours[0].nodes[1].expandedTo[0].x
					leftWidth: 118
					right: false
					directionY: 1
			parentParameters:
				serifMedian: serifMedian * 0.92
				serifHeight: serifHeight * ( 16 / 20 )
				serifCurve: serifCurve * ( 7 / 15 )
			transformOrigin: Array( contours[0].nodes[1].expandedTo[0].x, contours[0].nodes[1].expandedTo[0].y )
			transforms: Array( [ 'skewX', serifRotate * (8) + 'deg' ] )
