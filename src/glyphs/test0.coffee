exports.glyphs['test0'] =
	type: 'test'
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					type: 'smooth'
					x: 0
					y: 0
					width: thickness * contrast
				1:
					x: nodes[3].x / 5
					y: nodes[2].y
					width: thickness * contrast
					angle: 10
				2:
					x: nodes[3].x / width
					y: xHeight
					width: thickness * contrast * 0.8
					angle: '-90deg'
					distr: 0
					oType: 'line'
				3:
					x: width * 400
					y: 0
					width: thickness * contrast
					angle: -180
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					y: xHeight / 2
					onLine: [ nodes[0], nodes[2] ]
					width: thickness
					angle: '90deg'
				1:
					y: xHeight / 2
					onLine: [ nodes[2], nodes[3] ]
					width: -thickness
					angle: '90deg'