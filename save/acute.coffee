exports.glyphs['acute'] =
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: parentAnchors[0].x
					y: parentAnchors[0].y
					width: thickness * .3 + thickness * .45 * contrast
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: parentAnchors[0].x + width * 120
					y: parentAnchors[0].y + 100
					width: thickness + Math.min( thickness, 40 )
					lDir: 90 + 'deg'
					distr: 0
