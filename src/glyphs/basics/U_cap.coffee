exports.glyphs['U_cap'] =
	unicode: 'U'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + serifWidth + 30 * spacing + (50)
	anchors:
		0:
			x: 550 + 0
			y: ( ( 190 + (0) ) / 750 ) * capHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 140 + (25)
					y: capHeight - serifHeight - serifCurve * ( 65 / 15 )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ( 225 / 750 ) * capHeight
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[1].nodes[0].expandedTo[0].x - contours[0].nodes[0].expandedTo[1].x ) * ( 80 / 310 )
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 83 / 85 ) * opticThickness
						angle: 57 + 'deg'
						distr: 0
					})
				3:
					x: contours[1].nodes[0].expandedTo[0].x
					y: anchors[0].y
					type: 'smooth'
					dirIn: - 108 + 'deg'
					expand: Object({
						width: thickness * ( 45 / 85 ) * opticThickness
						angle: 90 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 550 + (25)
					y: 90 + serifHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].x
					y: capHeight - serifHeight - serifCurve * ( 65 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
					})
	components:
		0:
			base: 'serif_left'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
				2:
					anchorLine: capHeight
					leftWidth: 40
					directionY: -1
		1:
			base: 'serif_left'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
				2:
					anchorLine: capHeight
					leftWidth: 40
					directionY: -1
		2:
			base: 'attaque'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].y
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].y
				2:
					anchorLine: 0
					rightWidth: 1.6
					directionY: - 1
					directionX: - 1
