exports.glyphs['a_ball'] =
	anchors:
		0:
			x: 38
			y: 365
	contours:
		0:
			type: 'closed'
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
					# lType: 'line'
					lDir: 0 + 'deg'
					# rTension: 0
					# lTension: 0
				1:
					# x: parentAnchors[2].x + ( parentAnchors[0].x - parentAnchors[2].x ) * ( 35 / 253 )
					x: 73
					y: 430 
					# lType: 'line'
					lDir: 90 + 'deg'
					lDir: Utils.lineAngle( contours[0].nodes[0], anchors[0] ) 
					# rTension: 0
					# lTension: 0
				2:
					x: anchors[0].x
					y: anchors[0].y
					# lType: 'line'
					lDir: 90 + 'deg'
					# rTension: 0
					# rTension: 0.5
				3:
					x: 88
					y: 295 
					# lType: 'line'
					lDir: 0 + 'deg'
					rTension: 0.5
					lTension: 0.5
				4:
					x: Math.min(contours[0].nodes[2].x + thickness * ( 105 / 85 ) , contours[0].nodes[6].x - 0 )
					y: 340 
					# lType: 'line'
					lDir: 90 + 'deg'
					rDir: 90 + 'deg'
					# rTension: 0
					# lTension: 0
				5:
					x: Math.min(contours[0].nodes[4].x - 30 , contours[0].nodes[6].x - 0 ) 
					y: 400 
					# lType: 'line'
					lDir: 90 + 'deg'
					# rTension: 0
					# lTension: 0
				6:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
					# lType: 'line'
					lDir: 0 + 'deg'
					rTension: 0.5
					lTension: 0.5