exports.glyphs['K_cap'] =
	unicode: 'K'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + serifWidth - 50 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 115 + (21)
					y: 0 + serifHeight + serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight - serifHeight - serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * opticThickness
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				1:
					x: contours[0].nodes[0].expandedTo[1].x + 15
					y: capHeight * ( 375 / 750 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
						distr: 0
					})
				0:
					x: 545 + (53) + thickness - 85
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 40 / 85 ) * opticThickness
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 579 + (55) + thickness - 85
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 130 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: capHeight * ( 375 / 750 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 101 / 85 ) * opticThickness
						angle: Utils.lineAngle( contours[1].nodes[1].point, contours[1].nodes[0].point )
						distr: 0
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
					leftWidth: 1
					rightWidth: 1
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: capHeight
					leftWidth: 1
					rightWidth: 1
					direction: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve * 3
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve * 3
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					leftWidth: 1.2
					rightWidth: 2
					rightCurve: 3
					angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point )
					direction: -1
