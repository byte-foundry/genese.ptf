exports.glyphs['serif_bottom'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
		2:
			anchorLine: parentAnchors[2].anchorLine || parentAnchors[0].x
			topWidth: parentAnchors[2].topWidth * Math.min( serifWidth / 65, 1 ) || 1
			bottomCurve: parentAnchors[2].bottomCurve || 1
			topCurve: parentAnchors[2].topCurve || 1
			bottomWidth: parentAnchors[2].bottomWidth * Math.min( serifWidth / 65, 1 ) || 1
			angle: parentAnchors[2].angle || 0 + 'deg'
			directionY: parentAnchors[2].directionY || 1
			directionX: parentAnchors[2].directionX || 1
			bottomMedian: parentAnchors[2].bottomMedian || 1
			topMedian: parentAnchors[2].topMedian || 1
			serifHeight: parentAnchors[2].serifHeight || 1
			shift: parentAnchors[2].shift || 0
	tags: [
		'component'
	]
	contours:
		0:
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[1].y
					dirOut: anchors[2].angle
					tensionOut: 1.4 * serifRoundness
				1:
					x: anchors[2].anchorLine - serifHeight * anchors[2].serifHeight
					y: Math.min( contours[0].nodes[2].y + serifWidth / 10, anchors[0].y + serifHeight + serifCurve + anchors[2].bottomWidth * anchors[2].bottomCurve )
					y: anchors[1].y + serifHeight + serifCurve + anchors[2].bottomWidth * anchors[2].bottomCurve
					type: 'smooth'
					typeOut: 'line'
					tensionIn: serifRoundness
				2:
					x: contours[0].nodes[4].x - ( serifHeight * anchors[2].serifHeight * serifMedian * anchors[2].bottomMedian )
					y: contours[0].nodes[0].y + serifWidth + anchors[2].bottomWidth
					# y: contours[0].nodes[0].y - serifWidth - anchors[2].bottomWidth
					tensionOut: serifTerminalCurve
					type: 'smooth'
				3:
					x: contours[0].nodes[2].x + ( contours[0].nodes[4].x - contours[0].nodes[2].x ) / 2
					y: contours[0].nodes[2].y + ( contours[0].nodes[4].y - contours[0].nodes[2].y ) / 2 + serifTerminal * serifWidth
					# y: contours[0].nodes[2].y + ( contours[0].nodes[4].y - contours[0].nodes[2].y ) / 2 - serifTerminal * serifWidth
					dirOut: Utils.lineAngle( contours[0].nodes[2].point ,contours[0].nodes[4].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				4:
					x: anchors[2].anchorLine + anchors[2].shift
					y: contours[0].nodes[0].y + ( contours[0].nodes[2].y - contours[0].nodes[0].y ) * midWidth
					# y: contours[0].nodes[0].y - ( contours[0].nodes[0].y - contours[0].nodes[2].y ) * midWidth
					dirIn: - 90 + 'deg'
					tensionIn: serifTerminalCurve
					typeOut: 'line'
				5:
					x: anchors[2].anchorLine - ( serifHeight * serifArc )
					y: anchors[1].y
					typeOut: 'line'
