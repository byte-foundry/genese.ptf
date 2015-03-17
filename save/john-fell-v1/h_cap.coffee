exports.glyphs['H_cap'] =
	unicode: 'H'
	advanceWidth: width * 720 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: 580
			y: capHeight * ( 383 / 750 )
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 145
					y: 0
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[0].x + thickness * opticThickness - thickness * ( 15 / 86 )
					y: anchors[0].y
					width: thickness * ( 26 / 86 )
					lDir: 0 + 'deg'
					lType: 'line'
				1:
					x: anchors[0].x + thickness * ( 15 / 86 )
					y: anchors[0].y
					width: thickness * ( 26 / 86 )
					lDir: 0 + 'deg'
					lType: 'line'
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 580
					y: 0
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[2].nodes[0].x
					y: capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
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
			base: 'serif_Bottom'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[2].expanded[0].nodes[0], contours[2].expanded[0].nodes[1] ]
				1:
					y: serifHeight
					onLine: [ contours[2].expanded[0].nodes[2], contours[2].expanded[0].nodes[3] ]
		