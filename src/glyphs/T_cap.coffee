exports.glyphs['T_cap'] =
	unicode: 'T'
	ot:
		advanceWidth: contours[2].nodes[4].x - 45 * spacing
	anchors:
		0:
			x: 580
			y: capHeight * ( 383 / 750 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 285 + (42)
					y: 0 + serifHeight + serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[1].nodes[0].x - 145
					y: contours[1].nodes[0].y
				2:
					x: contours[1].nodes[1].x - 105
					y: contours[1].nodes[1].y + 45
					typeOut: 'line'
					dirIn: - 66 + 'deg'
				3:
					x: contours[1].nodes[2].x - 10
					y: contours[1].nodes[2].y
					typeOut: 'line'
				4:
					x: contours[1].nodes[3].x - 70
					y: contours[1].nodes[3].y - 165
					typeOut: 'line'
				5:
					x: contours[1].nodes[4].x + 15
					y: contours[1].nodes[4].y - 10
					dirOut: 69 + 'deg'
				6:
					x: contours[1].nodes[1].x + 5
					y: contours[1].nodes[1].y - thickness * ( 25/85 )
					typeOut: 'line'
				7:
					x: contours[1].nodes[0].x - 85
					y: contours[1].nodes[6].y
					tensionOut: 1.5
				8:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[1].nodes[6].y - 50
					# tensionIn: 0
					dirIn: 90 + 'deg'
					typeOut: 'line'
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					typeOut: 'line'
				1:
					x: contours[2].nodes[0].x + 145
					y: contours[1].nodes[1].y
				2:
					x: contours[2].nodes[1].x + 105
					y: contours[1].nodes[2].y
					typeOut: 'line'
					dirIn: 66 + 'deg'
				3:
					x: contours[2].nodes[2].x + 10
					y: contours[1].nodes[3].y
					typeOut: 'line'
				4:
					x: contours[2].nodes[3].x + 70
					y: contours[1].nodes[4].y
					typeOut: 'line'
				5:
					x: contours[2].nodes[4].x - 15
					y: contours[1].nodes[5].y
					dirOut: - 69 + 'deg'
				6:
					x: contours[2].nodes[1].x - 5
					y: contours[1].nodes[6].y
					typeOut: 'line'
				7:
					x: contours[2].nodes[0].x + 85
					y: contours[1].nodes[7].y
					tensionOut: 1.5
				8:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[1].nodes[8].y
					# tensionIn: 0
					dirIn: 90 + 'deg'
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
					anchorLine: 0
					leftWidth: 1.6
					rightWidth: 1.6
