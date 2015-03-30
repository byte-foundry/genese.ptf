exports.glyphs['x'] =
	unicode: 'x'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[1].x + serifWidth + 24 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 56 + (26)
					y: xHeight
					dirOut: - 109 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 104 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 391 + (26)
					y: 0
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 104 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 421 + (0)
					y: xHeight
					dirOut: - 109 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: Utils.onLine({
						y: xHeight * ( 250 / 500 )
						on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]
					})
					y: xHeight * ( 250 / 500 )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 23 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: Utils.onLine({
						y: xHeight * ( 250 / 500 )
						on: [ contours[0].nodes[0].point, contours[0].nodes[1].point ]
					})
					y: xHeight * ( 250 / 500 )
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 23 / 85 )
						angle: 0 + 'deg'
						distr: 0.75
					})
				1:
					x: 80 + (0)
					y: 0
					dirOut: - 109 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.75
					})
