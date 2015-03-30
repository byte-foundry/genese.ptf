exports.glyphs['g'] =
	unicode: 'g'
	ot:
		advanceWidth: contours[2].nodes[2].x
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: true
			nodes:
				0:
					x: ( contours[0].nodes[3].expandedTo[0].x + contours[0].nodes[1].expandedTo[0].x ) / 2 - 5
					y: 188
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
					y: 350
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
					y: 205
					dirOut: - 170 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 56 / 85 )
						angle: - 10 + 'deg'
						distr: 0
					})
				1:
					x: 45
					y: 100
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 56 / 85 )
						angle: 27 + 'deg'
						distr: 0
					})
				2:
					x: 155
					y: 0
					dirOut: 0 + 'deg'
					tensionOut: 0.5
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 88 + 'deg'
						distr: 0
					})
				3:
					x: 285
					y: 4
					dirOut: 0 + 'deg'
					tensionIn: 0
					type: 'smooth'
					expand: Object({
						width: thickness
						angle: 83 + 'deg'
						distr: 0
					})
				4:
					x: 405
					y: - 85
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 73 / 85 )
						angle: 16 + 'deg'
						distr: 0
					})
				5:
						x: 255
						y: - 230
						dirOut: 0 + 'deg'
						type: 'smooth'
						expand: Object({
							width: thickness * ( 33 / 85 )
							angle: 180 + 63 + 'deg'
							distr: 1
						})
				6:
						x: 30
						y: - 95
						dirOut: 90 + 'deg'
						type: 'smooth'
						expand: Object({
							width: thickness * ( 73 / 85 )
							angle: 180 + 16 + 'deg'
							distr: 1
						})
				7:
						x: 140
						y: 10
						dirIn: - 168 + 'deg'
						type: 'smooth'
						expand: Object({
							width: thickness * ( 18 / 85 )
							angle: 180 + 'deg'
							distr: 1
						})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 405
					y: 415
					dirOut: 64 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 23 / 85 )
						angle: 103 + 'deg'
						distr: 0
					})
				1:
					x: 515
					y: 495
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 50 / 85 )
						angle: 180 - 135 + 'deg'
						distr: 1
					})
				2:
					x: 575
					y: 440
					dirOut: 90 + 'deg'
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 75 / 85 )
						angle: 180 - 172 + 'deg'
						distr: 1
					})
		3:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[2].nodes[2].expandedTo[0].x
					y: contours[2].nodes[2].expandedTo[0].y
					dirOut: 90 + 'deg'
					type: 'smooth'
				1:
					x: contours[2].nodes[2].expandedTo[0].x + ( contours[2].nodes[2].expandedTo[1].x - contours[2].nodes[2].expandedTo[0].x ) * ( 35/ 75 )
					y: contours[2].nodes[2].expandedTo[0].y - thickness * ( 40 / 85 )
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: contours[2].nodes[2].expandedTo[1].x
					y: contours[2].nodes[2].expandedTo[1].y
					dirOut: 90 + 'deg'
					type: 'smooth'
