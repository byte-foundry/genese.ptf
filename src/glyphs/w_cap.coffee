exports.glyphs['w_cap'] =
	unicode: 'W'
	advanceWidth: width * 950 + ( thickness * 3 ) - 160
	anchors:
		0:
			x: width * 450 + thickness - 80 
			y: capHeight
		1:
			x: anchors[0].x + width * 450 + 2 * ( thickness - 80 ) + 40
			y: capHeight
	contours:
		0:
			tags: 'skeleton'
			type: 'open'
			nodes:
				0:
					x: 0
					y: capHeight
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
					y: capHeight
					width: thickness * contrast
					lDir: - 90 + 'deg'
					distr: 0
					lType: 'line'
				4:
					x: anchors[0].x + thickness - thickness * contrast
					y: capHeight
					width: thickness
					lDir: 90 + 'deg'
					lType: 'line'
				5:
					x: anchors[0].x + thickness - thickness * contrast
					y: capHeight
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
					y: capHeight
					width: thickness * contrast
					lDir: - 90 + 'deg'
					distr: 0
				