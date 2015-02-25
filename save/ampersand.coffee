exports.glyphs['ampersand'] =
	unicode: '&'
	advanceWidth: width * 420 + thickness * 2 - 80
	anchors:
		0:
			x: 0
			y: xHeight + ( capHeight - xHeight ) * 1/3
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 420
					y: 0
					width: thickness * 1.2
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: width * 100
					y: xHeight * (380/465)
					width: thickness
					lDir: 90 + 'deg'
					lDir: Utils.lineAngle( contours[0].nodes[0], contours[0].nodes[1] ) - Math.PI / 2
					angle: Utils.lineAngle( contours[0].nodes[0], contours[0].nodes[1] ) - Math.PI / 2
					# lType: 'line'
				2:
					x: anchors[0].x
					y: anchors[0].y
					width: thickness
					lDir: 90 + 'deg'
					# lType: 'line'
				3:
					x: width * 125
					y: capHeight + overshoot
					width: thickness * contrast * .9
					lDir: 0 + 'deg'
					lType: 'line'
					distr: 0
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: width * 125
					y: capHeight + overshoot
					width: thickness * contrast * .9
					lDir: 0 + 'deg'
					distr: 0
				1:
					x: width * 250
					y: anchors[0].y
					width: thickness
					lDir: - 90 + 'deg'
				2:
					x: contours[0].nodes[1].x
					y: contours[0].nodes[1].y
					width: thickness * .4 + thickness * contrast * .4
					lDir: 30 + 'deg'
					angle: Utils.lineAngle( contours[0].nodes[0], contours[0].nodes[1] ) 
				3:
					x: - width * 70
					y: contours[0].nodes[1].y / 2
					width: thickness 
					lDir: 90 - 180 + 'deg'
				4:
					x: contours[1].nodes[0].x
					y: - overshoot
					width: thickness * contrast * .9
					lDir: 0 + 'deg'
					distr: 1
				5: 
					x: contours[0].nodes[0].x
					y: xHeight * 2/3
					width: thickness
					lDir: 90 + 'deg'
