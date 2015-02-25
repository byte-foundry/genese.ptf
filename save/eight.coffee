exports.glyphs['eight'] =
	unicode: '8'
	anchors:
		0:
			x: width * 360 - 30
			y: capHeight * (550/700)
		1:
			x: 0+0
			y: capHeight + overshoot
	contours:
		0:
			tags: 'skeleton'
			type: 'closed'
			nodes:
				0:
					x: 0
					y: capHeight * (180/700)
					width: thickness * 3/5 + thickness * 2/5 * contrast
					lDir: '90deg'
				1:
					x: width * 180
					y: capHeight * (370/700)
					width: thickness * contrast * .85
					lDir: 20 * contrast + 'deg'
				2:
					x: width * 360 - 30
					y: contours[0].nodes[1].y + (anchors[1].y - contours[0].nodes[1].y) * 1/2 
					width: contours[0].nodes[0].width
					lDir: '90deg'
				3:
					x: contours[0].nodes[2].x / 2
					y: anchors[1].y
					width: thickness *.85 * contrast
					lDir: '180deg'
					distr: 1
				4:
					x: contours[0].nodes[0].x + 15
					y: contours[0].nodes[2].y
					width: thickness
					lDir: '270deg'
				5:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					width: thickness * 0.9
					lDir: '340deg'
				6:
					x: width * 360
					y: contours[0].nodes[0].y
					width: thickness
					lDir: '270deg'
				7:
					x: contours[0].nodes[1].x
					y: 0 - overshoot
					width: thickness *.85 * contrast
					lDir: '180deg'
					distr: 0
