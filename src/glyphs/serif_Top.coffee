exports.glyphs['serif_Top'] =
	anchors:
		0:
			y: parentAnchors[0].y
			y: parentAnchors[0].y
		1:
			x: parentAnchors[1].x
			y: parentAnchors[1].y
		2:
			x: parentAnchors[1].x + serifHeight * serifCurve * parentAnchors[1].serifWidth
			y: parentAnchors[1].y
		3:
			## FIXME: si pas de serifTerminal > midWidth ne fonctionne pas
			x: parentAnchors[0].x - serifHeight * serifCurve * parentAnchors[0].serifWidth - serifWidth * parentAnchors[0].serifWidth - serifWidth * midWidth
			y: parentAnchors[0].y + serifHeight * serifCurve + serifHeight
		4:
			x: parentAnchors[0].x - serifHeight * serifCurve - serifWidth
			y: parentAnchors[0].y + serifHeight * serifCurve * 2 - serifHeight * serifCurve * serifMedian
		5:
			x: anchors[2].x + serifWidth
			y: parentAnchors[0].y - serifHeight * serifMedian + serifHeight
	contours:
		0:
			closed: false
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
					dirOut: parentAnchors[0].dirOut
					tensionOut: serifRoundness
				1:
					x: parentAnchors[0].x - serifHeight * serifCurve * parentAnchors[0].serifWidth
					y: parentAnchors[0].y + serifHeight * serifCurve
					dirOut: Utils.lineAngle( contours[0].nodes[1].point, anchors[4].point )
					tensionOut: 0
					tensionIn: serifRoundness
					type: 'smooth'
				2:
					x: contours[0].nodes[1].x - serifWidth * parentAnchors[0].serifWidth
					y: anchors[4].y
					dirOut: Utils.lineAngle( contours[0].nodes[1].point, anchors[4].point )
					tensionOut: serifTerminalCurve
					tensionIn: 0
				3:
					x: contours[0].nodes[2].x - ( contours[0].nodes[2].x - anchors[3].x ) / 2 - serifWidth * serifTerminal * parentAnchors[0].serifWidth
					y: anchors[3].y - ( anchors[3].y - contours[0].nodes[2].y ) / 2
					dirOut: Utils.lineAngle( contours[0].nodes[2].point, anchors[3].point )
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
					type: 'smooth'
				4:
					x: anchors[3].x
					y: anchors[3].y
					dirOut: 0 + 'deg'
					tensionIn: serifTerminalCurve
				5:
					x: parentAnchors[0].x + ( parentAnchors[1].x - parentAnchors[0].x ) / 2
					y: parentAnchors[0].y + serifHeight + serifHeight * serifCurve - serifHeight * serifArc
					dirOut: 90 + 'deg'
					dirIn: 90 + 'deg'
				6:
					x: anchors[2].x + serifWidth + serifWidth * midWidth
					y: contours[0].nodes[4].y
					dirOut: 0 + 'deg'
					tensionOut: serifTerminalCurve
				7:
					x: contours[0].nodes[6].x - ( contours[0].nodes[6].x - ( anchors[2].x + serifWidth ) ) / 2 + serifWidth * serifTerminal
					y: capHeight - ( capHeight - parentAnchors[1].y * serifMedian ) / 2
					y: contours[0].nodes[3].y
					dirIn: Utils.lineAngle( contours[0].nodes[6].point, anchors[5].point )
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
					type: 'smooth'
				8:
					x: anchors[5].x
					y: contours[0].nodes[2].y
					dirOut: 0 + 'deg'
					dirOut: Utils.lineAngle( anchors[2].point, contours[0].nodes[8].point )
					tensionIn: serifTerminalCurve
					type: 'smooth'
				9:
					x: anchors[2].x
					y: contours[0].nodes[1].y
					dirOut: 0 + 'deg'
					dirOut: Utils.lineAngle( contours[0].nodes[8].point, contours[0].nodes[9].point )
					tensionOut: serifRoundness
					tensionIn: 0
					type: 'smooth'
				10:
					x: parentAnchors[1].x
					y: contours[0].nodes[0].y
					dirOut: parentAnchors[1].dirOut
					type: 'smooth'
					tensionIn: serifRoundness
