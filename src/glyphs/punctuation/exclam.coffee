exports.glyphs['exclam'] =
	unicode: '!'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	tags: [
		'all',
		'latin',
		'punctuation'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 125
					y: capHeight + overshoot / 2
					dirOut: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: thickness * ( 30 / 85 )
						angle: 0 + 'deg'
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - 70
					# dirIn: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[2].expandedTo[0].point )
					# dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 110 / 85 )
						angle: 0 + 'deg'
					})
				2:
					x: contours[0].nodes[0].x
					y: ( 230 / 500 ) * xHeight
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 10 / 85 )
						angle: 0 + 'deg'
					})
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: 125
					y: -5
