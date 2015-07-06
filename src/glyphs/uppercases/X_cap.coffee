exports.glyphs['X_cap'] =
	unicode: 'X'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + serifWidth * 2 - 5 * spacing
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
					x: 87 + (26)
					y: capHeight
					dirOut: - 109 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 118 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 564 + (26)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 119 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 615 + (0)
					y: capHeight
					dirOut: - 109 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 40 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Utils.onLine({
						y: capHeight * ( 390 / 750 )
						on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]
					})
					y: capHeight * ( 390 / 750 )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				1:
					x: Utils.onLine({
						y: capHeight * ( 372 / 750 )
						on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]
					})
					y: capHeight * ( 372 / 750 )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
				0:
					x: 80 + (0)
					y: 0
					dirOut: - 109 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 40 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.75
					})
	components:
		0:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: 0 + serifHeight
						on: [ contours[2].nodes[0].expandedTo[1].point, contours[2].nodes[1].expandedTo[1].point ]
					})
					y: 0 + serifHeight
				1:
					x: Utils.onLine({
						y: 0 + serifHeight
						on: [ contours[2].nodes[0].expandedTo[0].point, contours[2].nodes[1].expandedTo[0].point ]
					})
					y: 0 + serifHeight
				2:
					leftCurve: 5
					leftWidth: 2
					rightWidth: 1
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
		1:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: 0 + serifHeight
						on: [ contours[0].nodes[0].expandedTo[1].point, contours[0].nodes[1].expandedTo[1].point ]
					})
					y: 0 + serifHeight
				1:
					x: Utils.onLine({
						y: 0 + serifHeight
						on: [ contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point ]
					})
					y: 0 + serifHeight
				2:
					rightCurve: 5
					leftWidth: 1
					rightWidth: 2
					angle: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point )
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight
						on: [ contours[0].nodes[1].expandedTo[1].point, contours[0].nodes[0].expandedTo[1].point ]
					})
					y: capHeight - serifHeight
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight
						on: [ contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[0].expandedTo[0].point ]
					})
					y: capHeight - serifHeight
				2:
					anchorLine: capHeight
					directionY: -1
					leftCurve: 5
					leftWidth: 2
					rightWidth: 1
					angle: Utils.lineAngle( contours[0].nodes[0].expandedTo[0].point, contours[0].nodes[1].expandedTo[0].point )
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: capHeight - serifHeight
						on: [ contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point ]
					})
					y: capHeight - serifHeight
				1:
					x: Utils.onLine({
						y: capHeight - serifHeight
						on: [ contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point ]
					})
					y: capHeight - serifHeight
				2:
					anchorLine: capHeight
					directionY: -1
					rightCurve: 5
					leftWidth: 1
					rightWidth: 2
					angle: Utils.lineAngle( contours[1].nodes[0].expandedTo[0].point, contours[1].nodes[1].expandedTo[0].point )
