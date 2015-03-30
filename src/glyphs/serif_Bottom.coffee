exports.glyphs['serif_Bottom'] =
	anchors:
		0:
			x: parentAnchors[0].x
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
			y: parentAnchors[0].y * serifMedian
		5:
			x: anchors[2].x + serifWidth
			y: parentAnchors[1].y * serifMedian
	contours:
		0:
			closed: false
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y + serifHeight * serifCurve
					dirOut: 90 + 'deg'
					tensionOut: serifRoundness
				1:
					x: parentAnchors[0].x - serifHeight * serifCurve
					y: parentAnchors[0].y
					dirOut: Utils.lineAngle( contours[0].nodes[1].point, anchors[4].point )
					tensionOut: serifRoundness
					tensionIn: serifRoundness
				2:
					x: contours[0].nodes[1].x - serifWidth
					y: parentAnchors[0].y * serifMedian
					dirOut: 0 + 'deg'
					dirOut: Utils.lineAngle( contours[0].nodes[1].point, anchors[4].point )
					tensionOut: serifTerminalCurve
				3:
					x: contours[0].nodes[2].x - ( contours[0].nodes[2].x - anchors[3].x ) / 2 - serifWidth * serifTerminal
					y: anchors[3].y - ( anchors[3].y - contours[0].nodes[2].y ) / 2
					type: 'smooth'
					dirOut: Utils.lineAngle( contours[0].nodes[2].point, anchors[3].point )
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				4:
					x: anchors[3].x
					y: anchors[3].y
					dirOut: 0 + 'deg'
					tensionIn: serifTerminalCurve
				5:
					x: parentAnchors[0].x + ( parentAnchors[1].x - parentAnchors[0].x ) / 2
					y: parentAnchors[0].y - serifHeight + serifHeight * serifArc
					dirOut: 90 + 'deg'
				6:
					x: contours[0].nodes[5].x + ( contours[0].nodes[5].x - contours[0].nodes[4].x )
					y: parentAnchors[1].y - serifHeight
					dirOut: 0 + 'deg'
					tensionOut: serifTerminalCurve
				7:
					x: contours[0].nodes[6].x - ( contours[0].nodes[6].x - ( anchors[2].x + serifWidth ) ) / 2 + serifWidth * serifTerminal
					y: contours[0].nodes[3].y
					type: 'smooth'
					dirIn: Utils.lineAngle( contours[0].nodes[6].point, anchors[5].point )
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
				8:
					x: anchors[5].x
					y: anchors[5].y
					dirOut: 0 + 'deg'
					dirOut: Utils.lineAngle( anchors[2].point, contours[0].nodes[8].point )
					type: 'smooth'
					tensionIn: serifTerminalCurve
				9:
					x: anchors[2].x
					y: parentAnchors[1].y
					dirOut: 0 + 'deg'
					dirOut: Utils.lineAngle( contours[0].nodes[8].point, contours[0].nodes[9].point )
					tensionOut: serifRoundness
					tensionIn: serifRoundness
				10:
					x: parentAnchors[1].x
					y: parentAnchors[1].y + serifHeight * serifCurve
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionIn: serifRoundness

#  ajuster pour cap…
# exports.glyphs['serif_Bottom'] =
# 	anchors:
# 		0:
# 			x: parentAnchors[0].x
# 			y: parentAnchors[0].y
# 		1:
# 			x: parentAnchors[1].x
# 			y: parentAnchors[1].y
# 		2:
# 			x: parentAnchors[1].x + serifHeight * serifCurve
# 			y: parentAnchors[1].y
# 		3:
# 			## FIXME: si pas de serifTerminal > midWidth ne fonctionne pas
# 			x: parentAnchors[0].x - serifHeight * serifCurve - serifWidth - serifWidth * midWidth
# 			x: contours[0].nodes[1].x - serifWidth
# 			y: parentAnchors[0].y - serifHeight
# 		4:
# 			x: parentAnchors[0].x - serifHeight * serifCurve - serifWidth
# 			y: parentAnchors[0].y * serifMedian
# 		5:
# 			x: anchors[2].x + serifWidth
# 			y: parentAnchors[1].y * serifMedian
# 	contours:
# 		0:
# 			closed: false
# 			nodes:
# 				0:
# 					x: parentAnchors[0].x
# 					y: parentAnchors[0].y + ( 20 / serifHeight ) * 80 * serifCurve
# 					dirOut: 90 + 'deg'
# 					tensionOut: serifRoundness
# 				1:
# 					x: parentAnchors[0].x - ( 20 / serifHeight ) * 7 * serifHeight * serifCurve
# 					y: parentAnchors[0].y
# 					dirOut: Utils.lineAngle( contours[0].nodes[1].point, anchors[4].point )
# 					tensionOut: serifRoundness
# 					tensionIn: serifRoundness
# 				2:
# 					x: contours[0].nodes[1].x - serifWidth
# 					y: parentAnchors[0].y * serifMedian
# 					dirOut: 0 + 'deg'
# 					dirOut: Utils.lineAngle( contours[0].nodes[1].point, anchors[4].point )
# 					tensionOut: serifTerminalCurve
# 				3:
# 					x: contours[0].nodes[2].x - serifWidth * serifTerminal
# 					y: anchors[3].y - ( anchors[3].y - contours[0].nodes[2].y ) / 2
# 					type: 'smooth'
# 					dirOut: Utils.lineAngle( contours[0].nodes[2].point, anchors[3].point )
# 					tensionOut: serifTerminalCurve
# 					tensionIn: serifTerminalCurve
# 				4:
# 					x: contours[0].nodes[2].x - serifWidth * midWidth
# 					y: anchors[3].y
# 					dirOut: 0 + 'deg'
# 					tensionIn: serifTerminalCurve
# 				5:
# 					x: parentAnchors[0].x + ( parentAnchors[1].x - parentAnchors[0].x ) / 2
# 					y: parentAnchors[0].y - serifHeight + serifHeight * serifArc
# 					dirOut: 90 + 'deg'
# 				6:
# 					x: contours[0].nodes[5].x + ( contours[0].nodes[5].x - contours[0].nodes[4].x )
# 					y: parentAnchors[1].y - serifHeight
# 					dirOut: 0 + 'deg'
# 					tensionOut: serifTerminalCurve
# 				7:
# 					x: contours[0].nodes[6].x - ( contours[0].nodes[6].x - ( anchors[2].x + serifWidth ) ) / 2 + serifWidth * serifTerminal
# 					y: contours[0].nodes[3].y
# 					type: 'smooth'
# 					dirIn: Utils.lineAngle( contours[0].nodes[6].point, anchors[5].point )
# 					tensionOut: serifTerminalCurve
# 					tensionIn: serifTerminalCurve
# 				8:
# 					x: anchors[5].x
# 					y: anchors[5].y
# 					dirOut: 0 + 'deg'
# 					dirOut: Utils.lineAngle( anchors[2].point, contours[0].nodes[8].point )
# 					type: 'smooth'
# 					tensionIn: serifTerminalCurve
# 				9:
# 					x: anchors[2].x
# 					y: parentAnchors[1].y
# 					dirOut: 0 + 'deg'
# 					dirOut: Utils.lineAngle( contours[0].nodes[8].point, contours[0].nodes[9].point )
# 					tensionOut: serifRoundness
# 					tensionIn: serifRoundness
# 				10:
# 					x: parentAnchors[1].x
# 					y: parentAnchors[1].y + serifHeight * serifCurve
# 					dirOut: - 90 + 'deg'
# 					type: 'smooth'
# 					tensionIn: serifRoundness
