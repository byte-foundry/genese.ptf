exports.glyphs['zero'] =
	unicode: '0'
	ot:
		advanceWidth: width * 545 + thickness * 2 - ( 85 * 2 )
	anchors:
		0:
			x: ( 495 + (37) ) * width
			y: xHeight * ( 250 / 500 )
	tags: [
		'all',
		'latin',
		'figures'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: 25 + (12)
					y: anchors[0].y
					dirOut: 90 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: thickness * ( 50 / 85 )
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x + ( contours[0].nodes[2].expandedTo[1].x - contours[0].nodes[0].expandedTo[1].x ) / 2
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: thickness * ( 45 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: - 90 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: thickness * ( 50 / 85 )
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					tensionOut: 0.9
					expand: Object({
						width: thickness * ( 45 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
