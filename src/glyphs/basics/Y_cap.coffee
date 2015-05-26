exports.glyphs['Y_cap'] =
	unicode: 'Y'
	ot:
		advanceWidth: contours[2].nodes[1].expandedTo[1].x + serifWidth - 50 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 295 + (50)
					y: 0 + serifHeight + serifCurve * ( 60 / 15 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
					})
				1:
					x: contours[0].nodes[0].x
					y: capHeight * ( 340 / 750 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[1].x
					y: capHeight * ( 245 / 750 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 9 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 280 + (0)
					y: contours[0].nodes[1].y
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0
					})
				2:
					x: 20 + (30)
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 120 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				1:
					x: 585 + (6)
					y: capHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				0:
					x: contours[1].nodes[0].x
					y: contours[1].nodes[0].y
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * opticThickness
						angle: 0 + 'deg'
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
					leftWidth: 1.6
					rightWidth: 1.6
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: contours[1].nodes[2].expandedTo[1].x
					y: contours[1].nodes[2].y
				1:
					x: contours[1].nodes[2].expandedTo[0].x
					y: contours[1].nodes[2].y
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[2].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[2].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					leftWidth: 1.6
					rightWidth: 1.6
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[2].expandedTo[0].point )
					directionY: -1
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight - serifCurve
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight - serifCurve
				2:
					anchorLine: capHeight
					leftWidth: 1.6
					rightWidth: Math.max( 1.6, 1.6 * serifCurve / 100 )
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
					directionY: -1
