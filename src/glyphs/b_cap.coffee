exports.glyphs['b_cap'] =
	unicode: 'B'
	advanceWidth: width * 650
	anchors:
		0:
			x: width * 450
			y: capHeight * 3/4
		1:
			x: width * 280
			y: capHeight * 370/688 * crossbar
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness * opticThickness
					lDir: '90deg'
					lType: 'line'
				1:
					x: 0
					y: capHeight
					width: thickness * opticThickness
					lDir: '90deg'
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
					x: anchors[1].x
					y: capHeight
					width: thickness * opticThickness * contrast
					lDir: '0deg'
					angle: '-85deg'
					distr: 0
				2:
					x: anchors[0].x
					y: anchors[1].y + ( capHeight - anchors[1].y ) / 2 - thickness * contrast / 2
					width: thickness * opticThickness
					lDir: '-90deg'
				3:
					x: contours[1].nodes[1].x
					y: anchors[1].y
					width: thickness * opticThickness * contrast
					lDir: '180deg'
					lType: 'line'
					angle: '80deg'
				4:
					x: 1
					y: contours[1].nodes[3].y
					width: thickness * opticThickness * contrast
					lDir: '180deg'
					angle: '80deg'
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[1].x
					y: contours[1].nodes[4].y
					width: thickness * opticThickness * contrast
					lDir: '0deg'
					angle: 180 + 80 + 'deg'
				1:
					x: anchors[0].x + 40 * width
					y: contours[2].nodes[0].y / 2
					width: thickness * opticThickness
					lDir: '-90deg'
				2:
					x: contours[1].nodes[1].x
					y: 0
					width: thickness * opticThickness * contrast
					lDir: '180deg'
					distr: 0
					lType: 'line'
				3:
					x: 1
					y: 0
					width: thickness * opticThickness * contrast
					lDir: '180deg'
					distr: 0

