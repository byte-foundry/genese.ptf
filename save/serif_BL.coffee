exports.glyphs['serif_BL'] =
	contours:
		0:
			type: 'closed'
			nodes:
				0:
					x: parentAnchors[0].x 
					y: parentAnchors[0].y
					lType: 'line'
				1:
					x: parentAnchors[0].x - serifWidth
					y: parentAnchors[0].y * serifMedian
					lType: 'line'
				2:
					x: parentAnchors[1].x - serifWidth
					y: parentAnchors[1].y
					lType: 'line'
				3:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
					lType: 'line'
