exports.glyphs['term_BR'] =
	# anchors:
	# 	0:
	# 		x: parentAnchors[0].x
	# 		y: parentAnchors[0].y
	# 	1:
	# 		x: parentAnchors[1].x
	# 		y: parentAnchors[1].y
	# 	2:
	# 		x: parentAnchors[2].x
	# 		y: parentAnchors[2].y
	tags: [
		'component'
	]
	contours:
		0:
			closed: false
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
					typeOut: 'line'
				1:
					x: contours[0].nodes[0].x
					y: 0 - overshoot / 2
					typeOut: 'line'
				2:
					x: contours[0].nodes[1].x + thickness * ( 15 / 85 )
					y: contours[0].nodes[1].y
					typeOut: 'line'
				3:
					x: parentAnchors[1].x + serifWidth * parentAnchors[1].serifWidth * serifCurve
					y: contours[0].nodes[2].y + 50 * spurHeight
					typeOut: 'line'
				4:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[3].y + serifHeight / 2 * serifMedian
					# dirOut: - 169 * spurHeight + 'deg'
					dirOut: Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[3].point )
					tensionOut: 1.4
				5:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
					dirOut: - 90 + 'deg'
					tensionIn: 1.5
					type: 'smooth'
