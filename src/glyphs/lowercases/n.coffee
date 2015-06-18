exports.glyphs['n'] =
	unicode: 'n'
	ot:
		advanceWidth: width * 550 + thickness * 2 - ( 85 * 2 ) + serifWidth
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 120 + (21)
					y: xHeight - spurHeight * ( 60 ) - serifHeight * ( 10 / 20 ) - serifCurve * ( 40 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: 0 + serifHeight + serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					# y: xHeight * ( 370 / 500 )
					y: xHeight - 140 + ( thickness - 85 ) / 4 + (25) + 30 / width - 30
					dirOut: if width <= 1.2 then 60 - 60 * width + 60 + 'deg' else 65 - 15 * width + 'deg'
					# angle: - 90 + axis + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 ) * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[1].nodes[2].x * ( ( 390 - 200 ) / ( 445 - 200 ) )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					# angle: Math.max( - thickness - 77 * contrast, Math.max( - 129 * width, - 129 ) ) + 'deg'
					# angle: - 129 + axis + 'deg'
					tensionOut: 1.1
					type: 'smooth'
					expand: Object({
						# width: thickness * ( 80 / 85 ) / 2 + thickness * ( 80 / 85 ) / 2 * contrast
						width: thickness * ( 80 / 85 )
						angle: Math.max( - 129 , - 129 - 10 * contrast * width + 10 ) + 'deg'
						distr: 0
					})
				2:
					x: ( 445 + (64) ) * width
					y: xHeight - 170 - thickness + 85 + 60 / width - 60
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				3:
					x: contours[1].nodes[2].x
					y: 0 + serifHeight + serifCurve
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: 0
					leftWidth: 15
					rightWidth: 15
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[3].expandedTo[0].x
					y: contours[1].nodes[3].y
				1:
					x: contours[1].nodes[3].expandedTo[1].x
					y: contours[1].nodes[3].y
				2:
					anchorLine: 0
					leftWidth: 15
					rightWidth: 15
		2:
			base: 'attaque'
			parentAnchors:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].y
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].y
				2:
					anchorLine: xHeight
					leftWidth: 1.25
