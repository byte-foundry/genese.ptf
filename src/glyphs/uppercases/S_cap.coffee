exports.glyphs['S_cap'] =
	unicode: 'S'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[1].x + serifWidth + 9 * spacing
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 280 + (0)
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
						angle: - 101 + 'deg'
						distr: 0
					})
				1:
					x: 65 + (20)
					y: ( ( 565 - (32) ) / 700 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 87 / 85 ) * opticThickness
						angle: 24 + 'deg'
						distr: 0.25
					})
				2:
					x: 195 + (0)
					y: ( 367 / 700 ) * capHeight
					dirOut: Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[3].expandedTo[0].point )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 56 + 'deg'
						distr: 0.25
					})
				3:
					x: 295 + (0)
					y: ( 320 / 700 ) * capHeight
					dirOut: Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[3].expandedTo[0].point )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 106 / 85 ) * opticThickness
						angle: 45 + 'deg'
						distr: 0.25
					})
				4:
					x: 505 - (64)
					y: ( ( 185 - (32) ) / 700 ) * capHeight
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionIn: 1.5
					expand: Object({
						width: thickness * ( 89 / 85 ) * opticThickness
						angle: 180 - 164 + 'deg'
						distr: 0.25
					})
				5:
					x: 290 + (0)
					y: - overshoot
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness * ( 32 / 85 ) * opticThickness
						angle: 180 + 108 + 'deg'
						distr: 1
					})
		1:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.5
				1:
					x: contours[1].nodes[0].x + 150
					y: contours[1].nodes[0].y - 50
					dirOut: 0 + 'deg'
					tensionIn: 0.7
				2:
					x: contours[1].nodes[1].x + 25
					y: capHeight
					typeOut: 'line'
					dirIn: - 90 + 'deg'
				3:
					x: contours[1].nodes[2].x + 15
					y: capHeight
					typeOut: 'line'
					dirIn: - 90 + 'deg'
				4:
					x: contours[1].nodes[3].x
					y: contours[1].nodes[3].y - 200
					typeOut: 'line'
					dirOut: - 90 + 'deg'
				5:
					x: contours[1].nodes[4].x - 20
					y: contours[1].nodes[4].y
					dirOut: 101 + 'deg'
				6:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					dirIn: 0 + 'deg'
					typeOut: 'line'
					tensionIn: 1.2
		2:
			skeleton: false
			closed: true
			nodes:
				0:
					x: contours[0].nodes[5].expandedTo[0].x
					y: contours[0].nodes[5].expandedTo[0].y
					dirOut: 180 + 'deg'
				1:
					x: contours[2].nodes[2].x + 20
					y: contours[2].nodes[2].y
					dirIn: - 78 + 'deg'
					tensionIn: 1.2
				2:
					x: contours[0].nodes[1].expandedTo[0].x - 15
					y: 245
					typeOut: 'line'
				3:
					x: contours[2].nodes[2].x
					y: 0
					typeOut: 'line'
				4:
					x: contours[2].nodes[1].x
					y: 0
					dirOut: 90 + 'deg'
				5:
					x: contours[2].nodes[4].x + 30
					y: 50
					tensionOut: 0.5
				6:
					x: contours[0].nodes[5].expandedTo[1].x
					y: contours[0].nodes[5].expandedTo[1].y
					tensionIn: 1.6
					typeOut: 'line'
