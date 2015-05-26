exports.glyphs['serif_left'] =
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
			leftCurve: parentAnchors[2].leftCurve || 1
			angle: parentAnchors[2].angle || - 90 + 'deg'
			directionY: parentAnchors[2].directionY || 1
			directionX: parentAnchors[2].directionX || 1
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
					x: Math.max( contours[0].nodes[2].x + serifWidth / 10, anchors[1].x - serifHeight - serifCurve - anchors[2].leftWidth * anchors[2].leftCurve )
					y: anchors[2].anchorLine + ( serifHeight ) * anchors[2].directionY
					tensionIn: serifRoundness
					type: 'smooth'
				2:
					x: contours[0].nodes[0].x - serifWidth - anchors[2].leftWidth
					y: anchors[2].anchorLine + ( serifHeight * serifMedian ) * anchors[2].directionY
					type: 'smooth'
					tensionOut: serifTerminalCurve
					typeIn: 'line'
				3:
					x: contours[0].nodes[2].x - ( contours[0].nodes[2].x - contours[0].nodes[4].x ) / 2 - serifTerminal * serifWidth
					y: anchors[2].anchorLine + (( serifHeight * serifMedian ) / 2 ) * anchors[2].directionY
					dirIn: Utils.lineAngle( contours[0].nodes[4].point ,contours[0].nodes[2].point )
					type: 'smooth'
					tensionIn: serifTerminalCurve
					tensionOut: serifTerminalCurve
				4:
					x: contours[0].nodes[0].x - ( contours[0].nodes[0].x - contours[0].nodes[2].x ) * midWidth
					y: anchors[2].anchorLine
					tensionIn: serifTerminalCurve
				5:
					x: contours[0].nodes[0].x + ( contours[0].nodes[0].x - contours[0].nodes[4].x ) / 2
					y: anchors[2].anchorLine + ( serifHeight * serifArc ) * anchors[2].directionY
				6:
					x: anchors[0].x
					y: anchors[2].anchorLine
				7:
					x: anchors[0].x
					y: anchors[0].y
					dirIn: anchors[2].angle
					tensionIn: 1.4 * serifRoundness
