exports.glyphs['O_cap'] =
	unicode: 'O'
	ot:
		advanceWidth: width * 800 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: ( 665 + (100) ) * width
			y: capHeight * ( 375 / 750 )
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: 35 + 32
					y: anchors[0].y
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 110 / 86 )
						distr: 0.25
					})
				1:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x ) / 2 - 5
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * contrast * ( 26 / 86 )
						angle: - 100 + 'deg'
						distr: 0
					})
				2:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 110 / 86 )
						distr: 0.25
					})
				3:
					x: ( contours[0].nodes[0].expandedTo[0].x + contours[0].nodes[2].expandedTo[0].x ) / 2 - 15
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * contrast * ( 26 / 86 )
						angle: - 101 + 180 + 'deg'
						distr: 0
					})
