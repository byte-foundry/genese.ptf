exports.glyphs['q'] =
	unicode: 'q'
	ot:
		advanceWidth: contours[0].nodes[3].expandedTo[1].x + 100 * spacing
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
			closed: false
			nodes:
				0:
					x: 415 + 20
					y: descender + serifHeight + serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: xHeight - 85
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				2:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight - 75
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 40 / 85 )
						distr: 1
					})
				3:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 10 / 85 )
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x + thickness * ( 10 / 85 )
					y: 75
					dirOut: - 125 + 'deg'
					type: 'smooth'
					expand: Object({
						width:  Math.min( thickness * ( 40 / 85 ), ( thickness * ( 40 / 85 ) / 500 ) * xHeight )
						angle: 90 + 'deg'
						distr: 0.25
					})
				1:
					x: 270
					y: - overshoot / 2
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 50 / 85 )
						angle: 45 + 'deg'
						distr: 0
					})
				2:
					x: 45 + 23
					y: xHeight * ( 257 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 95 / 86 )
						angle: 6 + 'deg'
						distr: 0.25
					})
				3:
					x: 280
					y: xHeight + overshoot
					dirIn: 0 + 'deg'
					tensionIn: 1.1
					type: 'smooth'
					expand: Object({
						width: thickness * ( 27 / 86 )
						angle: - 68 + 'deg'
						distr: 0
					})
				4:
					# x: contours[0].nodes[0].expandedTo[0].x + thickness * ( 10 / 85 )
					# y: xHeight - 115
					# dirIn: Math.max( 146 - ( 30 / 500 ) * xHeight, 90 ) + 'deg'
					# tensionIn: 0.9
					# type: 'smooth'
					# expand: Object({
					# 	width: Math.min( thickness * ( 54 / 86 ), ( thickness * ( 54 / 86 ) / 500 ) * xHeight )
					# 	angle: 180 + 34 + 'deg'
					# 	distr: 1
					# })
					expandedTo: [
						x: contours[0].nodes[2].expandedTo[0].x
						y: contours[0].nodes[2].expandedTo[0].y
						dirIn: Math.min( 146 - ( 30 / 500 ) * xHeight, 90 ) + 'deg'
						dirIn: 118 + 'deg'
					,
						x: contours[0].nodes[1].expandedTo[0].x
						y: contours[0].nodes[1].expandedTo[0].y
						dirOut: Math.min( 146 - ( 30 / 500 ) * xHeight, 90 ) + 'deg'
						dirOut: 118 + 'deg'
					]
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: descender
					leftWidth: 20
					rightWidth: 20
