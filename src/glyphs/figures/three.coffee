exports.glyphs['three'] =
	unicode: '3'
	ot:
		advanceWidth: width * 545 + thickness * 2 - ( 85 * 2 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 30 + (4)
					y: xHeight - ( 500 - 345 )
					dirOut: 69 + 'deg'
					tensionOut: 0.8
					expand: Object({
						width: thickness * ( 16 / 85 )
						angle: - 18 + 'deg'
						distr: 0.25
					})
				1:
					x: 235
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 80 / 85 )
						angle: - 120 + 'deg'
						distr: 0
					})
				2:
					x: 305 + (56)
					y: xHeight * ( 345 / 500 )
					dirOut: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 2.2
					expand: Object({
						width: thickness * ( 83 / 85 )
						angle: 180 + 25 + 'deg'
						distr: 0.25
					})
				3:
					x: 80 + (0)
					y: xHeight * ( 115 / 500 )
					dirIn: Utils.lineAngle( contours[1].nodes[3].expandedTo[1].point, contours[0].nodes[3].expandedTo[0].point ) + ( Math.PI / 180 ) * - 2
					type: 'smooth'
					tensionIn: 0.6
					expand: Object({
						width: thickness * ( 13 / 85 )
						angle: 90 + 'deg'
						distr: 0.75
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: - 35
					y: descender * ( 175 / 250 )
					dirOut: - 50 + 'deg'
					expand: Object({
						width: thickness * ( 14 / 85 )
						angle: 180 + 45 + 'deg'
						distr: 1
					})
				1:
					x: 135
					y: descender
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 36 / 85 )
						angle: 180 + 134 + 'deg'
						distr: 1
					})
				2:
					x: 285 + (21)
					y: -45
					dirIn: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 7 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[3].expandedTo[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					tensionIn: 1.1
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness * ( 115 / 85 )
						angle: Utils.lineAngle( contours[0].nodes[3].expandedTo[1].point, contours[0].nodes[2].expandedTo[0].point ) - Math.PI / 180 * 7
						distr: 0
					})
