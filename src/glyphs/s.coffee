exports.glyphs['s'] =
	unicode: 's'
	ot:
		advanceWidth: width * 350 + thickness * 2 - ( 86 * 2 )
	anchors:
		0:
			x: 0
			y: 0
	contours:
		0:
			skeleton: true
			closed: false
			nodes:
				0:
					x: 265
					y: xHeight * ( 480 / 500 )
					dirOut: - 30 + 'deg'
					expand: Object({
						width: thickness * ( 32 / 86 )
						distr: 0
					})
				1:
					x: 180
					y: xHeight + overshoot
					dirOut: 0 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 25 / 86 )
						angle: - 100 + 'deg'
						distr: 0
					})
				2:
					x: 35
					y: xHeight * ( 370 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 70 / 86 )
						angle: 30 + 'deg'
						distr: 0
					})
				3:
					x: 153
					y: xHeight * ( 283 / 500 )
					dirOut: - 20 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 88 / 86 )
						angle: 70 + 'deg'
					})
				4:
					x: 238
					y: xHeight * ( 252 / 500 )
					dirOut: - 22 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 88 / 86 )
						angle: 70 + 'deg'
					})
				5:
					x: 295
					y: xHeight * ( 105 / 500 )
					dirOut: 90 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 81 / 86 )
						angle: 30 + 'deg'
						distr: 0
					})
				6:
					x: 200
					y: - overshoot
					dirIn: 180 + 'deg'
					type: 'smooth'
					expand: Object({
						width: thickness * ( 30 / 86 )
						distr: 1
					})
				# 7:
				# 	x: 40
				# 	y: 60
				# 	dirIn: - 48 + 'deg'
				# 	type: 'smooth'
				# 	expand: Object({
				# 		width: thickness * ( 122 / 86 )
				# 		angle: 180 + 70 + 'deg'
				# 		distr: 1
				# 	})
				# 	# expandedTo:
				# 	# 	[
				# 	# 		{
				# 	# 			x: 10
				# 	# 			y: 10
				# 	# 		}
				# 	# 		{
				# 	# 			x: 10
				# 	# 			y: 100
				# 	# 		}
				# 	# 	]
