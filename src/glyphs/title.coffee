exports.glyphs['title'] =
	anchors:
		0:
			x: parentAnchors[0].x + serifWidth
			y: parentAnchors[0].y * serifMedian
	contours:
		0:
			type: 'closed'
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y 
					# lType: 'line'
					lDir: 0 + 'deg'
					# rTension: 0
				1:
					x: parentAnchors[0].x + thickness * ( 100 / 86 ) / 2
					y: parentAnchors[0].y - thickness * ( 100 / 86 ) / 2
					# lType: 'line'
					lDir: 90 + 'deg'
					# rTension: 0
				2:
					x: parentAnchors[0].x 
					y: parentAnchors[0].y - thickness * ( 100 / 86 )
					# lType: 'line'
					lDir: 0 + 'deg'
					# rTension: 0
				3:
					x: parentAnchors[0].x - thickness * ( 100 / 86 ) / 2
					y: parentAnchors[0].y - thickness * ( 100 / 86 ) / 2
					# lType: 'line'
					lDir: 90 + 'deg'
					# rTension: 0
				