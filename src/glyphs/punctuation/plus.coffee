exports.glyphs['plus'] =
	unicode: '+'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + 80 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 100
					y: xHeight * ( 220 / 500 ) + (30)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 60 / 85 )
						angle: 90 + 'deg'
					})
				1:
					x: 520 * width
					y: xHeight * ( 220 / 500 ) + (30)
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 60 / 85 )
						angle: 90 + 'deg'
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x + ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2
					y: contours[0].nodes[0].y + ( ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 66 / 85 )
						angle: 0 + 'deg'
					})
				1:
					x: contours[1].nodes[0].x
					y: contours[0].nodes[0].y - ( ( contours[0].nodes[1].x - contours[0].nodes[0].x ) / 2 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 66 / 85 )
						angle: 0 + 'deg'
					})
