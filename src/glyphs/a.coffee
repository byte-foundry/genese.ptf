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
						width: 6 + thickness * ( 5 / 85 )
						angle: 180 - 26 + 'deg'
						distr: 0
					})
				1:
					x: anchors[0].x + ( contours[0].nodes[0].x - anchors[0].x ) * ( 45 / 110 )
					y: - overshoot / 2
					dirOut: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: Math.min( thickness * ( 69 / 85 ), thickness * ( 69 / 85 ) * ( xHeight / 500 ) )
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
					expand: Object({
						width: thickness * ( 90 / 85 )
						angle: - 20 + 'deg'
						distr: 0.25
					})
				4:
					x: 253
					y: xHeight + overshoot
					dirIn: 0 + 'deg'
					expand: Object({
						width: thickness * ( 45 / 85 ) * contrast
						angle: 180 - 138 + 'deg'
						distr: 1
					})
		1:
			skeleton: true
			closed: false
			nodes:
				0:
					x: contours[0].nodes[2].expandedTo[0].x + thickness * (8/86)
					y: ( 275 / 500 ) * xHeight
					dirOut: 0 + 'deg'
					typeOut: 'line'
					expand: Object({
						width: thickness * ( 15 / 85 ) * contrast
						angle: 0 + 'deg'
					})
				1:
					x: ( 135 + 16 )
					y: ( 220 / 500 ) * xHeight + ( thickness * ( 10 / 85 ) - 10 )
					# dirOut: - 157 + 'deg'
					dirOut: Utils.lineAngle( contours[1].nodes[0].expandedTo[1].point, contours[1].nodes[1].expandedTo[1].point )
					# type: 'smooth'
					expand: Object({
						width: thickness * ( 63 / 85 )
						angle: Math.min( thickness , 4.5 ) + 'deg'
						distr: 0.25
					})
				2:
					x: ( 35 + 21 )
					y: ( 90 / 500 ) * xHeight + ( thickness * ( 20 / 85 ) - 20 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 86 / 85 )
						angle: Math.max( thickness * ( 10 / 85 ), 16 ) + 'deg'
						distr: 0.25
					})
				3:
					x: 135
					y: - overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 64 / 85 )
						angle: 45 + 'deg'
						distr: 0
					})
				4:
					x: contours[0].nodes[2].expandedTo[0].x + thickness * (13/86)
					y: 95
					dirIn: 46 + 'deg'
					tensionOut: 1.2
					tensionIn: 1.2
					expand: Object({
						width: thickness * ( 11 / 85 ) * contrast
						angle: 116 + 'deg'
						distr: 0
					})
		2:
			skeleton: false
			closed: false
			nodes:
				0:
					x: contours[0].nodes[4].expandedTo[1].x
					y: contours[0].nodes[4].expandedTo[1].y
				1:
					x: 73
					y: xHeight - ( 500 - 430 )
					type: 'smooth'
					dirOut: Utils.lineAngle( contours[2].nodes[0].point, anchors[1].point )
				2:
					x: 38
					y: xHeight - ( 500 - 365 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					tensionOut: .7
				3:
					x: contours[2].nodes[2].x + ( contours[2].nodes[5].x - contours[2].nodes[2].x ) * ( 40 / 105 )
					y: xHeight - ( 500 - 295 )
					dirOut: 0 + 'deg'
					tensionOut: .3
					tensionIn: .3
				4:
					x: Math.min( contours[2].nodes[3].x + thickness * (55/85) * contrast, contours[0].nodes[4].expandedTo[0].x )
					y: xHeight - ( 500 - 340 )
					dirOut: 90 + 'deg'
					dirIn: 90 + 'deg'
					tensionIn: .7
				5:
					x: contours[2].nodes[1].x + thickness * (40/85)
					y: Math.max( contours[2].nodes[1].y - thickness * (15/85) - 15, contours[2].nodes[1].y - 30 )
					dirOut: 90 + 'deg'
					dirIn: - 90 + 'deg'
					tensionOut: 0.5 + thickness / 85 / 2
				6:
					x: contours[0].nodes[4].expandedTo[0].x
					y: contours[0].nodes[4].expandedTo[0].y
					dirOut: 0 + 'deg'
					tensionIn: 0.5 + thickness / 85 / 2
