exports.glyphs['attaque'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
		2:
			anchorLine: parentAnchors[2].anchorLine || 0
			leftWidth: parentAnchors[2].leftWidth || 1
			rightCurve: parentAnchors[2].rightCurve || 1
			leftCurve: parentAnchors[2].leftCurve || 1
			rightWidth: parentAnchors[2].rightWidth || 1
			angle: parentAnchors[2].angle || - 90 + 'deg'
			directionX: parentAnchors[2].directionX || 1
			directionY: parentAnchors[2].directionY || 1
	contours:
		0:
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 90 + 'deg'
					tensionOut: serifRoundness * 1.45
				1:
					x: contours[0].nodes[0].x - ( serifWidth * anchors[2].leftWidth * anchors[2].rightWidth ) * anchors[2].directionX
					y: contours[0].nodes[2].y - ( serifHeight * serifMedian / 2 ) * anchors[2].directionY
					# tensionIn: Math.min(serifRoundness * 0.78, 1.8 )
					tensionIn: serifRoundness * 1.4
					dirIn: Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[3].point )
					dirIn: 3 + ( 45 * serifMedian - 45 ) + 'deg'
					typeOut: 'line'
				2:
					x: contours[0].nodes[0].x - ( serifWidth * anchors[2].leftWidth * anchors[2].rightWidth ) * anchors[2].directionX
					y: anchors[0].y + ( serifCurve * ( 45 / 15 ) + serifHeight / 2 ) * anchors[2].directionY
					typeOut: 'line'
				3:
					x: anchors[1].x - ( thickness * ( 15 / 85 ) ) * anchors[2].directionX
					y: anchors[2].anchorLine
					typeOut: 'line'
				4:
					x: anchors[1].x
					y: anchors[2].anchorLine
					typeOut: 'line'
				5:
					x: anchors[1].x
					y: anchors[1].y
					typeOut: 'line'
