exports.glyphs['question'] =
	unicode: '?'
	ot:
		advanceWidth: width * 580 + thickness * 2 - ( 86 * 2 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 110 + (7)
					y: ( ( 125 + thickness ) / 750 ) * capHeight
					typeOut: 'line'
					expand: Object({
						width: Math.max( 4, thickness * ( 15 / 85 ) )
						angle: 180 + 'deg'
						distr: 0.5
					})
				1:
					x: 125
					y: ( 360 / 750 ) * capHeight
					dirOut: 0 + 'deg'
					tensionOut: 1.5
					expand: Object({
						width: Math.min( 85, thickness * ( 90 / 85 ) )
						angle: 109 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[1].x + ( contours[0].nodes[3].x - contours[0].nodes[1].x ) * 0.85
					y: contours[0].nodes[1].y + ( contours[0].nodes[3].y - contours[0].nodes[1].y ) * 0.55
					type: 'smooth'
					dirOut: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[1].point ) + Math.PI / Math.max( 20, ( 12 / 85 ) * thickness )
					expand: Object({
						width: thickness * ( 45 / 85 )
						angle: 115 + 'deg'
						distr: 0.5
					})
				3:
					x: 295 + (7)
					y: ( 550 / 750 ) * capHeight
					type: 'smooth'
					dirOut: 90 + 'deg'
					expand: Object({
						width: thickness * ( 27 / 85 )
						angle: - 158 + 'deg'
						distr: 0.5
					})
				4:
					x: 145
					y: ( 760 / 750 ) * capHeight
					type: 'smooth'
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness * ( 95 / 85 )
						angle: - 71 + 'deg'
						distr: 0
					})
		1:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					type: 'smooth'
					dirOut: 180 + 'deg'
				1:
					x: contours[0].nodes[4].expandedTo[0].x - ( 80 / 85 ) * thickness
					y: contours[0].nodes[4].expandedTo[0].y - ( 63 / 85 ) * thickness
					dirOut: - 90 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[4].expandedTo[1].x - ( 65 / 85 ) * thickness
					y: contours[0].nodes[4].expandedTo[1].y - ( 15 / 85 ) * thickness
				3:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y
	components:
		0:
			base: 'dot'
			parentAnchors:
				0:
					x: 125
					y: -5
