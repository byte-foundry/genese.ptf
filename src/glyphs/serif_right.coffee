exports.glyphs['serif_right'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
		2:
			anchorLine: parentAnchors[2].anchorLine || 0
			rightCurve: parentAnchors[2].rightCurve || 1
			rightWidth: parentAnchors[2].rightWidth || 1
			angle: parentAnchors[2].angle || - 90 + 'deg'
			direction: parentAnchors[2].direction || 1
	contours:
		0:
			closed: true
			nodes:
				0:
					x: anchors[1].x
					y: anchors[1].y
					dirOut: anchors[2].angle
					typeIn: 'line'
					tensionOut: 1.4 * serifRoundness
				1:
					x: contours[0].nodes[2].x - ( contours[0].nodes[2].x - contours[0].nodes[0].x ) / 2
					y: anchors[2].anchorLine + ( serifHeight * serifArc ) * anchors[2].direction
					# typeOut: 'line'
					# type: 'smooth'
				2:
					x: contours[0].nodes[6].x + ( contours[0].nodes[4].x - contours[0].nodes[6].x ) * midWidth
					y: anchors[2].anchorLine
					dirOut: 0 + 'deg'
					# dirIn: 0 + 'deg'
					tensionIn: serifTerminalCurve
				3:
					x: contours[0].nodes[4].x + ( contours[0].nodes[2].x - contours[0].nodes[4].x ) / 2 + serifTerminal * serifWidth
					y: anchors[2].anchorLine + (( serifHeight * serifMedian ) / 2 ) * anchors[2].direction
					dirIn: Utils.lineAngle( contours[0].nodes[4].point ,contours[0].nodes[2].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				4:
					x: contours[0].nodes[6].x + serifWidth * anchors[2].rightWidth
					y: anchors[2].anchorLine + ( serifHeight * serifMedian ) * anchors[2].direction
					tensionOut: serifTerminalCurve
					type: 'smooth'
				5:
					x: Math.min( contours[0].nodes[4].x - serifWidth / 10, anchors[0].x + serifHeight + serifCurve * anchors[2].rightWidth * anchors[2].rightCurve ) # serifWidth / 10 to avoid weird behavior with curve/median
					y: anchors[2].anchorLine + ( serifHeight ) * anchors[2].direction
					type: 'smooth'
					typeIn: 'line'
					tensionIn: serifRoundness
				6:
					x: anchors[0].x
					y: anchors[0].y
					dirIn: anchors[2].angle
					tensionOut: 1.4 * serifRoundness
