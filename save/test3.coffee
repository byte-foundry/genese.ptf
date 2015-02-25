exports.glyphs['test3'] =
	type: 'test'
	anchors:
		0:
			x: width * 400 / 2
			y: 400
		1:
			x: width * 400
			y: 0
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness
					lDir: '90deg'
					distr: 0
					lType: 'line'
				1:
					type: 'corner'
					x: anchors[0].x
					y: anchors[0].y
					width: thickness
					lDir: '90deg'
					distr: 0
					lType: 'line'
				2:
					type: 'corner'
					x: anchors[0].x
					y: anchors[0].y
					width: thickness * 2
					lDir: '-90deg'
					distr: 1
					lType: 'line'
				3:
					x: anchors[1].x
					y: anchors[1].y
					width: thickness * 2
					lDir: '-90deg'
					distr: 1
	components:
		0:
			base: 'test4'
			anchors:
				0:
					y: serifHeight / 4
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]
				1:
					x: contours[0].expanded[0].nodes[3].x
					y: contours[0].expanded[0].nodes[3].y
			transform: [1, 0, 0, 1, -2, 0]
		1:
			base: 'test4'
			anchors:
				0:
					y: serifHeight / 4
					onLine: [ contours[0].expanded[0].nodes[6], contours[0].expanded[0].nodes[7] ]
				1:
					x: contours[0].expanded[0].nodes[7].x
					y: contours[0].expanded[0].nodes[7].y
			transform: [1, 0, 0, 1, -2, 0]