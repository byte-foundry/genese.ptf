exports.glyphs['title'] =
	anchors:
		0:
			x: parentAnchors[0].x + serifWidth
			y: parentAnchors[0].y * serifMedian
	contours:
		0:
			closed: true
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
					# lType: 'line'
					dirOut: 0 + 'deg'
					# rTension: 0
					type: 'smooth'
				1:
					x: parentAnchors[0].x + thickness * ( 100 / 86 ) / 2
					y: parentAnchors[0].y - thickness * ( 100 / 86 ) / 2
					# lType: 'line'
					dirOut: 90 + 'deg'
					# rTension: 0
					type: 'smooth'
				2:
					x: parentAnchors[0].x
					y: parentAnchors[0].y - thickness * ( 100 / 86 )
					# lType: 'line'
					dirOut: 0 + 'deg'
					# rTension: 0
					type: 'smooth'
				3:
					x: parentAnchors[0].x - thickness * ( 100 / 86 ) / 2
					y: parentAnchors[0].y - thickness * ( 100 / 86 ) / 2
					# lType: 'line'
					dirOut: 90 + 'deg'
					# rTension: 0
					type: 'smooth'
