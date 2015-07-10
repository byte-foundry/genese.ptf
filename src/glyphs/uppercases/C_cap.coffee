exports.glyphs['C_cap'] =
	unicode: 'C'
	ot:
		# advanceWidth: contours[2].nodes[3].x + 40 * spacing
		advanceWidth: contours[0].nodes[0].x + 40 * spacing
	anchors:
		0:
			baseSerifTop: Utils.pointOnCurve( contours[0].nodes[1].expandedTo[1], contours[0].nodes[0].expandedTo[1], serifHeight + serifCurve * ( 125 / 15 ), true )
			baseSerifBottom: Utils.pointOnCurve( contours[0].nodes[0].expandedTo[0], contours[0].nodes[1].expandedTo[0], serifHeight + serifCurve * ( 65 / 15 ) )
			baseSerifTop_: Utils.pointOnCurve( contours[0].nodes[4].expandedTo[1], contours[0].nodes[3].expandedTo[1], serifHeight + serifCurve * ( 65 / 15 ) )
			baseSerifBottom_: Utils.pointOnCurve( contours[0].nodes[3].expandedTo[0], contours[0].nodes[4].expandedTo[0], serifHeight + serifCurve * ( 65 / 15 ), true )
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
					x: 670
					y: capHeight - ( 150 / 750 ) * capHeight + Math.min( - 20 * aperture + 20, - 125 * aperture + 125 )
					dirOut: 150 - 20 * aperture + 'deg'
					type: 'smooth'
					# tensionIn: 1.45
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness + thickness * ( 10 / 85 ) * opticThickness * contrast
						angle: contours[0].nodes[0].dirOut + Math.PI / 2
						distr: 0.25
					})
				1:
					x: 395
					y: capHeight + overshoot
					dirOut: 0 + 'deg'
					dirIn: 0 + 'deg'
					type: 'smooth'
					tensionIn: 1.45
					expand: Object({
						width: thickness * ( 27 / 85 ) * opticThickness * contrast
						angle: - 68 + 'deg'
						distr: 0
					})
				2:
					x: 35 + (27)
					y: capHeight * ( 375 / 750 )
					type: 'smooth'
					expand: Object({
						width: thickness * ( 110 / 85 ) * opticThickness
						angle: 0 + 'deg'
						distr: 0.25
					})
				3:
					x: 380
					y: - overshoot
					type: 'smooth'
					dirIn: 0 + 'deg'
					tensionOut: 1.3
					expand: Object({
						width: thickness * ( 33 / 85 ) * opticThickness * contrast
						angle: 63 + 'deg'
						distr: 0
					})
				4:
					x: 640
					y: Math.max( contours[0].nodes[3].expandedTo[1].y + thickness / 10, 40 + xHeight * ( 88 / 500 ) * aperture )
					dirIn: Math.min( - 150 + ( 31 / 500 ) * xHeight * aperture , - 90 ) + 'deg'
					expand: Object({
						width: thickness * ( 25 / 85 ) * opticThickness + thickness * ( 10 / 85 ) * opticThickness * contrast
						angle: contours[0].nodes[4].dirIn - Math.PI / 2
						distr: 0.25
					})
	components:
		0:
			base: 'serif-v'
			parentAnchors:
				0:
					x: anchors[0].baseSerifBottom.x
					y: anchors[0].baseSerifBottom.y
				1:
					# x: contours[0].nodes[0].expandedTo[1].x - serifHeight - serifCurve * ( 65 / 15 )
					x: anchors[0].baseSerifTop.x
					y: anchors[0].baseSerifTop.y
				2:
					anchorLine: contours[0].nodes[0].expandedTo[0].x
					rightWidth: 45
					leftWidth: 25
					angleBottom: anchors[0].baseSerifBottom.normal
					angleTop: anchors[0].baseSerifTop.normal
					maxWidth: capHeight
					baseRight: contours[0].nodes[0].expandedTo[0].point
					baseLeft: contours[0].nodes[0].expandedTo[1].point
			parentParameters:
				serifMedian: serifMedian * 0.9
				serifCurve: serifCurve * 1.2
			# transformOrigin: Array( contours[0].nodes[0].expandedTo[0].x, contours[0].nodes[0].expandedTo[0].y )
			# transforms: Array( [ 'skewX', serifRotate * (-4) + 'deg' ] )
		1:
			base: 'serif-v'
			parentAnchors:
				0:
					# x: contours[0].nodes[0].expandedTo[1].x - serifHeight - serifCurve * ( 65 / 15 )
					x: anchors[0].baseSerifTop_.x
					y: anchors[0].baseSerifTop_.y
				1:
					x: anchors[0].baseSerifBottom_.x
					y: anchors[0].baseSerifBottom_.y
				2:
					anchorLine: contours[0].nodes[4].expandedTo[0].x
					# angle: Utils.lineAngle( contours[0].nodes[4].expandedTo[1].point, contours[0].nodes[3].expandedTo[0].point )
					# maxWidth: capHeight
					baseRight: contours[0].nodes[4].expandedTo[1].point
					# baseLeft: contours[0].nodes[4].expandedTo[0].point
					angleBottom: anchors[0].baseSerifBottom_.normal
					angleTop: anchors[0].baseSerifTop_.normal
