exports.glyphs['Q_cap'] =
	unicode: 'Q'
	ot:
		advanceWidth: contours[0].nodes[1].expandedTo[0].x + 10 * spacing
	tags: [
		'all',
		'latin',
		'uppercase'
	]
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 410 + (0)
					y: - overshoot + 0
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 16 / 85 ) * opticThickness * contrast
						angle: 108 + 'deg'
						distr: 0
					})
				1:
					x: 665 + (75)
					y: capHeight * ( 375 / 750 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 180 + 'deg'
						distr: 0.25
					})
				2:
					x: 410 + (0)
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 27 / 85 ) * opticThickness * contrast
						angle: - 112 + 'deg'
						distr: 0
					})
				3:
					x: 35 + (25)
					y: contours[0].nodes[1].y
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 100 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				4:
					x: 240 + (0)
					y: 35
					dirOut: 90 + 'deg'
					type: 'smooth'
					# dirOut: Utils.lineAngle( contours[0].nodes[3].point, contours[0].nodes[5].point )
					dirOut: 90 + 60 + 'deg'
					expand: Object({
						width: thickness * ( 35 / 85 ) * opticThickness * contrast
						angle: 46 + 'deg'
						distr: 0
					})
				# 5:
				# 	x: contours[0].nodes[0].expandedTo[1].x
				# 	y: contours[0].nodes[0].expandedTo[1].y
				# 	# dirOut: 90 + 'deg'
				# 	type: 'smooth'
				# 	# dirOut: Utils.lineAngle( contours[0].nodes[4].point, contours[0].nodes[6].point )
				# 	dirOut: - 30 + 'deg'
				# 	expand: Object({
				# 		width: thickness * ( 57 / 85 ) * opticThickness
				# 		angle: 180 - 117 + 'deg'
				# 		distr: 1
				# 	})
				5:
					x: 760 + (0)
					y: - thickness / 2 - ( 135 - 85 / 2 )
					dirOut: 0 + 'deg'
					# tensionOut: 0.2
					type: 'smooth'
					expand: Object({
						width: thickness * ( 60 / 85 ) * opticThickness + thickness * ( 25 / 85 ) * opticThickness * contrast
						angle: 80 + 'deg'
						distr: 0
					})
				6:
					x: 1135 + (0)
					y: - 40
					dirIn: - 155 + 'deg'
					# tensionIn: 0
					type: 'smooth'
					expand: Object({
						width: thickness * ( 11 / 85 ) * opticThickness * contrast
						angle: 95 + 'deg'
						distr: 0
					})
