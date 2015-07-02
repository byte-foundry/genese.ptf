exports.glyphs['s'] =
	unicode: 's'
	ot:
		advanceWidth: contours[0].nodes[4].expandedTo[1].x + 35 * spacing
	anchors:
		0:
			x: 0
			y: 0
	tags: [
		'all',
		'latin',
		'lowercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 185
					x: Math.max(
						contours[0].nodes[1].expandedTo[1].x + 85,
						contours[0].nodes[5].expandedTo[1].x - 15
					)
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 86 )
						angle: - 100 + 'deg'
						distr: 0
					})
				1:
					x: 35 + (21)
					y: xHeight * ( 370 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 70 / 86 )
						angle: 30 + 'deg'
						distr: 0.25
					})
				2:
					x: 153
					x:
						Math.max(
							contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) / 2 - ( 55 / 85 ) * thickness,
							contours[0].nodes[1].expandedTo[1].x + ( contours[0].nodes[0].expandedTo[1].x - contours[0].nodes[1].expandedTo[1].x ) / 2
						)
					# y: xHeight * ( 283 / 500 )
					y: contours[0].nodes[1].expandedTo[0].y + ( contours[0].nodes[4].expandedTo[1].y - contours[0].nodes[1].expandedTo[0].y ) / 2 + ( ( ( 20 / 85 ) * thickness ) / 500 ) * xHeight
					# dirOut: - 20 + 'deg'
					# dirOut: Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[3].point )
					# dirOut: Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[3].point )
					type: 'smooth'
					dirIn: Utils.lineAngle( contours[0].nodes[2].expandedTo[1].point, contours[0].nodes[3].expandedTo[1].point )
					expand: Object({
						width: thickness * ( 88 / 85 )
						angle: 70 + 'deg'
					})
				3:
					x: contours[0].nodes[4].expandedTo[1].x - ( contours[0].nodes[2].x - contours[0].nodes[1].expandedTo[0].x )
					# x:
					# 	Math.max(
					# 		contours[0].nodes[1].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[1].x - contours[0].nodes[1].expandedTo[0].x ) / 2 - ( 55 / 85 ) * thickness,
					# 		contours[0].nodes[5].expandedTo[0].x + ( contours[0].nodes[4].expandedTo[0].x - contours[0].nodes[5].expandedTo[0].x ) / 2
					# 	)
					# y: xHeight * ( 252 / 500 )
					y: contours[0].nodes[1].expandedTo[0].y + ( contours[0].nodes[4].expandedTo[1].y - contours[0].nodes[1].expandedTo[0].y ) / 2 - ( ( ( 20 / 85 ) * thickness ) / 500 ) * xHeight
					# dirOut: - 22 + 'deg'
					# dirOut: Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[4].expandedTo[1].point )
					# dirIn: Utils.lineAngle( contours[0].nodes[3].expandedTo[0].point, contours[0].nodes[4].expandedTo[1].point )
					dirOut: Utils.lineAngle( contours[0].nodes[2].point, contours[0].nodes[3].point )
					# dirOut: Utils.lineAngle( contours[0].nodes[2].expandedTo[0].point, contours[0].nodes[3].expandedTo[0].point )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 88 / 85 )
						angle: 70 + 'deg'
					})
				4:
					x: 300 + (21)
					y: xHeight * ( ( 105 + (20) ) / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 81 / 86 )
						angle: 30 + 'deg'
						distr: 0.25
					})
				5:
					x: 200
					y: - overshoot
					dirIn: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 30 / 86 )
						distr: 1
					})
		1:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[0].expandedTo[0].x
					y: contours[0].nodes[0].expandedTo[0].y
					tensionOut: 2
				1:
					x: contours[1].nodes[0].x + 115
					y: xHeight - 30
					tensionIn: 0.5
					tensionOut: 1.5
				2:
					x: contours[1].nodes[1].x + 20
					y: xHeight
					dirIn: - 100 + 'deg'
					typeOut: 'line'
				3:
					x: contours[1].nodes[2].x + 15
					y: contours[1].nodes[2].y
					typeOut: 'line'
				4:
					x: contours[1].nodes[3].x
					y: Math.max( contours[1].nodes[3].y - 165, contours[0].nodes[2].y + 20 )
				5:
					x: contours[1].nodes[4].x - 15
					y: contours[1].nodes[4].y
					dirOut: 95 + 'deg'
					tensionOut: 1.2
				6:
					x: contours[0].nodes[0].expandedTo[1].x
					y: contours[0].nodes[0].expandedTo[1].y
		2:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[5].expandedTo[0].x
					y: contours[0].nodes[5].expandedTo[0].y
				1:
					x: 50
					y: Math.min( 175, contours[0].nodes[3].y )
					dirIn: - 77 + 'deg'
					tensionIn: 1.1
					typeOut: 'line'
				2:
					x: contours[2].nodes[1].x - 15
					y: contours[2].nodes[1].y - 5
					dirIn: - 90 + 'deg'
					typeOut: 'line'
				3:
					x: contours[2].nodes[2].x + 5
					y: 0
					typeOut: 'line'
				4:
					x: contours[2].nodes[3].x + 15
					y: contours[2].nodes[3].y
					dirOut: 77 + 'deg'
				5:
					x: contours[2].nodes[4].x + 20
					y: contours[2].nodes[4].y + 35
					tensionOut: 0.5
				6:
					x: contours[0].nodes[5].expandedTo[1].x
					y: contours[0].nodes[5].expandedTo[1].y
					tensionIn: 1.5
#
# exports.glyphs['s'] =
# 	unicode: 's'
# 	ot:
# 		advanceWidth: contours[0].nodes[5].expandedTo[1].x + 35 * spacing
# 	anchors:
# 		0:
# 			x: 0
# 			y: 0
# 	contours:
# 		0:
# 			skeleton: true
# 			closed: false
# 			nodes:
# 				0:
# 					x: 330
# 					y: 420
# 					dirOut: 180 + 120 + 'deg'
# 					type: 'smooth'
# 					expand: Object({
# 						width: thickness * ( 30 / 86 )
# 						distr: 0.75
# 					})
# 				1:
# 					x: 185 + 15
# 					y: xHeight + overshoot
# 					dirOut: 0 + 'deg'
# 					type: 'smooth'
# 					expand: Object({
# 						width: thickness * ( 25 / 86 )
# 						angle: - 100 + 'deg'
# 						distr: 0
# 					})
# 				2:
# 					x: 35 + (21)
# 					y: xHeight * ( 370 / 500 )
# 					dirOut: 90 + 'deg'
# 					type: 'smooth'
# 					expand: Object({
# 						width: thickness * ( 70 / 86 )
# 						angle: 30 + 'deg'
# 						distr: 0.25
# 					})
# 				3:
# 					x: 153
# 					x:
# 						Math.max(
# 							contours[0].nodes[2].expandedTo[0].x + ( contours[0].nodes[5].expandedTo[1].x - contours[0].nodes[2].expandedTo[0].x ) / 2 - ( 55 / 85 ) * thickness,
# 							contours[0].nodes[2].expandedTo[1].x + ( contours[0].nodes[1].expandedTo[1].x - contours[0].nodes[2].expandedTo[1].x ) / 2
# 						)
# 					y: contours[0].nodes[2].expandedTo[0].y + ( contours[0].nodes[5].expandedTo[1].y - contours[0].nodes[2].expandedTo[0].y ) / 2 + ( ( ( 20 / 85 ) * thickness ) / 500 ) * xHeight
# 					type: 'smooth'
# 					dirIn: Utils.lineAngle( contours[0].nodes[3].expandedTo[1].point, contours[0].nodes[4].expandedTo[1].point )
# 					expand: Object({
# 						width: thickness * ( 88 / 85 )
# 						angle: 70 + 'deg'
# 					})
# 				4:
# 					x: contours[0].nodes[5].expandedTo[1].x - ( contours[0].nodes[3].x - contours[0].nodes[2].expandedTo[0].x )
# 					y: contours[0].nodes[2].expandedTo[0].y + ( contours[0].nodes[5].expandedTo[1].y - contours[0].nodes[2].expandedTo[0].y ) / 2 - ( ( ( 20 / 85 ) * thickness ) / 500 ) * xHeight
# 					dirOut: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[4].point )
# 					type: 'smooth'
# 					expand: Object({
# 						width: thickness * ( 88 / 85 )
# 						angle: 70 + 'deg'
# 					})
# 				5:
# 					x: 300 + (21)
# 					y: xHeight * ( ( 105 + (20) ) / 500 )
# 					dirOut: 90 + 'deg'
# 					type: 'smooth'
# 					expand: Object({
# 						width: thickness * ( 81 / 86 )
# 						angle: 30 + 'deg'
# 						distr: 0.25
# 					})
# 				6:
# 					x: 200
# 					y: - overshoot
# 					dirIn: 180 + 'deg'
# 					type: 'smooth'
# 					expand: Object({
# 						width: thickness * ( 30 / 86 )
# 						distr: 1
# 					})
# 				7:
# 					x: 52
# 					y: 92
# 					dirIn: 180 - 62 + 'deg'
# 					type: 'smooth'
# 					expand: Object({
# 						width: thickness * ( 30 / 86 )
# 						distr: 0.25
# 					})
