exports.glyphs['serif_BR'] =
	anchors:
		0:
			x: parentAnchors[0].x + serifWidth
			y: parentAnchors[0].y * serifMedian
		1:
			x: parentAnchors[1].x + serifWidth * midWidth
			y: parentAnchors[1].y
	contours:
		0:
			type: 'closed'
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y + serifWidth * serifCurve
					# lType: 'line'
					lDir: - 90 + 'deg'
					# rTension: 0
				1:
					x: parentAnchors[0].x + serifWidth * serifCurve
					y: parentAnchors[0].y
					# lType: 'line'
					lDir: 0 + 'deg'
					lDir: Utils.lineAngle( contours[0].nodes[1], anchors[0] ) 
					# rTension: 0
				2:
					x: parentAnchors[0].x + serifWidth 
					y: parentAnchors[0].y * serifMedian
					y: parentAnchors[0].y 
					lDir: Utils.lineAngle( contours[0].nodes[1], contours[0].nodes[2] ) 
					# rtension: 0
					# lDir: 90 + 'deg'
					# lTension: serifCurve
					# lType: 'line'
				3:
					x: contours[0].nodes[2].x + ( ( parentAnchors[1].x + serifWidth * midWidth ) - contours[0].nodes[2].x ) / 2 + serifWidth * serifTerminal
					y: contours[0].nodes[2].y / 2
					lDir: 90 + 'deg'
					lDir: Utils.lineAngle( contours[0].nodes[2], anchors[1] ) 
					# lTension: 0
					# lType: 'line'
				4:
					x: anchors[1].x
					y: anchors[1].y
					# lType: 'line'
					lDir: 0 + 'deg'
					lTension: 0
				5:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
					# lType: 'line'
					lDir: 0 + 'deg'
					lTension: 0
