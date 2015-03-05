exports.glyphs['c'] =
	unicode: 'c'
	advanceWidth: width * 420 + thickness
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 280 + thickness
					y: 70 + 50 * contrast
					width: thickness * contrast * .3 + thickness * .6 
					lDir: - 120 + 'deg'
					distr: 0
				1:
					x: contours[0].nodes[0].x / 2
					y: - overshoot
					width: thickness * contrast * .9
					lDir: 180 + 'deg'
					distr: 0
				2:
					x: 0
					y: xHeight / 2
					width: thickness
					lDir: 90 + 'deg'
				3:
					x: contours[0].nodes[1].x 
					y: xHeight + overshoot
					width: thickness * contrast * .9
					lDir: 0 + 'deg'
					distr: 0
				4:
					x: contours[0].nodes[0].x 
					y: xHeight - 70 - 50 * contrast
					width: thickness * contrast * .3 + thickness * .6 
					lDir: - 60 + 'deg'
					distr: 0
# exports.glyphs['c'] =
# 	unicode: 'c'
# 	advanceWidth: ( width * 420 + thickness ) * anchors[1].x
# 	anchors:
# 		0:
# 			x: ( thickness - 4 ) / ( 300 - 4 ) 					## envergure
# 			y: anchors[0].x + ( 1 - .2568 ) 					## ratio croissant
# 		1:
# 			x: 1 + ( 1 - anchors[0].x ) 						## ratio decroissant
# 			y: Math.max( 150, 150 * anchors[1].x * width )		## space left
# 	contours:
# 		0:
# 			tags: 'skeleton'
# 			type: 'open'
# 			nodes:
# 				0:
# 					x: width * 280 + thickness + anchors[1].y
# 					y: 70 + 50 * contrast
# 					width: thickness * contrast * .3 + thickness * .6 
# 					lDir: - 120 + 'deg'
# 					distr: 0
# 				1:
# 					x: ( contours[0].nodes[0].x + anchors[1].y ) / 2
# 					y: - overshoot
# 					width: thickness * contrast * .9
# 					lDir: 180 + 'deg'
# 					distr: 0
# 				2:
# 					x: 0 + anchors[1].y
# 					y: xHeight / 2
# 					width: thickness
# 					lDir: 90 + 'deg'
# 				3:
# 					x: contours[0].nodes[1].x 
# 					y: xHeight + overshoot
# 					width: thickness * contrast * .9
# 					lDir: 0 + 'deg'
# 					distr: 0
# 				4:
# 					x: contours[0].nodes[0].x 
# 					y: xHeight - 70 - 50 * contrast
# 					width: thickness * contrast * .3 + thickness * .6 
# 					lDir: - 60 + 'deg'
# 					distr: 0
# 		1:
# 			tags: 'skeleton'
# 			type: 'open'
# 			nodes:
# 				0:
# 					x: 0
# 					y: xHeight + 100
# 					width: 50
# 					lDir: 0 + 'deg'
# 					lType: 'line'
# 				1:
# 					x: anchors[1].y
# 					y: xHeight + 100
# 					width: 50
# 					lDir: 0 + 'deg'
# 					lType: 'line'
# 		2:
# 			tags: 'skeleton'
# 			type: 'open'
# 			nodes:
# 				0:
# 					x: 0
# 					y: - 100
# 					width: 50
# 					lDir: 0 + 'deg'
# 					lType: 'line'
# 				1:
# 					x: anchors[1].x * 100
# 					y: - 100
# 					width: 50
# 					lDir: 0 + 'deg'
# 					lType: 'line'