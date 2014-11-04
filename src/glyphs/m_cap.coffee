exports.glyphs['m_cap'] =
	type: 'test'
	anchors:
		0:
			x: width * 600 + thickness
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
					lDir: '90deg'
					lType: 'line'
					distr: 0
				1:
					x: contours[0].nodes[0].x
					y: capHeight
					width: thickness * opticThickness * contrast
					lDir: '90deg'
					lType: 'line'
					distr: 0
				2:
					x: contours[0].nodes[0].x + thickness * opticThickness * contrast
					y: capHeight
					width: thickness * opticThickness * 2 ############## 
					lDir: '0deg'
					lType: 'line'
					distr: 0
				3:
					x: anchors[0].x / 2
					y: 150
					width: thickness * opticThickness
					lDir: Utils.lineAngle( contours[0].nodes[5], contours[0].nodes[6] ) - Math.PI / 2
					lType: 'line'
					distr: 0
				4:
					x: anchors[0].x / 2
					y: 150
					width: 0
					lDir: Utils.lineAngle( contours[0].nodes[5], contours[0].nodes[6] ) - Math.PI / 2
					lType: 'line'

				5:
					x: anchors[0].x / 2
					y: 150
					width: thickness * opticThickness * contrast
					lDir: Utils.lineAngle( contours[0].nodes[2], contours[0].nodes[3] ) - Math.PI / 2
					lType: 'line'
					distr: 0
				6:
					x: anchors[0].x - thickness * 2
					y: capHeight
					width: thickness * opticThickness * contrast
					lDir: '-90deg'
					lType: 'line'
				7:
					x: anchors[0].x - thickness * 2
					y: capHeight
					width: thickness * opticThickness 
					lDir: '90deg'
					lType: 'line'
					distr: 0
				8:
					x: anchors[0].x - thickness * 2
					y: 0
					width: thickness * opticThickness 
					lDir: '90deg'
					lType: 'line'
					distr: 0