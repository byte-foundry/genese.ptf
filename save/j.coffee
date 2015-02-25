exports.glyphs['j'] =
	unicode: 'j'
	advanceWidth: width * 150 + thickness
	anchors:
		0:
			x: 40
			y: xHeight - Math.max( thickness * contrast + 20 , 150 * aperture )
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: xHeight
					width: thickness
					lDir: '90deg'
					lType: 'line'
				1:
					x: anchors[0].x
					y: 0
					width: thickness
					lDir: '90deg'
				2:
					x: contours[0].nodes[0].x
					y: 0
					width: thickness
					lDir: 90 + 'deg'
				3:
					x: anchors[0].x - 130 # adjust left side
					y: descender - overshoot
					width: thickness * contrast * .8
					lDir: 0 + 'deg'
					angle: 180 + 90  + 'deg'
					distr: 1
				4:
					x: anchors[0].x - 260 # adjust left side
					y: descender + 50 * aperture
					width: thickness * contrast * .7 + thickness * .1
					lDir: - 50 * aperture + 'deg'
					distr: 1
					angle: 180 + 50 + 'deg'
		1:
			type: 'closed'
			nodes:
				0:
					x: anchors[0].x
					y: capHeight
					lDir: 0 + 'deg'
				1:
					x: anchors[0].x + thickness / 2 * 1.1
					y: capHeight - thickness / 2 * 1.1
					lDir: -90 + 'deg'
				2:
					x: anchors[0].x
					y: capHeight - thickness * 1.1
					lDir: 180 + 'deg'
				3:
					x: anchors[0].x - thickness / 2 * 1.1
					y: capHeight - thickness / 2 * 1.1
					lDir: 90 + 'deg'