exports.glyphs['serif'] =
	# parameters:
	# 	anchorLine: anchorLine || 0
	# 	left: if typeof left != 'undefined' then left else true
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
			anchor_0: parentAnchors[2].anchor_0 || parentAnchors[0].x
			anchor_1: parentAnchors[2].anchor_1 || parentAnchors[1].x
			baseRight: if typeof parentAnchors[2].baseRight != 'undefined' then parentAnchors[2].baseRight else { x: parentAnchors[0].x, y: anchors[2].anchorLine }
			baseLeft: if typeof parentAnchors[2].baseLeft != 'undefined' then parentAnchors[2].baseLeft else { x: parentAnchors[1].x, y: anchors[2].anchorLine }
			# baseRight: parentAnchors[2].baseRight
			# baseLeft: parentAnchors[2].baseLeft
			max0: parentAnchors[2].max0 || anchors[0].point
			max1: parentAnchors[2].max1 || anchors[1].point
			left: if typeof parentAnchors[2].left != 'undefined' then parentAnchors[2].left else true
			right: if typeof parentAnchors[2].right != 'undefined' then parentAnchors[2].right else true
			attaque: if typeof parentAnchors[2].attaque != 'undefined' then parentAnchors[2].attaque else false
			vertical: if typeof parentAnchors[2].vertical != 'undefined' then parentAnchors[2].vertical else false
	contours:
		0:
			closed: true
			nodes:
				0:
					x: Math.max( anchors[0].x, anchors[2].max0.x )
					y: Math.max( anchors[0].y, anchors[2].max0.y )
					# dirOut:
						# if anchors[2].vertical == true
						# then 10 + 'deg'
						# else anchors[2].angle
					dirOut: anchors[2].angle
					tensionOut: 1.4 * serifRoundness * anchors[2].rightCurve
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'scale', 1, -1 ]
					# 			[ 'translate', contours[0].nodes[0].x, contours[0].nodes[0].y ]
					# 			[ 'rotate', '90deg' ]
					# 			[ 'translate', - contours[0].nodes[0].x, - contours[0].nodes[0].y ]
					# 			[ 'scale', 1, -1 ]
					# 		)
				1:
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else
							if parentAnchors[2].baseRight
							then Math.min(Utils.onLine({
								y: contours[0].nodes[1].y
								on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
							}) + (serifCurve + serifHeight + anchors[2].rightWidth * anchors[2].rightCurve) * 2,
							contours[0].nodes[2].x + 10 / (serifCurve+serifHeight + anchors[2].rightWidth * anchors[2].rightCurve) * - (contours[0].nodes[2].x - Utils.onLine({
								y: contours[0].nodes[1].y
								on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
							})))
							else Math.min( contours[0].nodes[2].x - serifWidth / 10, anchors[0].x + serifHeight + serifCurve + anchors[2].rightWidth * anchors[2].rightCurve )
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else contours[0].nodes[4].y + serifHeight * anchors[2].directionY
					# type: 'smooth'
					typeOut: 'line'
					tensionIn: serifRoundness
					dirIn: Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			# [ 'translate', 0, -serifHeight - serifCurve],
					# 		)
				2:
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else
							if parentAnchors[2].baseRight
								if serifWidth < 15
									Utils.onLine({
										y: contours[0].nodes[2].y
										on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
								}) + serifWidth * (( anchors[2].baseRight.x - Utils.onLine({
										y: contours[0].nodes[2].y
										on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
									})) / 15 + 1 )
								else
									anchors[2].baseRight.x + serifWidth + anchors[2].rightWidth
							else anchors[2].anchor_0 + serifWidth + anchors[2].rightWidth
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else contours[0].nodes[4].y + ( serifHeight * serifMedian ) * anchors[2].directionY
					tensionOut: serifTerminalCurve
					type: 'smooth'
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			# [ 'translate', 0, -serifHeight - serifCurve],
					# 		)
				3:
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else contours[0].nodes[2].x + ( contours[0].nodes[4].x - contours[0].nodes[2].x ) / 2 + serifTerminal * serifWidth
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else contours[0].nodes[4].y + (( serifHeight * serifMedian ) / 2 ) * anchors[2].directionY
					dirOut: Utils.lineAngle( contours[0].nodes[2].point ,contours[0].nodes[4].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			# [ 'translate', 0, -serifHeight - serifCurve],
					# 		)
				4:
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else
							if parentAnchors[2].baseRight
							then Math.max(
								anchors[2].baseRight.x + serifWidth * midWidth + anchors[2].rightWidth,
								Utils.onLine({
									y: contours[0].nodes[2].y
									on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
							}) + serifWidth * midWidth + anchors[2].rightWidth )
							else contours[0].nodes[0].x + ( contours[0].nodes[2].x - contours[0].nodes[0].x ) * midWidth
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else
							if anchors[2].attaque == true
							then anchors[2].anchorLine + ( spurHeight * 50 - 50 ) * anchors[2].directionY
							else anchors[2].anchorLine
					dirIn: 0 + 'deg'
					type: 'smooth'
					tensionIn: serifTerminalCurve
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			# [ 'translate', 0, 106-serifHeight - serifCurve * anchors[2].rightCurve],
					# 		)
				5:
					x:
						if anchors[2].attaque == true
						then anchors[1].x + ( 10 / 85 ) * thickness
						else contours[0].nodes[4].x - ( contours[0].nodes[4].x - contours[0].nodes[6].x ) / 2
					y: anchors[2].anchorLine + ( serifHeight * serifArc ) * anchors[2].directionY
					dirIn: 0 + 'deg'
					dirOut: 180 + 'deg'
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			# [ 'translate', 0, 106-serifHeight - serifCurve * anchors[2].rightCurve],
					# 		)
				6:
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else
							if parentAnchors[2].baseLeft
							then anchors[2].baseLeft.x - serifWidth * midWidth - anchors[2].leftWidth
							else contours[0].nodes[10].x - ( contours[0].nodes[10].x - contours[0].nodes[8].x ) * midWidth
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else anchors[2].anchorLine
					tensionOut: serifTerminalCurve
					type: 'smooth'
					dirIn: 0 + 'deg'
					dirOut: 180 + 'deg'
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			# [ 'translate', 0, 106- serifHeight - serifCurve * anchors[2].leftCurve],
					# 		)
				7:
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else contours[0].nodes[8].x - ( contours[0].nodes[8].x - contours[0].nodes[6].x ) / 2 - serifTerminal * serifWidth
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else anchors[2].anchorLine + (( serifHeight * serifMedian ) / 2 ) * anchors[2].directionY
					dirOut: Utils.lineAngle( contours[0].nodes[6].point ,contours[0].nodes[8].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			# [ 'translate', 0, - serifHeight - serifCurve],
					# 		)
				8:
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else
							if parentAnchors[2].baseLeft
							then  Math.min(
								anchors[2].baseLeft.x - serifWidth - anchors[2].leftWidth,
								Utils.onLine({
									y: contours[0].nodes[2].y
									on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
							})
						) else anchors[2].anchor_1 - serifWidth - anchors[2].leftWidth
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else anchors[2].anchorLine + ( serifHeight * serifMedian ) * anchors[2].directionY
					type: 'smooth'
					tensionIn: serifTerminalCurve
					typeOut: 'line'
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			# [ 'translate', 0, -serifHeight - serifCurve],
					# 		)
				9:
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else
							if parentAnchors[2].baseLeft
							then Math.max(Utils.onLine({
								y: contours[0].nodes[9].y
								on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
							}) - (serifCurve + serifHeight + anchors[2].leftWidth * anchors[2].leftCurve),
							contours[0].nodes[8].x + 10 / (serifCurve+serifHeight + anchors[2].leftWidth * anchors[2].leftCurve) * -(contours[0].nodes[8].x - Utils.onLine({
								y: contours[0].nodes[9].y
								on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
							}))) else Math.max( contours[0].nodes[8].x + serifWidth / 10, anchors[1].x - serifHeight - serifCurve - anchors[2].leftWidth * anchors[2].leftCurve )
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else anchors[2].anchorLine + serifHeight * anchors[2].directionY
					tensionOut: serifRoundness
					type: 'smooth'
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].y + anchors[1].y) / 2 ],
					# 			# [ 'translate', 0, -serifHeight - serifCurve],
					# 		)
				10:
					x: Math.max( anchors[1].x, anchors[2].max1.x )
					y: Math.max( anchors[1].y, anchors[2].max1.y )
					# dirIn:
					# 	if anchors[2].vertical == true
					# 	then 10 + 'deg'
					# 	else anchors[2].angle
					dirIn: anchors[2].angle
					typeOut: 'line'
					tensionIn: 1.4 * serifRoundness * anchors[2].leftCurve
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'scale', 1, -1 ]
					# 			[ 'translate', contours[0].nodes[10].x, contours[0].nodes[10].y ]
					# 			[ 'rotate', '90deg' ]
					# 			[ 'translate', - contours[0].nodes[10].x, - contours[0].nodes[10].y ]
					# 			[ 'scale', 1, -1 ]
					# 		)
