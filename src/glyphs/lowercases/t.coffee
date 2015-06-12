exports.glyphs['t'] =
	unicode: 't'
	ot:
		advanceWidth: width * 400 + thickness * 2 - ( 86 * 2 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 370 * width + thickness - 86
					y: xHeight * ( 100 / 500 )
					dirOut: Math.min( - 140 + ( 31 / 500 ) * xHeight , - 90 ) + 'deg'
					expand: Object({
						width: thickness * ( 11 / 86 )
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0
					})
				1:
					x: contours[0].nodes[0].x * ( 240 / 370 )
					y: - overshoot
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 48 / 86 )
						angle: 180 + 57 + 'deg'
						distr: 1
					})
				2:
					x: 100 * width
					y: xHeight * ( 160 / 500 )
					y: 160
					dirOut: - 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					tensionIn: 1.2
					expand: Object({
						width: thickness
						angle: 180 - 13 + 'deg'
						distr: 1
					})
				3:
					x: 100 * width
					y: if Math.max( xHeight * ( 455 / 500 ) - thickness + 86, contours[1].nodes[0].expandedTo[1].y ) > xHeight - 10 then xHeight - 10 else Math.max( xHeight * ( 455 / 500 ) - thickness + 86, contours[1].nodes[0].expandedTo[1].y )
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 1
					})
				4:
					x: 100 * width + thickness
					y: contours[0].nodes[3].y
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness + 65
						distr: 0
					})
				5:
					x: 100 * width + thickness
					# y: if contours[0].nodes[4].y + 10 > xHeight then xHeight else contours[0].nodes[4].y + 10
					y: contours[0].nodes[4].y + 10
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness + 65
						distr: 0
					})
				6:
					x: 100 * width + thickness
					y: xHeight * ( 600 / 500 )
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness * ( 6 / 86 )
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].x - 25
					y: xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 45 / 86 )
						distr: 0
					})
				1:
					x: contours[0].nodes[3].expandedTo[0].x - thickness * ( 5 / 86 )
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 45 / 86 )
						distr: 0
					})
