exports.glyphs['C_cap'] =
	unicode: 'C'
	ot:
		advanceWidth: contours[2].nodes[3].x + 40 * spacing
	anchors:
		0:
			x: 600 - 28
			y: 565
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
					expandedTo:
						[
							{
								x: 630
								y: capHeight - ( 70 / 750 ) * capHeight
								dirOut: 180 + 'deg'
								tensionOut: 0.3
							}
							{
								x: 670
								y: capHeight - ( 245 / 750 ) * capHeight
								y: contours[0].nodes[0].expandedTo[0].y - 175
								dirIn: 108 + 'deg'
								tensionIn: 0.5
							}
						]
				1:
					x: 395
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.45
					expand: Object({
						width: thickness * ( 27 / 85 ) * opticThickness * contrast
						angle: - 68 + 'deg'
						distr: 0
					})
				2:
					x: 35 + (27)
					y: capHeight * ( 375 / 750 )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: 380
					y: - overshoot
					type: 'smooth'
					dirIn: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: thickness * ( 33 / 85 ) * opticThickness * contrast
						angle: 63 + 'deg'
						distr: 0
					})
				4:
					expandedTo:
						[
							{
								x: 605
								y: 55
								dirOut: 180 + 'deg'
								tensionIn: 0.3
							}
							{
								x: 670
								y: 250
								dirOut: - 108 + 'deg'
							}
						]
		1:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					# typeOut: 'line'
				1:
					x: contours[0].nodes[0].expandedTo[0].x + 30
					y: contours[0].nodes[0].expandedTo[0].y + 50
					dirIn: - 95 + 'deg'
				2:
					x: contours[1].nodes[1].x + 15
					y: contours[1].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[1].nodes[2].x + 15
					y: contours[0].nodes[0].expandedTo[1].y + 5
					typeOut: 'line'
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
		2:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
				1:
					x: contours[2].nodes[0].x + 15
					y: contours[2].nodes[0].y - 40
					dirIn: 90 + 'deg'
				2:
					x: contours[2].nodes[1].x + 15
					y: contours[2].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[0].nodes[4].expandedTo[1].x + 20
					y: contours[2].nodes[2].y + 230
					typeOut: 'line'
				4:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y
					typeOut: 'line'
