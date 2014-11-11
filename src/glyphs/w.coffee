exports.glyphs['w'] =
	unicode: 'w'
	advanceWidth: width * 680 + ( thickness * 3 ) - 160
	anchors:
		0:
			x: width * 325 + thickness - 80 
			y: xHeight
		1:
			x: anchors[0].x + width * 325 + 2 * ( thickness - 80 ) + 40
			y: xHeight
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: xHeight
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				1:
					x: anchors[0].x / 2
					y: - overshoot
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				2:
					x: anchors[0].x / 2 + thickness / 2
					y: - overshoot
					width: thickness * contrast
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 0
				3:
					x: anchors[0].x + thickness / 2
					y: xHeight
					width: thickness * contrast
					lDir: - 90 + 'deg'
					distr: 0
					lType: 'line'
				4:
					x: anchors[0].x + thickness - thickness * contrast
					y: xHeight
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				5:
					x: anchors[0].x + thickness - thickness * contrast
					y: xHeight
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				6:
					x: anchors[0].x + ( anchors[1].x - anchors[0].x ) / 2
					y: - overshoot
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				7:
					x: anchors[0].x + ( anchors[1].x - anchors[0].x ) / 2 + thickness / 2
					y: - overshoot
					width: thickness * contrast
					lDir: - 90 + 'deg'
					lType: 'line'
					distr: 0
				8:
					x: anchors[1].x
					y: xHeight
					width: thickness * contrast
					lDir: - 90 + 'deg'
					distr: 0
				