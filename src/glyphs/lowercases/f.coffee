exports.glyphs['f'] =
	unicode: 'f'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x
	anchors:
		0:
			x: 115 + ( 21 )
			y: xHeight
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: 0 + serifHeight + serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				2:
					x: 395
					y: capHeight + overshoot / 2
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 67 / 85 )
						angle: - 153 + 'deg'
						distr: 0
					})
		1:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
					dirOut: 0 + 'deg'
				1:
					x: contours[0].nodes[2].expandedTo[0].x + 150
					y: capHeight - 70
					dirOut: 90 + 'deg'
					dirIn: 90 + 'deg'
					# type: 'smooth'
				2:
					x: 500
					y: capHeight - 115
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					# type: 'smooth'
				3:
					x: 430
					y: capHeight - 65
					dirOut: 135 + 'deg'
					dirIn: 135 + 'deg'
					# type: 'smooth'
				4:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
					dirIn: 0 + 'deg'
					# type: 'smooth'
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 30
					y: contours[2].nodes[1].expandedTo[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 10 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 45 / 85 )
						angle: 90 + 'deg'
						distr: 1
					})
				2:
					x: contours[0].nodes[2].expandedTo[0].x - thickness * ( 5 / 85 )
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 45 / 85 )
						angle: 90 + 'deg'
						distr: 1
					})
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
					leftWidth: 1
					rightWidth: 1
