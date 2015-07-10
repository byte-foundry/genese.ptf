exports.glyphs['serif-v'] =
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
			maxWidth: parentAnchors[2].maxWidth || 1
	tags: [
		'component'
	]
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
					x: anchors[2].anchorLine - serifHeight* anchors[2].serifHeight
					y: Math.min( contours[0].nodes[2].y + serifWidth / 10, anchors[0].y + serifHeight + serifCurve + anchors[2].bottomWidth * anchors[2].bottomCurve )
					type: 'smooth'
					typeOut: 'line'
					tensionIn: serifRoundness
				2:
					x: anchors[2].anchorLine - ( serifHeight * anchors[2].serifHeight * serifMedian * anchors[2].bottomMedian )
					y: contours[0].nodes[0].y - serifWidth - anchors[2].bottomWidth
					tensionOut: serifTerminalCurve
					type: 'smooth'
				3:
					x: anchors[2].anchorLine - (( serifHeight * anchors[2].serifHeight * serifMedian * anchors[2].bottomMedian ) / 2 )
					x: anchors[2].anchorLine - serifHeight * anchors[2].serifHeight / 2
					y: contours[0].nodes[2].y + ( contours[0].nodes[4].y - contours[0].nodes[2].y ) / 2 - serifTerminal * serifWidth
					dirOut: Utils.lineAngle( contours[0].nodes[2].point ,contours[0].nodes[4].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				4:
					x: anchors[2].anchorLine
					y: contours[0].nodes[0].y - ( contours[0].nodes[0].y - contours[0].nodes[2].y ) * midWidth
					# y: contours[0].nodes[2].y
					dirIn: - 90 + 'deg'
					tensionIn: serifTerminalCurve
					typeOut: 'line'
				5:
					x: anchors[2].anchorLine - ( serifHeight * serifArc )
					y: contours[0].nodes[4].y + ( contours[0].nodes[6].y - contours[0].nodes[4].y ) / 2
					typeOut: 'line'
				6:
					x: contours[0].nodes[4].x
					y: contours[0].nodes[10].y + ( contours[0].nodes[8].y - contours[0].nodes[10].y ) * midWidth
					# y: contours[0].nodes[8].y
					tensionOut: serifTerminalCurve
					dirOut: 90 + 'deg'
					# typeOut: 'line'
				7:
					x: contours[0].nodes[3].x
					y: contours[0].nodes[8].y + ( contours[0].nodes[6].y - contours[0].nodes[8].y ) / 2 + serifTerminal * serifWidth
					# y: contours[0].nodes[8].y
					dirOut: Utils.lineAngle( contours[0].nodes[6].point, contours[0].nodes[8].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
					# typeOut: 'line'
				8:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[10].y + serifWidth + anchors[2].topWidth
					y:
						if parentAnchors[2].maxWidth
						then Math.min( parentAnchors[2].maxWidth, anchors[2].baseRight + serifWidth )
						else contours[0].nodes[10].y + serifWidth + anchors[2].topWidth
					type: 'smooth'
					tensionIn: serifTerminalCurve
					typeOut: 'line'
					# typeOut: 'line'
				9:
					x: contours[0].nodes[1].x
					y: Math.max( contours[0].nodes[8].y - serifWidth / 10, anchors[1].y - serifHeight - serifCurve - anchors[2].topWidth * anchors[2].topCurve )
					tensionOut: serifRoundness
					type: 'smooth'
					# typeOut: 'line'
				10:
					x: anchors[1].x
					y: anchors[1].y
					dirIn: anchors[2].angle
					typeOut: 'line'
					tensionIn: 1.4 * serifRoundness
					# typeOut: 'line'
