exports.glyphs['term_TL'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
		2:
			x: parentAnchors[2].x
			y: parentAnchors[2].y
	contours:
		0:
			type: 'closed'
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
					# lType: 'line'
					lDir: 0 + 'deg'
					rTension: 0
					lTension: 0
				1:
					x: contours[0].nodes[0].x
					y: parentAnchors[2].y - Math.min( thickness * ( 110 / 85 ), 110 ) - ( serifHeight - 20 )
					# lType: 'line'
					lDir: 90 + 'deg'
					rTension: 0
					lTension: Math.min(serifRoundness * 0.78, 1.8 )
				2:
					x: parentAnchors[0].x - serifWidth - serifHeight * serifCurve
					y: contours[0].nodes[1].y + Math.min( thickness * ( 40 / 85 ), 40 )
					# lType: 'line'
					lDir: 0 + 'deg'
					rDir: 12 + ( 45 * serifMedian - 45 ) + 'deg'
					lTension: 0
					rTension: Math.min(serifRoundness * 1.6, 1.8 )
				3:
					x: parentAnchors[0].x - ( serifWidth + serifHeight * serifCurve ) 
					y: parentAnchors[2].y - Math.min( thickness * ( 60 / 85 ), 60 )
					# lType: 'line'
					lDir: 90 + 'deg'
					lTension: 0
					rTension: 0
				4:
					x: parentAnchors[1].x - thickness * ( 10 / 86 )
					y: parentAnchors[2].y
					# lType: 'line'
					lDir: 0 + 'deg'
					lTension: 0
					rTension: 0
				5:
					x: parentAnchors[1].x + parentAnchors[2].x
					y: parentAnchors[2].y
					# lType: 'line'
					lDir: 90 + 'deg'
					lTension: 0
				6:
					x: parentAnchors[1].x
					y: contours[0].nodes[3].y
					# lType: 'line'
					lDir: 0 + 'deg'
					lTension: 0
					rTension: 0
				7:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
					# lType: 'line'
					lDir: 90 + 'deg'
					lTension: 0
					rTension: 0
				
				
				