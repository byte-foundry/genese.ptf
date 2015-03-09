# exports.glyphs['n_cap'] =
# 	unicode: 'N'
# 	advanceWidth: width * 600 + thickness * opticThickness * 2 * contrast
# 	contours:
# 		0:
# 			tags: 'skeleton'
# 			type: 'open'
# 			nodes:
# 				0:
# 					x: 0
# 					y: 0
# 					width: thickness * opticThickness * contrast
# 					lDir: 90 + 'deg'
# 					lType: 'line'
# 					distr: 0
# 				1:
# 					x: contours[0].nodes[0].x
# 					y: capHeight
# 					width: thickness * opticThickness * contrast
# 					lDir: 90 + 'deg'
# 					lType: 'line'
# 					distr: 0
# 		1:
# 			tags: 'skeleton'
# 			type: 'open'
# 			nodes:
# 				0:
# 					x: width * 550 + thickness * opticThickness
# 					y: 0
# 					width: thickness * opticThickness * contrast
# 					lDir: 90 + 'deg'
# 					lType: 'line'
# 					distr: 1
# 				1:
# 					x: contours[1].nodes[0].x
# 					y: capHeight
# 					width: thickness * opticThickness * contrast
# 					lDir: 90 + 'deg'
# 					lType: 'line'
# 					distr: 1
# 		2:
# 			tags: 'skeleton'
# 			type: 'open'
# 			nodes:
# 				0:
# 					x: contours[0].nodes[1].x + thickness * opticThickness * contrast
# 					y: contours[0].nodes[1].y 
# 					width: thickness * opticThickness
# 					lDir: Utils.lineAngle( contours[0].nodes[1], contours[1].nodes[0] )
# 					lDir: 0 + 'deg'
# 					lType: 'line'
# 					distr: 0
# 				1:
# 					x: contours[0].nodes[1].x + thickness * opticThickness * contrast
# 					y: contours[0].nodes[1].y 
# 					width: thickness * opticThickness
# 					lDir: Utils.lineAngle( contours[0].nodes[1], contours[1].nodes[0] )
# 					lType: 'line'
# 					distr: 0
# 				2:
# 					x: contours[1].nodes[0].x - thickness * opticThickness * contrast
# 					y: contours[1].nodes[0].y
# 					width: thickness * opticThickness
# 					lDir: Utils.lineAngle( contours[0].nodes[1], contours[1].nodes[0] )
# 					lType: 'line'
# 					distr: 1
# 				3:
# 					x: contours[1].nodes[0].x - thickness * opticThickness * contrast
# 					y: contours[1].nodes[0].y
# 					width: thickness * opticThickness
# 					lDir: 0 + 'deg'
# 					lType: 'line'
# 					distr: 1



exports.glyphs['n_cap'] =
	unicode: 'N'
	advanceWidth: width * 850 + thickness * opticThickness * 2 * contrast
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness * opticThickness * contrast
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					width: thickness * opticThickness * contrast
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				2:
					x: contours[0].nodes[0].x + thickness * opticThickness * contrast
					y: capHeight
					width: 0
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				3:
					x: contours[0].nodes[2].x
					y: contours[0].nodes[2].y
					width: thickness * opticThickness + thickness * opticThickness * .6
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
				4:
					x: width * 500 + thickness * opticThickness
					y: 0
					width: thickness * opticThickness + thickness * opticThickness * .6
					lDir: 360 + 'deg'
					lType: 'line'
					distr: 1
				5:
					x: contours[0].nodes[4].x + thickness * opticThickness * contrast
					y: 0
					width: thickness * opticThickness
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 1
				6:
					x: contours[0].nodes[5].x
					y: 0
					width: thickness * opticThickness * contrast
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 1
				7:
					x: contours[0].nodes[6].x
					y: capHeight
					width: thickness * opticThickness * contrast
					lDir: 90 + 'deg'
					lType: 'line'
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
					x: contours[0].nodes[0].x + thickness * opticThickness * contrast
		1:
			base: 'serif_Top'
			anchors:
				0:
					y: capHeight - serifHeight
					x: contours[0].nodes[6].x - thickness * opticThickness * contrast
				1:
					y: capHeight - serifHeight
					x: contours[0].nodes[6].x 
		2:
			base: 'serif_TopLeft'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					x: contours[0].nodes[0].x + thickness * opticThickness * contrast
