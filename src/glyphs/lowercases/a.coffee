exports.glyphs['a'] =
	unicode: 'a'
	ot:
		advanceWidth: width * 470 + thickness - 85
	anchors:
		0:
			x: ( 295 + 21 ) * width
			y: 113
		1:
			x: 38
			y: 365
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: anchors[0].x + ( 195 - 11 )
					y: Math.min( 115, ( 115 / 500 ) * xHeight )
					dirOut: -100 + 'deg'
					type: 'smooth'
					expand: Object({
						width: 6 + thickness * ( 10 / 85 )
						angle: 180 - 26 + 'deg'
						distr: 0
					})
				1:
					x: Math.max( contours[0].nodes[2].expandedTo[1].x - thickness / 3, anchors[0].x + ( contours[0].nodes[0].x - anchors[0].x ) * ( 45 / 110 ) )
					y: - overshoot / 2
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: Math.min( Math.min( contours[0].nodes[2].expandedTo[1].y - 10 ,thickness * ( 69 / 85 ) ), thickness * ( 69 / 85 ) * ( xHeight / 500 ) )
						angle: 60 + 'deg'
						distr: 0
					})
				2:
					x: anchors[0].x
					y: Math.min( 102, ( 102 / 500 ) * xHeight )
					dirOut: 90 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 85 / 85 )
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].x
					y: ( 340 + 23 ) / 500 * xHeight
					dirOut: 90 + 'deg'
					tensionOut: 1.15
					expand: Object({
						width: thickness * ( 90 / 85 )
						angle: - 20 + 'deg'
						distr: 0.25
					})
				4:
					x: 253 * width
					y: xHeight + overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 45 / 85 ) * contrast
						angle: 180 - 138 + 'deg'
						distr: 1
					})
				5:
					x: 40
					y: Math.max( xHeight - 100 - 40 * aperture, contours[1].nodes[3].y + ( thickness * ( 60 / 85 ) * serifBall ) / 2 )
					dirIn: 70 + 20 * aperture + 'deg'
					type: 'smooth'
					tensionIn: 0.6
					expand: Object({
						width: Math.min( 135, thickness * ( 2 / 3 ) + thickness * ( 1 / 3 ) * serifBall )
						angle: 180 + 31 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x + thickness * (13/86)
					y: 95
					dirOut: 46 + 'deg'
					type: 'smooth'
					tensionOut: 1.2 * width
					tensionIn: 1.2 * width
					expand: Object({
						width: thickness * ( 15 / 85 ) * contrast
						angle: 116 + 'deg'
						distr: 0
					})
				1:
					x: 135 * width
					# x: contours[1].nodes[1].expandedTo[1].x + ( contours[1].nodes[3].expandedTo[0].x - contours[1].nodes[1].expandedTo[1].x ) * (130-105)/(298-105) + (11)
					y: - overshoot
					dirIn: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 64 / 85 )
						angle: 45 + 'deg'
						distr: 0
					})
				2:
					x: ( 35 + 21 )
					y: ( 90 / 500 ) * xHeight + ( thickness * ( 20 / 85 ) - 20 )
					y: contours[1].nodes[1].expandedTo[1].y + ( contours[1].nodes[3].expandedTo[0].y - contours[1].nodes[1].expandedTo[1].y ) * (90-35)/(260-35) * (xHeight/500)
					dirIn: - 90 + 'deg'
					type: 'smooth'
					tensionOut: 1.5
					expand: Object({
						width: thickness * ( 86 / 85 )
						angle: Math.max( thickness * ( 10 / 85 ), 16 ) + 'deg'
						distr: 0.25
					})
				3:
					x: contours[0].nodes[2].expandedTo[0].x + thickness * (8/86)
					y: ( 275 / 500 ) * xHeight * crossbar - (8)
					dirIn: - 163 + 'deg'
					tensionIn: 1.35
					# typeOut: 'line'
					expand: Object({
						width: thickness * ( 20 / 85 ) * contrast
						angle: - 90 + 'deg'
					})
		2:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[5].expandedTo[1].x
					y: contours[0].nodes[5].expandedTo[1].y
					dirOut: contours[0].nodes[5].dirIn
				1:
					x: contours[0].nodes[5].expandedTo[1].x + ( contours[0].nodes[5].expandedTo[0].x - contours[0].nodes[5].expandedTo[1].x ) * ( 50 / 75 ) * serifBall
					# y: Math.max( contours[0].nodes[5].expandedTo[1].y - thickness * ( 60 / 85 ) - serifBall, contours[1].nodes[3].y - serifBall )
					y: contours[0].nodes[5].expandedTo[1].y - thickness * ( 60 / 85 ) * serifBall
					dirOut: 0 + 'deg'
					type: 'smooth'
				2:
					x: Math.min( contours[0].nodes[5].expandedTo[0].x + 20 * serifBall, contours[0].nodes[4].expandedTo[0].x )
					# x: 135
					# y: xHeight - ( 500 - 340 )
					y: contours[2].nodes[1].y + ( contours[2].nodes[3].y - contours[2].nodes[1].y ) * ( 45 / 105 ) * serifBall
					y: contours[0].nodes[5].expandedTo[1].y + ( contours[2].nodes[1].y - contours[0].nodes[5].expandedTo[1].y ) * ( 30 / 105 )
					dirOut: contours[0].nodes[5].dirIn
					dirIn: contours[0].nodes[5].dirIn
					tensionIn: .7
				3:
					x: contours[0].nodes[5].expandedTo[0].x
					y: contours[0].nodes[5].expandedTo[0].y
					dirIn: contours[0].nodes[5].dirIn
					tensionIn: 0.5 + thickness / 85 / 2
