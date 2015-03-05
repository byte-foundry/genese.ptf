exports.glyphs['i'] =
	unicode: 'i'
	advanceWidth: width * 80 + thickness
	anchors:
		0:
			x: 0
			y: xHeight + 50
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
					y: xHeight
					width: thickness
					lDir: '90deg'
		1:
			type: 'closed'
			nodes:
				0:
					x: 1 ## should be 0
					y: anchors[0].y + thickness * 1.1
					lDir: 0 + 'deg'
				1:
					x: thickness / 2 * 1.1
					y: anchors[0].y + thickness / 2 * 1.1
					lDir: -90 + 'deg'
				2:
					x: 1 ## should be 0
					y: anchors[0].y 
					lDir: 180 + 'deg'
				3:
					x: - thickness / 2 * 1.1
					y: anchors[0].y + thickness / 2 * 1.1
					lDir: 90 + 'deg'
	components:
		0:
			base: 'serif_BR'
			# transform: [1, 0, 0, 1, 0, 0]
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]
				1:
					x: contours[0].expanded[0].nodes[3].x
					y: contours[0].expanded[0].nodes[3].y
		1:
			base: 'serif_BR'
			transform: [-1, 0, 0, 1, 0, 0]
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]
				1:
					x: contours[0].expanded[0].nodes[3].x
					y: contours[0].expanded[0].nodes[3].y
		2:
			base: 'serif_BR'
			transform: [-1, 0, 0, -1, 0, 465]
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]
				1:
					x: contours[0].expanded[0].nodes[3].x
					y: contours[0].expanded[0].nodes[3].y

