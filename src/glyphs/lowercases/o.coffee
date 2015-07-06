exports.glyphs['o'] =
	unicode: 'o'
	ot:
		advanceWidth: contours[0].nodes[2].expandedTo[0].x + 40 * spacing
	anchors:
		0:
			x: ( 450 + ( 66 ) ) * width
			y: xHeight * ( 250 / 500 )
		1:
			x: ( 290 - 33 ) * width + 33
			y: xHeight + overshoot
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: 45 + ( 19 )
					y: anchors[0].y
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 95 / 86 )
						distr: 0.25
					})
				1:
					x: anchors[1].x
					y: anchors[1].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 26 / 86 ) * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				2:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 95 / 86 )
						distr: 0.25
					})
				3:
					x: contours[0].nodes[1].x
					y: - overshoot
					dirOut: 180 + 'deg'
					expand: Object({
						width: thickness * ( 26 / 86 ) * contrast
						angle: 90 + 'deg'
						distr: 0
					})
