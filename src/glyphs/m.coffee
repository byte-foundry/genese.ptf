exports.glyphs['m'] =
	unicode: 'm'
	ot:
		advanceWidth: contours[2].nodes[3].expandedTo[0].x + serifWidth + spacing * 40
	anchors:
		0:
			x: 120 + ( 21 )
			y: xHeight - ( 160 / 500 ) * xHeight
		1:
			x: ( 445 + 64 ) * width
			# y: xHeight * ( 340 / 500 ) - ( thickness + 85 ) / 4
			y: xHeight - 160 - ( thickness + 85 ) / 4
		2:
			x: ( 720 + 64 ) * width
			y: xHeight * ( 340 / 500 )
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: 0 + serifHeight + serifCurve
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
						angle: 0
					})
				1:
					x: anchors[0].x
					y: xHeight - spurHeight * ( 60 ) - serifHeight * ( 10 / 20 ) - serifCurve * ( 40 / 15 )
					expand: Object({
						width: thickness
						distr: 0.25
						angle: 0
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[1].x
					# y: xHeight * ( 370 / 500 )
					y: xHeight - 130 + ( thickness - 85 ) / 4
					dirOut: if width <= 1.2 then 65 - 65 * width + 65 + 'deg' else 65 - 15 * width + 'deg'
					# angle: - 90 + axis + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 85 ) * contrast * width
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: anchors[1].x * ( ( 390 - 200 ) / ( 445 - 200 ) )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					# angle: Math.max( - thickness - 77 * contrast, Math.max( - 129 * width, - 129 ) ) + 'deg'
					# angle: - 129 + axis + 'deg'
					tensionOut: 1.1
					type: 'smooth'
					expand: Object({
						width: thickness * ( 77 / 85 )
						angle: - 129 + 'deg'
						distr: 0
					})
				2:
					x: anchors[1].x
					y: anchors[1].y
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
						angle: -180 + 'deg'
					})
				3:
					x: contours[1].nodes[2].x
					y: 0 + serifHeight + serifCurve
					expand: Object({
						width: thickness
						distr: 0.25
						angle: -180 + 'deg'
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[1].nodes[2].x - thickness * ( 4 / 86 )
					y: xHeight * ( 370 / 500 )
					dirOut: 66 + 'deg'
					expand: Object({
						width: thickness * ( 25 / 86 ) * contrast
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[2].nodes[0].x + ( contours[2].nodes[2].expandedTo[1].x - contours[2].nodes[0].x ) * ( 185 / 215 )
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					tensionOut: 1.1
					type: 'smooth'
					expand: Object({
						width: thickness * ( 75 / 86 ) * contrast
						angle: - 126 + 'deg'
						distr: 0
					})
				2:
					x: anchors[2].x
					y: anchors[2].y - ( thickness + 86 ) / 4
					dirOut: - 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				3:
					x: contours[2].nodes[2].x
					y: 0 + serifHeight + serifCurve
					dirOut: - 90 + 'deg'
					expand: Object({
						width: thickness
						distr: 0.25
					})
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
					anchorLine: 0
					leftWidth: 1
					rightWidth: 1
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
					leftWidth: 1
					rightWidth: 1
		2:
			base: 't_top'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				2:
					topLine: xHeight
					leftWidth: 1.25
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[2].nodes[3].expandedTo[0].x
					y: contours[2].nodes[3].y
				1:
					x: contours[2].nodes[3].expandedTo[1].x
					y: contours[2].nodes[3].y
				2:
					anchorLine: 0
					leftWidth: 1
					rightWidth: 1
