exports.glyphs['U_cap'] =
	unicode: 'U'
	ot:
		advanceWidth: contours[1].nodes[0].expandedTo[0].x + serifWidth + 30 * spacing
	anchors:
		0:
			x: 550 + 0
			y: ( ( 180 + (0) ) / 750 ) * capHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 140 + (25)
					y: capHeight
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
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
					})
				1:
					x: contours[1].nodes[0].x
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.25
					})
