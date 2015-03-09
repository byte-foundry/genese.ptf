exports.glyphs['p_cap'] =
	unicode: 'P'
	advanceWidth: width * 570 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 465 + thickness - 80
			y: capHeight * 280/688
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: serifHeight * serifCurve
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: 0
					y: capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 1
					y: capHeight
					width: thickness * opticThickness * contrast
					lDir: '90deg'
					angle: '-85deg'
					distr: 0
					lType: 'line'
				1:
					x: anchors[0].x / 2
					y: capHeight
					width: thickness * opticThickness * contrast
					lDir: '0deg'
					angle: '-85deg'
					distr: 0
				2:
					x: anchors[0].x
					y: anchors[0].y + ( capHeight - anchors[0].y ) / 2
					width: thickness * opticThickness
					lDir: '-90deg'
				3:
					x: anchors[0].x / 2
					y: anchors[0].y
					width: thickness * opticThickness * contrast
					lDir: '180deg'
					distr: 0
					lType: 'line'
				4:
					x: 1
					y: anchors[0].y
					width: thickness * opticThickness * contrast
					lDir: '-180deg'
					distr: 0
	components:
		0:
			base: 'serif_Bottom'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]
		1:
			base: 'serif_TopLeft'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					x: contours[0].nodes[0].x + thickness * opticThickness / 2

