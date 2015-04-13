exports.glyphs['u'] =
	unicode: 'u'
	ot:
		advanceWidth: width * 500 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 90
					y: xHeight - serifHeight - serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight * ( 160 / 500 )
					dirOut: 90 + 'deg'
					# type: 'smooth'
					expand: Object({
						width: thickness
						distr: 0
					})
				2:
					x: 231
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 72 / 86 )
						angle: 56 + 'deg'
						distr: 0
					})
				3:
					x: 411
					y: xHeight * ( ( 130 + 10 ) / 500 )
					dirIn: - 120 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 86 )
						angle: 90 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[3].x - 6
					y: xHeight - serifHeight - serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0
					})
				1:
					x: contours[1].nodes[0].x
					y: 0
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness
						distr: 0
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
					anchorLine: xHeight
					leftWidth: 1
					direction: -1
		1:
			base: 'serif_left'
			parentAnchors:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
				1:
					x: contours[1].nodes[0].expandedTo[0].x
					y: contours[1].nodes[0].expandedTo[0].y
				2:
					anchorLine: xHeight
					leftWidth: 1
					direction: -1
