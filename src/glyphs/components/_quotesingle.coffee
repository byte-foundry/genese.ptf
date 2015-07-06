exports.glyphs['_quotesingle'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: thickness * ( 20 / 85 )
						angle: 0 + 'deg'
					})
				1:
					x: contours[0].nodes[0].x
					y: anchors[0].y - 45
					# dirIn: Utils.lineAngle( contours[0].nodes[1].expandedTo[0].point, contours[0].nodes[2].expandedTo[0].point )
					# dirIn: 90 + 'deg'
					type: 'smooth'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 70 / 85 )
						angle: 0 + 'deg'
					})
				2:
					x: contours[0].nodes[0].x
					y: anchors[0].y - 190
					dirOut: 0 + 'deg'
					expand: Object({
						width: thickness * ( 10 / 85 )
						angle: 0 + 'deg'
					})
