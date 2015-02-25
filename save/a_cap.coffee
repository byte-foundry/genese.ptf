exports.glyphs['A'] =
	unicode: 'A'
	advanceWidth: width * 700 + ( thickness * 2 ) - 80
	anchors:
		0:
			x: width * 500 + thickness - 80
			y: 0
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
					x: ( anchors[0].x + thickness * opticThickness ) / 2
					y: capHeight
					width: thickness * opticThickness * contrast
					lDir: 90 + 'deg'
					lType: 'line'
					distr: 0
				2:
					x: ( anchors[0].x + thickness * opticThickness ) / 2
					y: capHeight
					width: thickness * opticThickness
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 1
				3:
					x: anchors[0].x + thickness * opticThickness
					y: 0
					width: thickness * opticThickness
					lDir: - 90 + 'deg'
					distr: 1
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					onLine: [ contours[0].nodes[0], contours[0].nodes[1] ]
					y: capHeight * 200/465 * crossbar
					width: thickness * opticThickness * contrast * .9
					lDir: Utils.lineAngle( contours[0].nodes[0], contours[0].nodes[1] ) + Math.PI / 2
					lType: 'line'
					distr: 1
					## transform: [1, 0, 0, 1, -10, 0]
				1:
					onLine: [ contours[0].nodes[2], contours[0].nodes[3] ]
					y: contours[1].nodes[0].y
					width: thickness * opticThickness * contrast * .9
					lDir: Utils.lineAngle( contours[0].nodes[2], contours[0].nodes[3] ) + Math.PI / 2 - Math.PI
					distr: 1



