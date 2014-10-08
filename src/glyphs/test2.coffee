exports.glyphs['test2'] =
	type: 'test'
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					tags: '0'
					x: 0
					y: 0
					width: 20
					angle: 0
					lType: 'line'
				1:
					tags: '1'
					x: 50
					y: 400
					type: 'corner'
					width: 20
					angle: '-90deg'
					lType: 'line'
				2:
					tags: '2'
					x: 100
					y: 0
					width: 20
					angle: '180deg'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					tags: 'zob'
					y: xHeight / 2
					lType: 'line'
					width: 20
					angle: '90deg'
					onLine: [ contours[0].nodes[0], contours[0].nodes[1] ]
				1:
					tags: 'zab'
					y: xHeight / 2
					lType: 'line'
					width: 20
					angle: '90deg'
					onLine: [ contours[0].nodes[1], contours[0].nodes[2] ]