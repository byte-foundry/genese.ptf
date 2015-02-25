exports.glyphs['test2'] =
	unicode: '0'
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
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					y: xHeight / 2
					lType: 'line'
					width: thickness
					lDir: Utils.lineAngle( contours[0].nodes[0], contours[0].nodes[1] ) + Math.PI / 2
					onLine: [ contours[0].nodes[0], contours[0].nodes[1] ]
				1:
					y: xHeight / 2
					lType: 'line'
					width: thickness
					lDir: Utils.lineAngle( contours[0].nodes[3], contours[0].nodes[2] ) + Math.PI / 2
					onLine: [ contours[0].nodes[2], contours[0].nodes[3] ]
					transform: [1, 0, 0, 1, 1, 0]