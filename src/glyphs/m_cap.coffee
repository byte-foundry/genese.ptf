exports.glyphs['m_cap'] =
	unicode: 'M'
	advanceWidth: width * 720 + thickness + serifWidth
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: serifHeight * serifCurve
					width: thickness * opticThickness * contrast
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[0].nodes[0].x
					y: capHeight 
					width: thickness * opticThickness * contrast
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 600
					y: serifHeight * serifCurve
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[1].nodes[0].x
					y: capHeight 
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[1].nodes[0].x / 2 + thickness * opticThickness / 2 * contrast
					y: 0 + Math.max( crossbar * 1000 - 1000, 0 )
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				2:
					x: contours[2].nodes[1].x + thickness * opticThickness / 2
					y: 0 + Math.max( crossbar * 1000 - 1000, 0 )
					width: thickness * opticThickness * contrast
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 0
				3:
					x: contours[1].nodes[0].x + thickness * opticThickness * contrast
					y: capHeight
					width: thickness * opticThickness * contrast
					lDir: - 90 + 'deg'
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
					onLine: [ contours[1].expanded[0].nodes[0], contours[1].expanded[0].nodes[1] ]
				1:
					y: serifHeight
					onLine: [ contours[1].expanded[0].nodes[2], contours[1].expanded[0].nodes[3] ]
		2:
			base: 'serif_TopLeft'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]
		3:
			base: 'serif_TopLeft'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]
		4:
			base: 'serif_TopRight'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[1].expanded[0].nodes[0], contours[1].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					onLine: [ contours[1].expanded[0].nodes[2], contours[1].expanded[0].nodes[3] ]