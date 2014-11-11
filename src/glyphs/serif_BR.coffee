exports.glyphs['serif_BR'] =
	contours:
		0:
			type: 'closed'
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
					lType: if serifCurve == 0 then 'line' else ''
				1:
					x: parentAnchors[0].x + serifWidth
					y: parentAnchors[0].y * serifMedian
					lType: if serifCurve == 0 then 'line' else ''
				2:
					x: parentAnchors[1].x + serifWidth
					y: parentAnchors[1].y
					lType: if serifCurve == 0 then 'line' else ''
				3:
					x: parentAnchors[1].x
					y: parentAnchors[1].y
					lType: if serifCurve == 0 then 'line' else ''
