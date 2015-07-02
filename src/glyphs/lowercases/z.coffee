exports.glyphs['z'] =
	unicode: 'z'
	ot:
		advanceWidth: contours[0].nodes[0].expandedTo[0].x + 60 * spacing
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 435 + (0)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: 170 + (0)
					y: xHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 43 / 85 )
						angle: - 35 + 'deg'
						distr: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 50 + (0)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: 90 + 'deg'
						distr: 0
					})
				1:
					x: 430 + (0)
					y: 0
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 113 / 85 )
						angle: 167 + 'deg'
						distr: 0
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[0].expandedTo[1].x
					y: contours[1].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 92 / 85 )
						angle: 167 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 89 / 85 )
						angle: 167 + 'deg'
						distr: 0
					})
		3:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
					dirOut: 180 + 'deg'
					tensionOut: 1.8
				1:
					x: contours[3].nodes[0].x - 40
					y: contours[3].nodes[0].y + 35
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				2:
					x: contours[3].nodes[1].x - 15
					y: contours[3].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[3].nodes[2].x - 65
					y: contours[3].nodes[2].y - 140
					typeOut: 'line'
				4:
					x: contours[3].nodes[3].x + 15
					y: contours[3].nodes[3].y
					dirOut: 50 + 'deg'
					tensionOut: 1.4
				5:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
					dirIn: Utils.lineAngle( contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point )
					tensionIn: 1.8
		4:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[1].nodes[1].expandedTo[0].x
					y: contours[1].nodes[1].expandedTo[0].y
					typeOut: 'line'
				1:
					x: contours[4].nodes[0].x + 15
					y: contours[4].nodes[0].y + 130
					typeOut: 'line'
				2:
					x: contours[4].nodes[1].x - 10
					y: contours[4].nodes[1].y
					dirOut: - 114 + 'deg'
				3:
					x: contours[1].nodes[1].expandedTo[1].x
					y: contours[1].nodes[1].expandedTo[1].y
