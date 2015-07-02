exports.glyphs['G_cap'] =
	unicode: 'G'
	ot:
		advanceWidth: contours[1].nodes[3].x + 40 * spacing
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
								y: ( 680 / 750 ) * capHeight
								y: capHeight - ( 70 / 750 ) * capHeight
								dirOut: 180 + 'deg'
								tensionOut: 0.3
							}
							{
								x: 670
								y: ( 505 / 750 ) * capHeight
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
					x: 35 + 27
					y: capHeight * ( 375 / 750 )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: 425
					y: - overshoot
					type: 'smooth'
					dirIn: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: thickness * ( 40 / 85 ) * opticThickness
						angle: 40 + 'deg'
						distr: 0
					})
				4:
					x: 750
					y: 95
					type: 'smooth'
					dirIn: - 143 + 'deg'
					expand: Object({
						width: thickness * ( 16 / 85 ) * opticThickness * contrast
						angle: 108 + 'deg'
						distr: 0.25
					})
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
					dirIn: - 102 + 'deg'
				2:
					x: contours[1].nodes[1].x + 15
					y: contours[1].nodes[1].y
					typeOut: 'line'
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 20
					y: contours[0].nodes[0].expandedTo[1].y + 5
					typeOut: 'line'
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
					typeOut: 'line'
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 665 - (10)
					y: ( 325 / 750 ) * capHeight - serifHeight - serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						distr: 0.9
					})
				1:
					x: contours[2].nodes[0].x
					y: contours[0].nodes[3].expandedTo[0].y
					y: 50
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 94 / 85 ) * opticThickness
						angle: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[4].point )
						distr: 0.9
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[2].nodes[0].expandedTo[1].x
					y: contours[2].nodes[0].y
				1:
					x: contours[2].nodes[0].expandedTo[0].x
					y: contours[2].nodes[0].y
				2:
					anchorLine: ( 325 / 750 ) * capHeight
					leftWidth: 35
					rightWidth: 20
					directionY: -1
