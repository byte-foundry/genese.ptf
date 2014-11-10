exports.glyphs['p_cap'] =
	unicode: 'P'
	advanceWidth: width * 500 + thickness
	anchors:
		0:
			x: width * 400 + thickness - 80
			y: capHeight * 250/688
	contours:
		0:
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
