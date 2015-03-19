exports.glyphs['serif_Bottom'] =
	# anchors:
	# 	0:
	# 		x: parentAnchors[0].x
	# 		y: parentAnchors[0].y 
	# 	1:
	# 		x: parentAnchors[1].x
	# 		y: parentAnchors[1].y
	# 	2:
	# 		x: parentAnchors[1].x + serifHeight * serifCurve
	# 		y: parentAnchors[1].y
	# 	3:
	# 		## FIXME: si pas de serifTerminal > midWidth ne fonctionne pas
	# 		x: parentAnchors[0].x - serifHeight * serifCurve - serifWidth - serifWidth * midWidth
	# 		y: parentAnchors[0].y - serifHeight	
	# 	4:
	# 		x: parentAnchors[0].x - serifHeight * serifCurve - serifWidth
	# 		y: parentAnchors[0].y * serifMedian
	# 	5:
	# 		x: anchors[2].x + serifWidth 
	# 		y: parentAnchors[1].y * serifMedian
	contours:
		0:
			closed: true
			nodes:
				0:
					x: 0
					y: 0
					typeOut: 'line'
				1:
					x: 0
					y: -100
					typeOut: 'line'
				2:
					x: 100
					y: -100
					typeOut: 'line'
				3:
					x: 100
					y: 100
				# 0:
				# 	x: parentAnchors[0].x
				# 	y: parentAnchors[0].y + serifHeight * serifCurve
				# 	dirOut: 90 + 'deg'
				# 	tensionOut: serifRoundness
				# 	# tensionIn: serifRoundness
				# 1:
				# 	x: parentAnchors[0].x - serifHeight * serifCurve
				# 	y: parentAnchors[0].y
				# 	# dirOut: 0 + 'deg'
				# 	dirOut: Utils.lineAngle( contours[0].nodes[1], anchors[4] ) 
				# 	tensionOut: serifRoundness
				# 	tensionIn: serifRoundness
				# 2:
				# 	x: contours[0].nodes[1].x - serifWidth
				# 	y: parentAnchors[0].y * serifMedian
				# 	dirOut: 0 + 'deg'
				# 	dirOut: Utils.lineAngle( contours[0].nodes[1], anchors[4] ) 
				# 	tensionOut: serifTerminalCurve
				# 3:
				# 	x: contours[0].nodes[2].x - ( contours[0].nodes[2].x - anchors[3].x ) / 2 - serifWidth * serifTerminal
				# 	y: contours[0].nodes[2].y / 2
				# 	# dirOut: 90 + 'deg'
				# 	dirOut: Utils.lineAngle( contours[0].nodes[2], anchors[3] ) 
				# 	# dirIn: Utils.lineAngle( contours[0].nodes[1], anchors[4] ) 
				# 	tensionOut: serifTerminalCurve
				# 	tensionIn: serifTerminalCurve
				# 4:
				# 	x: anchors[3].x
				# 	y: anchors[3].y
				# 	dirOut: 0 + 'deg'
				# 	# tensionOut: 0
				# 	tensionIn: serifTerminalCurve
				# 5:
				# 	x: parentAnchors[0].x + ( parentAnchors[1].x - parentAnchors[0].x ) / 2
				# 	y: parentAnchors[0].y - serifHeight + serifHeight * serifArc 
				# 	dirOut: 90 + 'deg'
				# 	# dirIn: 0 + 'deg'
				# 	# tensionOut: 0
				# 	# tensionIn: 0
				# 6:
				# 	x: contours[0].nodes[5].x + ( contours[0].nodes[5].x - contours[0].nodes[4].x )
				# 	y: parentAnchors[1].y - serifHeight
				# 	dirOut: 0 + 'deg'
				# 	tensionOut: serifTerminalCurve
				# 	# tensionIn: 0
				# 7:
				# 	x: anchors[2].x + serifWidth + serifWidth * serifTerminal
				# 	x: contours[0].nodes[6].x - ( contours[0].nodes[6].x - ( anchors[2].x + serifWidth ) ) / 2 + serifWidth * serifTerminal
				# 	y: ( parentAnchors[1].y * serifMedian ) / 2
				# 	# dirOut: 90 + 'deg'
				# 	dirIn: Utils.lineAngle( contours[0].nodes[6], anchors[5] ) 
				# 	tensionOut: serifTerminalCurve
				# 	tensionIn: serifTerminalCurve
				# 8:
				# 	x: anchors[5].x 
				# 	y: anchors[5].y
				# 	dirOut: 0 + 'deg'
				# 	dirOut: Utils.lineAngle( anchors[2], contours[0].nodes[8] ) 
				# 	# tensionOut: serifTerminalCurve
				# 	tensionIn: serifTerminalCurve
				# 9:
				# 	x: anchors[2].x
				# 	y: parentAnchors[1].y
				# 	dirOut: 0 + 'deg'
				# 	dirOut: Utils.lineAngle( contours[0].nodes[8], contours[0].nodes[9] )
				# 	tensionOut: serifRoundness
				# 	tensionIn: serifRoundness
				# 10:
				# 	x: parentAnchors[1].x
				# 	y: parentAnchors[1].y + serifHeight * serifCurve
				# 	dirOut: - 90 + 'deg'
				# 	# tensionOut: 0
				# 	tensionIn: serifRoundness
