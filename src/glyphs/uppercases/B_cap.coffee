exports.glyphs['B_cap'] =
	unicode: 'B'
	ot:
		advanceWidth: contours[2].nodes[2].expandedTo[0].x + 45 * spacing
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
					x: 145 + (25)
					y: capHeight - serifHeight - serifCurve * ( 65 /15 )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 0 + serifHeight + serifCurve * ( 65 /15 )
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: capHeight
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * opticThickness * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[0].expandedTo[0].x + 85
					y: contours[1].nodes[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.35
					expand: Object({
						width: thickness * ( 45 / 85 ) * opticThickness * contrast
						angle: - 153 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[1].expandedTo[0].x + 200 + (62)
					# x: ( 515 + (75) ) * width
					y: contours[1].nodes[3].y + ( contours[1].nodes[1].y - contours[1].nodes[3].y ) / 2
					dirIn: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 180 + 6 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[1].nodes[0].expandedTo[0].x + 100
					y: ( 385 / 750 ) * capHeight
					typeOut: 'line'
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness * ( 20 / 85 ) * opticThickness * contrast
						angle: 119 + 'deg'
					})
				4:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[1].nodes[3].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * opticThickness * contrast
						angle: 90 + 'deg'
						distr: 1
					})
				4:
					expandedTo: [
						x: contours[0].nodes[0].expandedTo[1].x
						y: contours[1].nodes[3].expandedTo[1].y
					,
						x: contours[0].nodes[0].expandedTo[1].x
						y: contours[1].nodes[3].expandedTo[0].y
					]
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[4].x
					y: contours[2].nodes[1].expandedTo[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 18 / 85 ) * opticThickness * contrast
						angle: 180 + 90 + 'deg'
						distr: 1
					})
				0:
					expandedTo: [
						x: contours[0].nodes[0].expandedTo[1].x
						y: contours[1].nodes[3].expandedTo[1].y
					,
						x: contours[0].nodes[0].expandedTo[1].x
						y: contours[1].nodes[3].expandedTo[0].y
					]
				1:
					x: contours[1].nodes[0].expandedTo[0].x + 145
					y: contours[1].nodes[3].expandedTo[1].y
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 67 / 85 ) * opticThickness * contrast
						angle: 180 + 15 + 'deg'
						distr: 0
					})
				2:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[2].nodes[3].y + ( contours[2].nodes[1].y - contours[2].nodes[3].y ) / 2
					type: 'smooth'
					tensionOut: 1.35
					expand: Object({
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x + 120
					y: 0
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness * ( 32 / 85 ) * opticThickness * contrast
						angle: - 38 + 180 + 'deg'
						distr: 0
					})
		3:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[2].nodes[3].expandedTo[1].x
					y: contours[2].nodes[3].expandedTo[1].y
					typeOut: 'line'
				1:
					x: contours[3].nodes[0].x - 50
					y: contours[3].nodes[0].y
					dirOut: 180 + 'deg'
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: ( serifHeight + serifCurve ) * ( 80 / 35 )
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				3:
					x: contours[3].nodes[2].x
					y: 0
					typeOut: 'line'
				4:
					x: contours[2].nodes[3].expandedTo[0].x
					y: contours[2].nodes[3].expandedTo[0].y
					typeOut: 'line'
	components:
		0:
			base: 'serif_left'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
				2:
					anchorLine: capHeight
					leftWidth: 40
					directionY: -1
		1:
			base: 'serif_left'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].expandedTo[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].expandedTo[0].y
				2:
					leftWidth: 40
