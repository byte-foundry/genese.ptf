exports.glyphs['term_TL'] =
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
					# tensionIn: 0
					# tensionOut: 0
				1:
					x: parentAnchors[0].x
					y: parentAnchors[2].y - Math.min( thickness * ( 110 / 85 ), 110 ) - ( serifHeight - 20 )
					dirOut: 90 + 'deg'
					tensionIn: 0
					tensionOut: Math.min(serifRoundness * 0.78, 1.8 )
				2:
					x: parentAnchors[0].x - serifWidth * parentAnchors[0].serifWidth - serifHeight * serifCurve * parentAnchors[0].serifWidth
					y: contours[0].nodes[1].y + Math.min( thickness * ( 40 / 85 ), 40 )
					dirOut: 0 + 'deg'
					dirIn: 12 + ( 45 * serifMedian - 45 ) + 'deg'
					# tensionOut: 0
					# tensionIn: Math.min( serifRoundness * 1.6, 1.8 )
					type: 'smooth'
				3:
					x: parentAnchors[0].x - ( serifWidth + serifHeight * serifCurve ) * parentAnchors[0].serifWidth
					y: parentAnchors[2].y - Math.min( thickness * ( 60 / 85 ), 60 )
					dirOut: 90 + 'deg'
					tensionOut: 0
					tensionIn: 0
					type: 'smooth'
				4:
					x: parentAnchors[1].x - thickness * ( 10 / 86 )
					y: parentAnchors[2].y
					# lType: 'line'
					dirOut: 0 + 'deg'
					tensionOut: 0
					tensionIn: 0
					type: 'smooth'
				5:
					x: parentAnchors[1].x + parentAnchors[2].x
					y: parentAnchors[2].y
					# lType: 'line'
					dirOut: 90 + 'deg'
					tensionOut: 0
					type: 'smooth'
				6:
					x: parentAnchors[1].x
					y: contours[0].nodes[3].y
					typeOut: 'line'
					dirOut: 0 + 'deg'
					# tensionOut: 0
					# tensionIn: 0
					type: 'smooth'
				7:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
					typeOut: 'line'
					dirOut: 90 + 'deg'
					# tensionOut: 0
					# tensionIn: 0
