exports.glyphs['serif_BottomLeft'] =
	anchors:
		0:
			y: parentAnchors[0].y
			y: parentAnchors[0].y 
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
		2:
			x: parentAnchors[1].x + serifHeight * serifCurve
			y: parentAnchors[1].y
		3:
			## FIXME: si pas de serifTerminal > midWidth ne fonctionne pas
			x: parentAnchors[0].x - serifHeight * serifCurve - serifWidth - serifWidth * midWidth
			y: parentAnchors[0].y - serifHeight	
		4:
			x: parentAnchors[0].x - serifHeight * serifCurve - serifWidth
			y: parentAnchors[0].y + serifHeight * serifMedian - serifHeight
		5:
			x: anchors[2].x + serifWidth 
			y: parentAnchors[0].y + serifHeight * serifMedian - serifHeight
	contours:
		0:
			type: 'closed'
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y + serifHeight * serifCurve
					lDir: 90 + 'deg'
					lTension: serifRoundness
					# rTension: serifRoundness
				1:
					x: parentAnchors[0].x - serifHeight * serifCurve
					y: parentAnchors[0].y
					# lDir: 0 + 'deg'
					lDir: Utils.lineAngle( contours[0].nodes[1], anchors[4] ) 
					lTension: serifRoundness
					rTension: serifRoundness
				2:
					x: contours[0].nodes[1].x - serifWidth
					y: anchors[4].y
					lDir: 0 + 'deg'
					lDir: Utils.lineAngle( contours[0].nodes[1], anchors[4] ) 
					lTension: serifTerminalCurve
				3:
					x: contours[0].nodes[2].x - ( contours[0].nodes[2].x - anchors[3].x ) / 2 - serifWidth * serifTerminal
					y: anchors[3].y - ( anchors[3].y - contours[0].nodes[2].y ) / 2
					# y: parentAnchors[1].y + ( parentAnchors[1].y * serifMedian ) / 2
					# lDir: 90 + 'deg'
					lDir: Utils.lineAngle( contours[0].nodes[2], anchors[3] ) 
					# rDir: Utils.lineAngle( contours[0].nodes[1], anchors[4] ) 
					lTension: serifTerminalCurve
					rTension: serifTerminalCurve
				4:
					x: anchors[3].x
					y: anchors[3].y
					lDir: 0 + 'deg'
					# lTension: 0
					rTension: serifTerminalCurve
				5:
					x: parentAnchors[0].x + ( parentAnchors[1].x - parentAnchors[0].x ) / 2
					y: parentAnchors[0].y - serifHeight
					lDir: 90 + 'deg'
					rDir: 90 + 'deg'
					# lTension: 0
					# rTension: 0
				6:
					x: parentAnchors[1].x
					y: parentAnchors[1].y + serifHeight * serifCurve
					lDir: - 90 + 'deg'
					# lTension: 0
					rTension: serifRoundness