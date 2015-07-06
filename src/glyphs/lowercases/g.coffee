exports.glyphs['g'] =
	unicode: 'g'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x - thickness * ( 50 / 85 ) * spacing
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
			closed: true
			nodes:
				0:
					x: ( contours[0].nodes[3].expandedTo[0].x + contours[0].nodes[1].expandedTo[0].x ) / 2 - 5
					y: ( 188 / 500 ) * xHeight
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 57 + 'deg'
						distr: 0
					})
				1:
					x: 340 + 65
					y: contours[0].nodes[3].y
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				2:
					x: ( contours[0].nodes[3].expandedTo[0].x + contours[0].nodes[1].expandedTo[0].x ) / 2 + 5
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: - 127 + 'deg'
						distr: 0
					})
				3:
					x: 65 + 21
					y: ( 350 / 500 ) * xHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness
						distr: 0.25
					})

		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 170
					y: contours[0].nodes[0].expandedTo[1].y
					dirOut: - 176 + 'deg'
					# dirOut: Utils.lineAngle( contours[1].nodes[2].point, contours[1].nodes[3].point ) - Math.PI / 2 * 90 * 4
					type: 'smooth'
					expand: Object({
						width: thickness * ( 56 / 85 )
						angle: - 10 + 'deg'
						distr: 0
					})
				1:
					x: 45
					y: ( 100 / 500 ) * xHeight
					# dirOut: contours[1].nodes[2].dirOut + Math.PI / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 56 / 85 )
						angle: 27 + 'deg'
						distr: 0
					})
				2:
					x: 155
					y:
						if xHeight > 42
						then 0 + (42/500) * xHeight
						else 0 - (42/500) * xHeight
					# dirIn: Utils.lineAngle( contours[1].nodes[2].point, contours[1].nodes[3].point )
					# dirOut: 0 + 'deg'
					tensionOut: 0.5
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness
						angle: 88 + 'deg'
						distr: 0.5
					})
				3:
					x: 285
					y:
						if xHeight > 42
						then 4 + 21 + (21/500) * xHeight
						else 4 - 21 - (21/500) * xHeight
					dirOut: Utils.lineAngle( contours[1].nodes[2].point, contours[1].nodes[3].point )
					# tensionIn: 0
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 83 + 'deg'
						distr: 0.5
					})
				4:
					x: 405 + (21)
					y: ( 85 / 250 ) * descender
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 73 / 85 )
						angle: 16 + 'deg'
						distr: 0.25
					})
				5:
						x: 255
						y: ( 230 / 250 ) * descender
						dirOut: 0 + 'deg'
						type: 'smooth'
						expand: Object({
							width: thickness * ( 20 / 85 )
							angle: 180 + 76 + 'deg'
							distr: 1
						})
				6:
						x: 30
						y: ( 95 / 250 ) * descender
						dirOut: 90 + 'deg'
						type: 'smooth'
						expand: Object({
							width: thickness * ( 73 / 85 )
							angle: 180 + 16 + 'deg'
							distr: 1
						})
				7:
						x: 140
						y: contours[1].nodes[2].expandedTo[0].y + thickness * ( 10 / 85 )
						dirIn: - 168 + 'deg'
						type: 'smooth'
						expand: Object({
							width: thickness * ( 28 / 85 )
							angle: 180 + 'deg'
							distr: 1
						})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[4].expandedTo[1].x + 100
					y: contours[2].nodes[1].y - 55
					dirOut: 90 + 'deg'
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 75 / 85 )
						angle: - 172 + 'deg'
						distr: 0
					})
				1:
					x: contours[2].nodes[2].expandedTo[1].x + ( contours[2].nodes[0].expandedTo[0].x - contours[2].nodes[2].expandedTo[1].x ) * (575-460)/(575-405)
					y: contours[0].nodes[2].y - 15
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 50 / 85 )
						angle: - 135 + 'deg'
						distr: 0
					})
				2:
					x: contours[0].nodes[1].expandedTo[0].x - thickness * ( 20 / 85 )
					y: Math.min( contours[0].nodes[1].expandedTo[0].y + thickness * ( 65 / 85 ), contours[0].nodes[1].expandedTo[0].y + 65 )
					dirIn: Math.max( 64 , 100 - (43/85) * thickness * (500/xHeight) ) + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 23 / 85 )
						angle: - 77 + 'deg'
						distr: 0
					})
		3:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].expandedTo[0].y
					dirOut: 90 + 'deg'
					type: 'smooth'
				1:
					x: contours[2].nodes[0].expandedTo[0].x + ( contours[2].nodes[0].expandedTo[1].x - contours[2].nodes[0].expandedTo[0].x ) * ( 35/ 75 )
					y: contours[2].nodes[0].expandedTo[0].y - thickness * ( 40 / 85 )
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].expandedTo[1].y
					dirOut: 90 + 'deg'
					type: 'smooth'
