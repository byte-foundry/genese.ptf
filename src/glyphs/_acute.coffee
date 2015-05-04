exports.glyphs['_acute'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x + (5)
					y: anchors[0].y
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 25 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				1:
					x: contours[0].nodes[0].x + 65 + (15)
					y: anchors[0].y + 210
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 100 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
