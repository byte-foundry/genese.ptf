exports.glyphs['k_cap'] =
	unicode: 'K'
	advanceWidth: width * 600 + thickness
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0 + serifHeight * serifCurve
					width: thickness * opticThickness
					lDir: '90deg'
					lType: 'line'
				1:
					x: 0
					y: capHeight - serifHeight * serifCurve 
					width: thickness * opticThickness
					lDir: '90deg'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: capHeight * 200/465
					width: thickness * opticThickness * contrast
					lDir: '90deg'
					lType: 'line'
					lDir: Utils.lineAngle( contours[2].nodes[0], contours[2].nodes[1] ) + Math.PI / 2
				1:
					x: 470 * width + thickness
					y: capHeight
					width: thickness * opticThickness * contrast + thickness * opticThickness * contrast * 0.5 * width
					lDir: '90deg'
					distr: 1
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 120 * width
					onLine: [ contours[1].nodes[0], contours[1].nodes[1] ]
					width: thickness * opticThickness
					lDir: Utils.lineAngle( contours[1].nodes[0], contours[1].nodes[1] ) + Math.PI / 2
					lType: 'line'
				1:
					x: 480 * width + thickness
					y: 0 + serifHeight * serifCurve
					y: 0
					width: thickness * opticThickness + thickness * 0.5 * width
					lDir: '90deg'
					distr: 1
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
			base: 'serif_Top'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[2], contours[0].expanded[0].nodes[3] ]			
		# 2:
		# 	base: 'serif_Bottom'
		# 	anchors:
		# 		0:
		# 			y: serifHeight
		# 			onLine: [ contours[2].expanded[0].nodes[0], contours[2].expanded[0].nodes[1] ]
		# 		1:
		# 			y: serifHeight
		# 			onLine: [ contours[2].expanded[0].nodes[2], contours[2].expanded[0].nodes[3] ]					
