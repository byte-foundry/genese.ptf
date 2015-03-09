exports.glyphs['j'] =
	unicode: 'j'
	advanceWidth: 260 + thickness
	anchors:
		0:
			x: 120
			y: xHeight - Math.max( thickness * contrast + 20 , 150 * aperture )
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x
					y: xHeight - serifHeight * serifCurve + 20 - 40 * serifCurve - ( thickness + 80 ) / 4
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
	components:
		0:
			base: 'title'
			anchors:
				0:
					x: contours[0].expanded[0].nodes[1].x + thickness / 2
					y: capHeight + overshoot + thickness - 80
		1:
			base: 'term_TL'
			anchors:
				0:
					x: contours[0].nodes[0].x - thickness / 2
					y: contours[0].nodes[0].y 
				1:
					x: contours[0].nodes[0].x + thickness / 2
					y: contours[0].nodes[0].y 
				2:
					x: 0
					y: xHeight 