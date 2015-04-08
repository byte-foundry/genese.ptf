exports.glyphs['y'] =
	unicode: 'y'
	ot:
		advanceWidth: contours[2].nodes[0].expandedTo[0].x + serifWidth - 20 * spacing
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 214 + 6
					y: - overshoot
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: 176 + (0)
					y: - 110
					dirOut: Utils.lineAngle( contours[0].nodes[0].point, contours[0].nodes[1].point )
					expand: Object({
						width: thickness * ( 28 / 85 )
						angle: - 56 + 'deg'
						distr: 0
					})
				2:
					x: 151 + (0)
					y: - 135
					dirIn: 0 + 'deg'
					# dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 80 / 85 )
						angle: - 126 + 'deg'
						distr: 0
					})
		1:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x
					y: contours[0].nodes[2].expandedTo[0].y
				1:
					x: 99
					y: - 105
				2:
					x: 54
					y: - 150
					dirOut: - 90 + 'deg'
					type: 'smooth'
				3:
					x: 104
					y: - 200
				4:
					x: contours[0].nodes[2].expandedTo[1].x
					y: contours[0].nodes[2].expandedTo[1].y
		# TODO:
		# This contour is used to set the spacing
		# We need to call the advanceWidth of the component instead
		# like: glyphs['v'].ot.advanceWidth
		2:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 395 + 17
					y: xHeight - serifHeight * serifCurve
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 39 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
	components:
		0:
			base: 'v'
			parentAnchors:
				0:
					x: 0
					y: 0
