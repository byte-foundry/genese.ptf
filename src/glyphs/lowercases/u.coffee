exports.glyphs['u'] =
	unicode: 'u'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[1].x + serifWidth + 20 * spacing + (50)
	anchors:
		0:
			x: 0
			y: 0
	tags: [
		'all',
		'latin',
		'lowercase'
	]
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
					y: xHeight * ( 30 / 500 ) * width + 130
					dirOut: 90 + 'deg'
					# type: 'smooth'
					expand: Object({
						width: thickness
						distr: 0
					})
				2:
					x: 231
					x: contours[0].nodes[1].x + ( contours[0].nodes[3].x - contours[0].nodes[1].x ) * 0.4
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 72 / 86 )
						angle: 56 + 'deg'
						distr: 0
					})
				3:
					x: 411 * width
					y: xHeight * ( ( 130 + 10 ) / 500 )
					y: xHeight * ( 30 / 500 ) + 110
					dirIn: Math.max( - 110 , Math.min( - 95 , - ( 120 / 500 ) * xHeight ) ) + 'deg'
					# dirIn: - 115 - ( 5 / 500 ) * xHeight + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 15 / 86 ) + ( ( 10 / 500 ) * xHeight / 85 ) * thickness
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
					y:70 + serifHeight
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
					leftWidth: 1.2
					directionY: -1
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
					leftWidth: 1.2
					directionY: -1
		2:
			base: 'attaque'
			parentAnchors:
				0:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].y
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].y
				2:
					anchorLine: 0
					rightWidth: 1.4
					directionY: - 1
					directionX: - 1
