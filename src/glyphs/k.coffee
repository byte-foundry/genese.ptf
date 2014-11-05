exports.glyphs['k'] =
	unicode: 'k'
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
					lType: 'line'
				1:
					x: 0
					y: ascenderHeight
					width: thickness
					lDir: '90deg'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: xHeight * 200/465
					width: thickness * contrast
					lDir: '90deg'
					lType: 'line'
					lDir: Utils.lineAngle( contours[2].nodes[0], contours[2].nodes[1] ) + Math.PI / 2
				1:
					x: 350 * width
					y: xHeight
					width: thickness * contrast + thickness * contrast * 0.5 * width
					lDir: '90deg'
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 120 * width
					onLine: [ contours[1].nodes[0], contours[1].nodes[1] ]
					width: thickness
					lDir: Utils.lineAngle( contours[1].nodes[0], contours[1].nodes[1] ) + Math.PI / 2
					lType: 'line'
				1:
					x: 380 * width
					y: 0
					width: thickness + thickness * 0.5 * width
					lDir: '90deg'
