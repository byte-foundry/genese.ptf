exports.glyphs['J_cap'] =
	unicode: 'J'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + serifWidth + 40 * spacing + (120)
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 155 + (25)
					y: capHeight - serifHeight - serifCurve * ( 60 / 15 )
					typeOut: 'line'
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 0
					dirOut: 90 + 'deg'
					# typeOut: 'line'
					expand: Object({
						width: thickness * ( 134 / 85 ) * opticThickness
						angle: 180 - 138 + 'deg'
						distr: 0.25
					})
				2:
					x: 60
					y: - 180
					dirIn: 0 + 'deg'
					dirOut: 0 + 'deg'
					tensionIn: 0.7
					type: 'smooth'
					expand: Object({
						width: thickness * ( 43 / 85 ) * opticThickness
						angle: - 125 + 'deg'
						distr: 0
					})
		1:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: 180 + 'deg'
					type: 'smooth'
				1:
					x: contours[1].nodes[0].x - 75
					y: contours[1].nodes[0].y + 80
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[1].nodes[1].x - 45
					y: contours[1].nodes[1].y - 45
					dirOut: - 90 + 'deg'
					type: 'smooth'
				3:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					typeOut: 'line'
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: capHeight
					leftWidth: 40
					rightWidth: 40
					directionY: -1
