exports.glyphs['_quoteleft'] =
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
					y: anchors[0].y - 120
					dirOut: 180 + 'deg'
					type: 'smooth'
				1:
					x: contours[0].nodes[0].x - thickness * ( 32 / 85 )
					y: contours[0].nodes[0].y - thickness * ( 80 / 85 ) / 2
					dirOut: 90 + 'deg'
					type: 'smooth'
				2:
					x: contours[0].nodes[0].x
					y: contours[0].nodes[0].y - thickness * ( 80 / 85 )
					dirOut: 0 + 'deg'
					type: 'smooth'
				3:
					x: contours[0].nodes[0].x + thickness * ( 80 / 85 ) / 2
					y: contours[0].nodes[0].y - thickness * ( 80 / 85 ) / 2
					dirOut: - 90 + 'deg'
					type: 'smooth'
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y
					dirOut: 0 + 'deg'
					# type: 'smooth'
					expand: Object({
						width: 32
						angle: - 90 + 'deg'
						distr: 1
					})
				1:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[3].y + ( contours[0].nodes[0].y - contours[0].nodes[3].y ) / 2 + (5)
					dirOut: - 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: ( 30 / 85 ) * thickness
						angle: 180 + 32 + 'deg'
						distr: .3
					})
				2:
					x: anchors[0].x + 30
					y: anchors[0].y
					dirIn: Math.max(Math.min(40 - thickness + 80, 40) , 15) + 'deg'
					type: 'smooth'
					expand: Object({
						width: 15
						angle: 130 + 'deg'
						distr: 1
					})
