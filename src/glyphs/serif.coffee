exports.glyphs['serif'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
		2:
			anchorLine: parentAnchors[2].anchorLine || 0
			leftWidth: parentAnchors[2].leftWidth * Math.min( serifWidth / 65, 1 ) || 1
			rightCurve: parentAnchors[2].rightCurve || 1
			leftCurve: parentAnchors[2].leftCurve || 1
			rightWidth: parentAnchors[2].rightWidth * Math.min( serifWidth / 65, 1 ) || 1
			angle: parentAnchors[2].angle || - 90 + 'deg'
			directionY: parentAnchors[2].directionY || 1
			directionX: parentAnchors[2].directionX || 1
	contours:
		0:
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: anchors[2].angle
					tensionOut: 1.4 * serifRoundness
				1:
					x: Math.min( contours[0].nodes[2].x - serifWidth / 10, anchors[0].x + serifHeight + serifCurve + anchors[2].rightWidth * anchors[2].rightCurve ) # serifWidth / 10 to avoid weird behavior with curve/median
					y: anchors[2].anchorLine + ( serifHeight ) * anchors[2].directionY
					# dirIn: 180 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					# dirIn: Utils.lineAngle( contours[0].nodes[1].point ,contours[0].nodes[2].point )
					tensionIn: serifRoundness
					# tensionOut: 0
				2:
					# x: Math.max( contours[0].nodes[1].x, contours[0].nodes[0].x + serifWidth * anchors[2].rightWidth )
					x: contours[0].nodes[0].x + serifWidth + anchors[2].rightWidth
					y: anchors[2].anchorLine + ( serifHeight * serifMedian ) * anchors[2].directionY
					# dirOut: Utils.lineAngle( contours[0].nodes[1].point ,contours[0].nodes[2].point )
					# dirOut: Utils.lineAngle( contours[0].nodes[1].point ,contours[0].nodes[2].point )
					# dirOut: 1 + 'deg'
					tensionOut: serifTerminalCurve
					type: 'smooth'
					# typeIn: 'line'
				3:
					# x: Utils.onLine({
					# 	y: ( contours[0].nodes[2].y - anchors[2].anchorLine ) / 2
					# 	on: [ contours[0].nodes[2].point, contours[0].nodes[4].point ]
					# })
					x: contours[0].nodes[2].x + ( contours[0].nodes[4].x - contours[0].nodes[2].x ) / 2 + serifTerminal * serifWidth
					y: anchors[2].anchorLine + (( serifHeight * serifMedian ) / 2 ) * anchors[2].directionY
					dirOut: Utils.lineAngle( contours[0].nodes[2].point ,contours[0].nodes[4].point )
					type: 'smooth'
					# transforms: Array(
					# 	[ 'translate', serifTerminal * serifWidth, 0 ]
					# )
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				4:
					x: contours[0].nodes[0].x + ( contours[0].nodes[2].x - contours[0].nodes[0].x ) * midWidth
					y: anchors[2].anchorLine
					# typeOut: 'line'
					dirIn: 0 + 'deg'
					tensionIn: serifTerminalCurve
				5:
					x: contours[0].nodes[4].x - ( contours[0].nodes[4].x - contours[0].nodes[6].x ) / 2
					y: anchors[2].anchorLine + ( serifHeight * serifArc ) * anchors[2].directionY
					# dirIn: 0 + 'deg'
				6:
					x: contours[0].nodes[10].x - ( contours[0].nodes[10].x - contours[0].nodes[8].x ) * midWidth
					y: contours[0].nodes[4].y
					tensionOut: serifTerminalCurve
				7:
					x: contours[0].nodes[8].x - ( contours[0].nodes[8].x - contours[0].nodes[6].x ) / 2 - serifTerminal * serifWidth
					y: contours[0].nodes[3].y
					dirOut: Utils.lineAngle( contours[0].nodes[6].point ,contours[0].nodes[8].point )
					# typeOut: 'line'
					type: 'smooth'
					# transforms: Array(
					# 	[ 'translate', - serifTerminal * serifWidth, 0 ]
					# )
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				8:
					x: contours[0].nodes[10].x - serifWidth - anchors[2].leftWidth
					y: contours[0].nodes[2].y
					# dirIn: Utils.lineAngle( contours[0].nodes[8].point ,contours[0].nodes[9].point )
					type: 'smooth'
					tensionIn: serifTerminalCurve
					typeOut: 'line'
				9:
					x: Math.max( contours[0].nodes[8].x + serifWidth / 10, anchors[1].x - serifHeight - serifCurve - anchors[2].leftWidth * anchors[2].leftCurve )
					y: contours[0].nodes[1].y
					# dirIn: Utils.lineAngle( contours[0].nodes[8].point, contours[0].nodes[9].point )
					tensionOut: serifRoundness
					type: 'smooth'
					# typeOut: 'line'
				10:
					x: anchors[1].x
					y: anchors[1].y
					dirIn: anchors[2].angle
					typeOut: 'line'
					tensionIn: 1.4 * serifRoundness
