exports.glyphs['k'] =
	unicode: 'k'
	advanceWidth: width * 440 + thickness
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0 + serifHeight * serifCurve
					width: thickness
					lDir: '90deg'
					lType: 'line'
				1:
					x: 0
					y: ascenderHeight - serifHeight * serifCurve + 20 - 40 * serifCurve - ( thickness + 80 ) / 4
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
					y: 0 + serifHeight * serifCurve
					width: thickness + thickness * 0.5 * width
					lDir: '90deg'
	components:
		0:
			base: 'serif_Bottom'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]		
		1:
			base: 'serif_Bottom'
			anchors:
				0:
					y: serifHeight
					onLine: [ contours[2].expanded[0].nodes[0], contours[2].expanded[0].nodes[1] ]
				1:
					y: serifHeight
					onLine: [ contours[2].expanded[0].nodes[2], contours[2].expanded[0].nodes[3] ]					
		2:
			base: 'term_TL'
			anchors:
				0:
					x: contours[0].expanded[0].nodes[1].x
					y: contours[0].expanded[0].nodes[1].y
				1:
					x: contours[0].expanded[0].nodes[2].x
					y: contours[0].expanded[0].nodes[2].y
				2:
					x: 0
					y: ascenderHeight				