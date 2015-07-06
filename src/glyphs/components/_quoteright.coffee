exports.glyphs['_quoteright'] =
	anchors:
		0:
			x: parentAnchors[0].x
			y: parentAnchors[0].y
	tags: [
		'component'
	]
	contours:
		0:
			skeleton: false
			closed: true
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 180 + 'deg'
					type: 'smooth'
				1:
					x: anchors[0].x + thickness * ( 32 / 85 )
					y: anchors[0].y - thickness * ( 80 / 85 ) / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
				2:
					x: anchors[0].x
					y: anchors[0].y - thickness * ( 80 / 85 )
					dirOut: 0 + 'deg'
					type: 'smooth'
				3:
					x: anchors[0].x - thickness * ( 80 / 85 ) / 2
					y: anchors[0].y - thickness * ( 80 / 85 ) / 2
					dirOut: - 90 + 'deg'
					type: 'smooth'
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x
					y: anchors[0].y
					dirOut: 0 + 'deg'
					# type: 'smooth'
					expand: Object({
						width: 32
						angle: - 90 + 'deg'
						distr: 0
					})
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[2].y + ( contours[0].nodes[1].y - contours[0].nodes[2].y ) / 2
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 30 / 85 ) * thickness
						angle: - 149 + 'deg'
						distr: .7
					})
				2:
					x: contours[0].nodes[3].x + (15)
					y: contours[0].nodes[2].y - 120
					dirIn: Math.max(Math.min(40 - thickness + 85, 40) , 15) + 'deg'
					type: 'smooth'
					expand: Object({
						width: 15
						angle: 135 + 'deg'
						distr: 0
					})
