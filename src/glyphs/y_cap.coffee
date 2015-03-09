exports.glyphs['y_cap'] =
	unicode: 'Y'
	advanceWidth: width * 630 + ( thickness * 2 ) 
	anchors:
		0:
			x: ( width * 650 + thickness - 80 )
			y: capHeight
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: capHeight
					width: thickness * opticThickness * 1.15
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: anchors[0].x / 2 
					y: capHeight * (300/698)
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				2:
					x: anchors[0].x / 2 
					y: 0
					width: thickness * opticThickness
					lDir: 90 + 'deg'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x / 2 + thickness * opticThickness / 2
					y: contours[0].nodes[1].y
					width: thickness * opticThickness * contrast
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 1
				1:
					x: anchors[0].x
					y: capHeight
					width: thickness * opticThickness * 1.15 * contrast
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 1
	components:
		0:
			base: 'serif_Bottom'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[1], contours[0].expanded[0].nodes[2] ]
				1:
					y: serifHeight
					x: contours[0].nodes[2].x + thickness * opticThickness / 2