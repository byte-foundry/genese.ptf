exports.glyphs['e_cap'] =
	unicode: 'E'
	advanceWidth: width * 500 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 450 + thickness - 80
			y: 0
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: 0
					width: thickness * .5 * opticThickness + thickness * contrast * .35
					lDir: 0 + 'deg'
					distr: 1
					lType: 'line'
				1:
					x: 0
					y: 0
					width: thickness * contrast * .85 * opticThickness
					lDir: 0 + 'deg'
					distr: 1
					lType: 'line'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: 0
					y: capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x * 3/4
					y: capHeight * 1/2 * crossbar
					width: thickness * .5 * opticThickness + thickness * contrast * .35
					lDir: 0 + 'deg'
					lType: 'line'
				1:
					x: 0
					y: contours[2].nodes[0].y
					width: thickness * contrast * .85 * opticThickness
					lDir: 0 + 'deg'
					lType: 'line'
		3:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: capHeight
					width: thickness * .5 * opticThickness + thickness * contrast * .35
					lDir: 0 + 'deg'
					distr: 0
					lType: 'line'
				1:
					x: 0
					y: capHeight
					width: thickness * contrast * .85 * opticThickness
					lDir: 0 + 'deg'
					distr: 0
					lType: 'line'
	components:
		0:
			base: 'serif_TopLeft'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[1].expanded[0].nodes[0], contours[1].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					x: contours[1].nodes[0].x + thickness * opticThickness * contrast				
		1:
			base: 'serif_BottomLeft'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[1].expanded[0].nodes[0], contours[1].expanded[0].nodes[1] ]
				1:
					y: serifHeight
					x: contours[1].nodes[0].x + thickness * opticThickness * contrast				
			