exports.glyphs['a'] =
	unicode: 'a'
	advanceWidth: width * 470 + thickness - 85
	anchors:
		0:
			x: ( 295 + 21 ) * width
			y: 113
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: anchors[0].x + ( 195 - 11 )
					y: ( 115 / 500 ) * xHeight
					width: 6 + thickness * ( 5 / 85 )
					lDir: - 100 + 'deg'
					angle: 180 - 26 + 'deg'
					distr: 0
				1:
					x: anchors[0].x + ( contours[0].nodes[0].x - anchors[0].x ) * ( 45 / 110 )
					y: - overshoot / 2
					width: thickness * ( 69 / 85 )
					lDir: 180 + 'deg'
					angle: 60 + 'deg'
					distr: 0
				2:
					x: anchors[0].x
					# y: 0 + serifHeight * serifCurve
					y: ( 95 + 7 )
					width: thickness * ( 89 / 85 )
					lDir: 109 + 'deg'
					lType: 'line'
					distr: 0.25
				3:
					x: contours[0].nodes[2].x
					y: ( 340 + 23 ) / 500 * xHeight
					width: thickness * ( 90 / 85 )
					lDir: 0 + 'deg'
					angle: - 20 + 'deg'
					distr: 0.25
				4:
					x: 253
					y: xHeight + overshoot
					width: thickness * ( 45 / 85 )
					lDir: 0 + 'deg'
					angle: 180 - 138 + 'deg'
					distr: 1
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[0].nodes[2].x - contours[0].nodes[2].width * 0.25 + thickness * ( 4 / 85 )
					y: ( 275 / 500 ) * xHeight
					width: thickness * ( 15 / 85 )
					lDir: 0 + 'deg'
					lType: 'line'
					# lTension: 0
					# rTension: 0
				1:
					x: ( 135 + 16 )
					y: ( 220 / 500 ) * xHeight + ( thickness * ( 10 / 85 ) - 10 )
					width: thickness * ( 63 / 85 )
					lDir: 64 + 'deg'
					angle: Math.min( thickness , 4.5 ) + 'deg'
					distr: 0.25
					# lTension: Math.min( thickness * ( 1.1 / 85 ), 1.6 )
				2:
					x: ( 35 + 21 )
					y: ( 90 / 500 ) * xHeight + ( thickness * ( 20 / 85 ) - 20 )
					width: thickness * ( 86 / 85 )
					lDir: 90 + 'deg'
					angle: Math.max( thickness * ( 10 / 85 ), 16 ) + 'deg'
					distr: 0.25
				3:
					x: 135
					y: - overshoot
					width: thickness * ( 64 / 85 )
					lDir: 0 + 'deg'
					angle: 45 + 'deg'
					distr: 0
				4:
					x: contours[0].nodes[2].x - contours[0].nodes[2].width * 0.25 + thickness * ( 15 / 85 )
					y: 95
					width: thickness * ( 11 / 85 )
					lDir: 71 + 'deg'
					angle: 116 + 'deg'
					distr: 0
	components:
		0:
			base: 'a_ball'
			anchors:
				0:
					x: contours[0].expanded[0].nodes[5].x
					y: contours[0].expanded[0].nodes[5].y
				1:
					x: contours[0].expanded[0].nodes[4].x
					y: contours[0].expanded[0].nodes[4].y
				2:
					x: contours[1].expanded[0].nodes[2].x
					y: contours[1].expanded[0].nodes[0].y	
				