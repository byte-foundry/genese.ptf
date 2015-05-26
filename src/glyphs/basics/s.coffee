exports.glyphs['s'] =
	unicode: 's'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[1].x + 35 * spacing
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 180
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 86 )
						angle: - 100 + 'deg'
						distr: 0
					})
				1:
					x: 35
					y: xHeight * ( 370 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 70 / 86 )
						angle: 30 + 'deg'
						distr: 0
					})
				2:
					x: 153
					y: xHeight * ( 283 / 500 )
					dirOut: - 20 + 'deg'
					# dirOut: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[2].expandedTo[1].point )
					# dirIn: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[2].expandedTo[1].point )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 88 / 86 )
						angle: 70 + 'deg'
					})
				3:
					x: 238
					y: xHeight * ( 252 / 500 )
					dirOut: - 22 + 'deg'
					# dirOut: Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[4].expandedTo[1].point )
					# dirIn: Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[4].expandedTo[1].point )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 88 / 86 )
						angle: 70 + 'deg'
					})
				4:
					x: 295
					y: xHeight * ( 105 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 81 / 86 )
						angle: 30 + 'deg'
						distr: 0
					})
				5:
					x: 200
					y: - overshoot
					dirIn: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 30 / 86 )
						distr: 1
					})
		1:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					tensionOut: 1.5
				1:
					x: 297
					y: 460
					tensionIn: 0.5
				2:
					x: 315
					y: 485
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				3:
					x:contours[1].nodes[2].x + 15
					y:contours[1].nodes[2].y - 3
					typeOut: 'line'
				4:
					x:contours[1].nodes[3].x - 15
					y:contours[1].nodes[3].y - 132
				5:
					x:contours[1].nodes[4].x - 15
					y:contours[1].nodes[4].y
					dirOut: 107 + 'deg'
				6:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
		2:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[5].expandedTo[0].x
					y: contours[0].nodes[5].expandedTo[0].y
				1:
					x: 70
					y: 165
					dirIn: - 80 + 'deg'
					tensionIn: 1.1
				2:
					x: contours[2].nodes[1].x - 15
					y: contours[2].nodes[1].y
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				3:
					x:contours[2].nodes[2].x - 5
					y:contours[2].nodes[2].y - 147
					typeOut: 'line'
				4:
					x:contours[2].nodes[3].x + 15
					y:contours[2].nodes[3].y - 3
					dirOut: 77 + 'deg'
				5:
					x:contours[2].nodes[4].x + 20
					y:contours[2].nodes[4].y + 25
					tensionOut: 0.5
				6:
					x: contours[0].nodes[5].expandedTo[1].x
					y: contours[0].nodes[5].expandedTo[1].y
					tensionIn: 1.5
