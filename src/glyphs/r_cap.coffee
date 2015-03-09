exports.glyphs['r_cap'] =
	unicode: 'R'
	advanceWidth: width * 500 + ( thickness * 2 ) - 80 + serifWidth
	anchors:
		0:
			x: width * 380 + thickness - 80
			y: capHeight * 280/688 * crossbar - thickness / 4 + 20
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: 0
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: 0
					y: capHeight
					width: thickness * opticThickness
					lDir: 90 + 'deg'
					lType: 'line'
		1:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 1
					y: capHeight
					width: thickness * opticThickness * contrast * .85
					lDir: 90 + 'deg'
					angle: - 85 + 'deg'
					distr: 0
					lType: 'line'
				1:
					x: anchors[0].x / 2
					y: capHeight
					width: thickness * opticThickness * contrast * .85
					lDir: '0deg'
					angle: - 85 + 'deg'
					distr: 0
				2:
					x: anchors[0].x
					y: anchors[0].y + ( capHeight - anchors[0].y ) / 2
					width: thickness * opticThickness
					lDir: - 90 + 'deg'
				3:
					x: anchors[0].x / 2
					y: anchors[0].y
					width: thickness * opticThickness * contrast * .85
					lDir: 180 + 'deg'
					distr: 0
					lType: 'line'
				4:
					x: 1
					y: anchors[0].y
					width: thickness * opticThickness * contrast * .85
					lDir: - 180 + 'deg'
					distr: 0
		2:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: contours[1].nodes[3].x
					y: anchors[0].y
					width: thickness * opticThickness * contrast * .55
					lDir: 0 + 'deg'
					distr: 1
				1:
					x: contours[1].nodes[2].x - 20
					y: anchors[0].y / 2 + thickness / 2 * contrast - 40 * contrast
					width: thickness * opticThickness
					lDir: - 90 + 'deg'
					angle: 180 + 25 - thickness / 8 + 'deg'
					# lDir: Utils.lineAngle( contours[2].nodes[0], contours[2].nodes[1] ) - Math.PI / 2
					# rTension : 0
					# distr: 0
					lType: 'line'
				2:
					x: contours[1].nodes[2].x
					y: 0
					width: thickness * opticThickness * 1.1
					lDir: - 90 + 'deg'
					# angle: 0 + 'deg'
					distr: .8
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
			base: 'serif_TopLeft'
			anchors:
				0:
					y: capHeight - serifHeight
					onLine: [ contours[0].expanded[0].nodes[0], contours[0].expanded[0].nodes[1] ]
				1:
					y: capHeight - serifHeight
					x: contours[0].nodes[0].x + thickness * opticThickness * contrast
