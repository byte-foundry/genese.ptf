exports.glyphs['ball_BL'] =
	contours:
		0:
			type: 'closed'
			nodes:
				0:
					x: parentAnchors[0].x + terminalBall * thickness / 2
					y: parentAnchors[0].y + terminalBall * thickness / 2 
					# lDir: 0 + 'deg'
					lType: 'line'
				1:
					x: parentAnchors[0].x
					y: parentAnchors[0].y + terminalBall * thickness
					# lDir: 90 + 'deg'
					lType: 'line'
				2:
					x: parentAnchors[1].x - terminalBall * thickness / 2
					y: parentAnchors[1].y + terminalBall * thickness / 2
					# lDir: 0 + 'deg'
					lType: 'line'
				3:
					x: parentAnchors[1].x 
					y: parentAnchors[1].y
					# lDir: 90 + 'deg'
					lType: 'line'
