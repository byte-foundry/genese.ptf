exports.glyphs['k'] =
	unicode: 'k'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[1].x + serifWidth + 50 * spacing
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
					x: 115 + (21)
					y: 0 + serifHeight + serifCurve
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x
					y: ascenderHeight - spurHeight * ( 60 ) - serifHeight * ( 10 / 20 ) - serifCurve * ( 40 / 15 )
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
				1:
					x: contours[0].nodes[0].expandedTo[1].x
					y: xHeight * ( 290 / 500 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 36 / 85 ) * width
						distr: 0
					})
				0:
					x: 150 + 315 * width + (53) + thickness - 85
					y: xHeight
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 36 / 85 ) * width
						distr: 0.5
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 100 + 335 * width + (55) + thickness - 85
					y: 0
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 90 / 85 ) + thickness * ( 20 / 85 ) * width
						angle: 0 + 'deg'
						distr: 0.5
					})
				1:
					x: contours[1].nodes[1].expandedTo[0].x
					y: xHeight * ( 290 / 500 )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 66 / 85 ) + thickness * ( 20 / 85 ) * width
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
			base: 'attaque'
			parentAnchors:
				0:
					x: contours[0].nodes[1].expandedTo[0].x
					y: contours[0].nodes[1].y
				1:
					x: contours[0].nodes[1].expandedTo[1].x
					y: contours[0].nodes[1].y
				2:
					anchorLine: ascenderHeight
					leftWidth: 1.25
		2:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve
						on: [ contours[2].nodes[1].expandedTo[1].point, contours[2].nodes[0].expandedTo[1].point ]
					})
					y: 0 + serifHeight + serifCurve
				1:
					x: Utils.onLine({
						y: 0 + serifHeight + serifCurve
						on: [ contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point ]
					})
					y: 0 + serifHeight + serifCurve
				2:
					leftWidth: 1
					rightWidth: 1
					angle: Utils.lineAngle( contours[2].nodes[1].expandedTo[0].point, contours[2].nodes[0].expandedTo[0].point )
		3:
			base: 'serif'
			parentAnchors:
				0:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[1].expandedTo[1].point, contours[1].nodes[0].expandedTo[1].point ]
					})
					y: xHeight - serifHeight - serifCurve
				1:
					x: Utils.onLine({
						y: xHeight - serifHeight - serifCurve
						on: [ contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point ]
					})
					y: xHeight - serifHeight - serifCurve
				2:
					anchorLine: xHeight
					leftWidth: 1.2
					rightWidth: 1.1
					angle: Utils.lineAngle( contours[1].nodes[1].expandedTo[0].point, contours[1].nodes[0].expandedTo[0].point )
					directionY: -1
