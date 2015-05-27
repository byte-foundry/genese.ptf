exports.glyphs['serif_v'] =
	# parameters:
		# anchorLine: anchorLine || 0
		# left: if typeof left != 'undefined' then left else true
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
			corrWidth: parentAnchors[2].corrWidth || 1
			rightCurve: parentAnchors[2].rightCurve || 1
			leftCurve: parentAnchors[2].leftCurve || 1
			rightWidth: parentAnchors[2].rightWidth * Math.min( serifWidth / 65, 1 ) || 1
			angle: parentAnchors[2].angle || 0 + 'deg'
			directionY: parentAnchors[2].directionY || -1
			directionX: parentAnchors[2].directionX || -1
			anchor_0: parentAnchors[2].anchor_0 || parentAnchors[0].y
			anchor_1: parentAnchors[2].anchor_1 || parentAnchors[1].y
			baseRight: if typeof parentAnchors[2].baseRight != 'undefined' then parentAnchors[2].baseRight else { y: parentAnchors[0].y, x: anchors[2].anchorLine }
			baseLeft: if typeof parentAnchors[2].baseLeft != 'undefined' then parentAnchors[2].baseLeft else { y: parentAnchors[1].y, x: anchors[2].anchorLine }
			# baseRight: parentAnchors[2].baseRight
			# baseLeft: parentAnchors[2].baseLeft
			max0: parentAnchors[2].max0 || anchors[0].point
			max1: parentAnchors[2].max1 || anchors[1].point
			left: if typeof parentAnchors[2].left != 'undefined' then parentAnchors[2].left else true
			right: if typeof parentAnchors[2].right != 'undefined' then parentAnchors[2].right else true
			attaque: if typeof parentAnchors[2].attaque != 'undefined' then parentAnchors[2].attaque else false
			# vertical: if typeof parentAnchors[2].vertical != 'undefined' then parentAnchors[2].vertical else false
	contours:
		0:
			closed: true
			nodes:
				0:
					y: Math.max( anchors[0].y, anchors[2].max0.y )
					x: Math.max( anchors[0].x, anchors[2].max0.x )
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
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else
							if parentAnchors[2].baseRight
							then Math.min(Utils.onLine({
								x: contours[0].nodes[1].x
								on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
							}) + (serifCurve + serifHeight + anchors[2].rightWidth * anchors[2].rightCurve) * 2,
							contours[0].nodes[2].y + 10 / (serifCurve+serifHeight + anchors[2].rightWidth * anchors[2].rightCurve) * - (contours[0].nodes[2].y - Utils.onLine({
								x: contours[0].nodes[1].x
								on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
							})))
							else Math.min( contours[0].nodes[2].y - serifWidth * anchors[2].corrWidth / 10, anchors[0].y + serifHeight + serifCurve + anchors[2].rightWidth * anchors[2].rightCurve )
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else contours[0].nodes[4].x + serifHeight * anchors[2].directionY
					# type: 'smooth'
					typeOut: 'line'
					tensionIn: serifRoundness
					dirIn: Utils.lineAngle( contours[0].nodes[1].point, contours[0].nodes[2].point )
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			# [ 'translate', 0, -serifHeight - serifCurve],
					# 		)
				2:
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else
							if parentAnchors[2].baseRight
								if serifWidth < 15
									Utils.onLine({
										x: contours[0].nodes[2].x
										on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
								}) + serifWidth * anchors[2].corrWidth * (( anchors[2].baseRight.y + Utils.onLine({
										x: contours[0].nodes[2].x
										on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
									})) / 15 + 1 )
								else
									anchors[2].baseRight.y + serifWidth * anchors[2].corrWidth + anchors[2].rightWidth
							else anchors[2].anchor_0 + serifWidth * anchors[2].corrWidth + anchors[2].rightWidth
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else contours[0].nodes[4].x + ( serifHeight * serifMedian ) * anchors[2].directionY
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
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else contours[0].nodes[2].y + ( contours[0].nodes[4].y - contours[0].nodes[2].y ) / 2 + serifTerminal * serifWidth * anchors[2].corrWidth
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else contours[0].nodes[4].x + (( serifHeight * serifMedian ) / 2 ) * anchors[2].directionY
					dirOut: Utils.lineAngle( contours[0].nodes[2].point ,contours[0].nodes[4].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			# [ 'translate', 0, -serifHeight - serifCurve],
					# 		)
				4:
					y:
						if anchors[2].right == false
						then anchors[2].baseRight.y
						else
							if parentAnchors[2].baseRight
							then Math.max(
								anchors[2].baseRight.y + serifWidth * anchors[2].corrWidth * midWidth + anchors[2].rightWidth,
								Utils.onLine({
									x: contours[0].nodes[2].y
									on: [ anchors[2].baseRight, contours[0].nodes[0].point ]
							}) + serifWidth * anchors[2].corrWidth * midWidth + anchors[2].rightWidth )
							else contours[0].nodes[0].y + ( contours[0].nodes[2].y - contours[0].nodes[0].y ) * midWidth
					x:
						if anchors[2].right == false
						then anchors[2].baseRight.x
						else
							if anchors[2].attaque == true
							then anchors[2].anchorLine + ( spurHeight * 50 - 50 ) * anchors[2].directionY
							else anchors[2].anchorLine
					dirIn: - 90 + 'deg'
					type: 'smooth'
					tensionIn: serifTerminalCurve
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			# [ 'translate', 0, 106-serifHeight - serifCurve * anchors[2].rightCurve],
					# 		)
				5:
					y:
						if anchors[2].attaque == true
						then anchors[1].y + ( 10 / 85 ) * thickness
						else contours[0].nodes[6].y + ( contours[0].nodes[4].y - contours[0].nodes[6].y ) / 2
					x: anchors[2].anchorLine + ( serifHeight * serifArc ) * anchors[2].directionY
					dirIn: 90 + 'deg'
					dirOut: - 90 + 'deg'
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			# [ 'translate', 0, 106-serifHeight - serifCurve * anchors[2].rightCurve],
					# 		)
				6:
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else
							if parentAnchors[2].baseLeft
							then anchors[2].baseLeft.y - serifWidth * midWidth - anchors[2].leftWidth
							else contours[0].nodes[10].y - ( contours[0].nodes[10].y - contours[0].nodes[8].y ) * midWidth
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else anchors[2].anchorLine
					tensionOut: serifTerminalCurve
					type: 'smooth'
					dirIn: 90 + 'deg'
					dirOut: - 90 + 'deg'
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			# [ 'translate', 0, 106- serifHeight - serifCurve * anchors[2].leftCurve],
					# 		)
				7:
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else contours[0].nodes[8].y - ( contours[0].nodes[8].y - contours[0].nodes[6].y ) / 2 - serifTerminal * serifWidth
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else anchors[2].anchorLine + (( serifHeight * serifMedian ) / 2 ) * anchors[2].directionY
					dirOut: Utils.lineAngle( contours[0].nodes[6].point ,contours[0].nodes[8].point )
					type: 'smooth'
					tensionOut: serifTerminalCurve
					tensionIn: serifTerminalCurve
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			# [ 'translate', 0, - serifHeight - serifCurve],
					# 		)
				8:
					# y:
					# 	if anchors[2].left == false
					# 	then anchors[2].baseLeft.y
					# 	else
					# 		if parentAnchors[2].baseLeft
					# 		then  Math.min(
					# 			anchors[2].baseLeft.y - serifWidth - anchors[2].leftWidth,
					# 			Utils.onLine({
					# 				x: contours[0].nodes[2].y
					# 				on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
					# 		})
					# 	) else anchors[2].anchor_1 - serifWidth - anchors[2].leftWidth
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else
							if parentAnchors[2].baseLeft
								if serifWidth < 15
									Utils.onLine({
										x: contours[0].nodes[8].x
										on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
								}) - serifWidth * (( anchors[2].baseLeft.y - Utils.onLine({
										x: contours[0].nodes[8].x
										on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
									})) / 15 + 1 )
								else
									anchors[2].baseLeft.y - serifWidth - anchors[2].leftWidth
							else anchors[2].anchor_1 - serifWidth - anchors[2].leftWidth
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else anchors[2].anchorLine + ( serifHeight * serifMedian ) * anchors[2].directionY
					type: 'smooth'
					tensionIn: serifTerminalCurve
					typeOut: 'line'
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			# [ 'translate', 0, -serifHeight - serifCurve],
					# 		)
				9:
					y:
						if anchors[2].left == false
						then anchors[2].baseLeft.y
						else
							if parentAnchors[2].baseLeft
							then Math.max(Utils.onLine({
								x: contours[0].nodes[9].x
								on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
							}) - (serifCurve + serifHeight + anchors[2].leftWidth * anchors[2].leftCurve),
							contours[0].nodes[8].y + 10 / (serifCurve+serifHeight + anchors[2].leftWidth * anchors[2].leftCurve) * -(contours[0].nodes[8].y - Utils.onLine({
								x: contours[0].nodes[9].x
								on: [ anchors[2].baseLeft, contours[0].nodes[10].point ]
							}))) else Math.max( contours[0].nodes[8].y + serifWidth / 10, anchors[1].y - serifHeight - serifCurve - anchors[2].leftWidth * anchors[2].leftCurve )
					x:
						if anchors[2].left == false
						then anchors[2].baseLeft.x
						else anchors[2].anchorLine + serifHeight * anchors[2].directionY
					tensionOut: serifRoundness
					type: 'smooth'
					# transforms:
					# 	if anchors[2].vertical == true
					# 		Array(
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			[ 'rotate', '90deg' ],
					# 			[ 'translate', anchors[0].x, (anchors[0].x + anchors[1].x) / 2 ],
					# 			# [ 'translate', 0, -serifHeight - serifCurve],
					# 		)
				10:
					y: Math.max( anchors[1].y, anchors[2].max1.y )
					x: Math.max( anchors[1].x, anchors[2].max1.x )
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
