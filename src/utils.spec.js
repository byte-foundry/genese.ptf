var xhr = new XMLHttpRequest(),
	fontSrc;
xhr.open('GET', 'base/dist/font.json', false);
xhr.send();
fontSrc = JSON.parse( xhr.responseText );

describe('font utils', function() {

	var P = prototypo,
		font = P( fontSrc ),
		params = {
			thickness: 2,
			contrast: 3,
			xHeight: 465
		};

	it('can walk the contour by segments', function() {
		var test5 = font.glyphs.test5,
			ct = test5.contours[0],
			segments;

		ct.update( params, test5 );

		expect( ct.nodes[0].lDir ).to.be.equal(  Math.PI * 3 / 4 );
		expect( ct.nodes[1].lDir ).to.be.equal(  Math.PI * 1 / 4 );

		P.naive.expand( ct, test5, params );

		expect( ct.nodes[0].rDir ).to.be.equal( -Math.PI * 1 / 4 );
		expect( ct.nodes[1].rDir ).to.be.equal( -Math.PI * 3 / 4 );

		ct = test5.contours[1];

		expect( ct.nodes[0].lDir ).to.be.equal(  Math.PI * 3 / 4 );
		expect( ct.nodes[1].rDir ).to.be.equal( -Math.PI * 3 / 4 );
		expect( ct.nodes[2].lDir ).to.be.equal( -Math.PI * 3 / 4 );
		expect( ct.nodes[3].rDir ).to.be.equal(  Math.PI * 3 / 4 );

		P.naive.prepareContour( ct );

		segments = ct.segments;

		expect( segments.length ).to.be.equal( 4 );
		expect( segments[0].start ).to.be.equal( ct.nodes[0] );
		expect( segments[0].end ).to.be.equal(   ct.nodes[1] );
		expect( segments[1].start ).to.be.equal( ct.nodes[1] );
		expect( segments[1].end ).to.be.equal(   ct.nodes[2] );
		expect( segments[2].start ).to.be.equal( ct.nodes[2] );
		expect( segments[2].end ).to.be.equal(   ct.nodes[3] );
		expect( segments[3].start ).to.be.equal( ct.nodes[3] );
		expect( segments[3].end ).to.be.equal(   ct.nodes[0] );


		expect( segments[0].start.lDir ).to.be.equal(  Math.PI * 3 / 4 );
		expect( segments[0].end.rDir ).to.be.equal(   -Math.PI * 3 / 4 );
		expect( segments[2].start.lDir ).to.be.equal( -Math.PI * 3 / 4 );
		expect( segments[2].end.rDir ).to.be.equal(    Math.PI * 3 / 4 );

		P.naive.notomaticSegments( ct, params );

		ct.nodes.forEach(function( node ) {
			console.log(node.rCtrl.toString(), node.toString(), node.lCtrl.toString());
		});

		expect( segments[0].lCtrl ).to.be.equal( ct.nodes[0].lCtrl );
		expect( segments[0].rCtrl ).to.be.equal( ct.nodes[1].rCtrl );
		expect( segments[1].lCtrl ).to.be.equal( ct.nodes[1].lCtrl );
		expect( segments[1].rCtrl ).to.be.equal( ct.nodes[2].rCtrl );
		expect( segments[2].lCtrl ).to.be.equal( ct.nodes[2].lCtrl );
		expect( segments[2].rCtrl ).to.be.equal( ct.nodes[3].rCtrl );
		expect( segments[3].lCtrl ).to.be.equal( ct.nodes[3].lCtrl );
		expect( segments[3].rCtrl ).to.be.equal( ct.nodes[0].rCtrl );

		segments.forEach(function( segment ) {
			console.log(segment.toString());
		});
	});

	// var font = prototypo( fontSrc ),
	// 	test0 = font.glyphs.test0,
	// 	test2 = font.glyphs.test2,
	// 	test3 = font.glyphs.test3,
	// 	test5 = font.glyphs.test5,
	// 	params = {
	// 		thickness: 2,
	// 		contrast: 3,
	// 		xHeight: 465
	// 	};

	// it('can expand an open skeleton', function() {
	// 	expect( test0.contours.length ).to.be.equal(2);

	// 	prototypo.naive.expand( test0.contours[0], test0, params );

	// 	expect( test0.contours.length ).to.be.equal(3);
	// 	expect( test0.contours[0].expanded.length ).to.be.equal(1);
	// 	expect( test0.contours[0].expanded[0].nodes.length ).to.be.equal(8);
	// });

	// it('sets the [l|r]Type of a contour made of lines', function() {
	// 	prototypo.naive.expand( test2.contours[0], test2, {} );
	// 	expect( test2.contours.length ).to.be.equal(3);

	// 	var ct = test2.contours[2];

	// 	expect( ct.nodes[0].type ).to.be.equal('corner');
	// 	expect( ct.nodes[0].rType ).to.be.equal('line');
	// 	expect( ct.nodes[0].lType ).to.be.equal('line');

	// 	expect( ct.nodes[1].type ).to.be.equal('corner');
	// 	expect( ct.nodes[1].rType ).to.be.equal('smooth');
	// 	expect( ct.nodes[1].lType ).to.be.equal('line');

	// 	expect( ct.nodes[2].type ).to.be.equal('corner');
	// 	expect( ct.nodes[2].rType ).to.be.equal('smooth');
	// 	expect( ct.nodes[2].lType ).to.be.equal('line');

	// 	expect( ct.nodes[3].type ).to.be.equal('corner');
	// 	expect( ct.nodes[3].rType ).to.be.equal('smooth');
	// 	expect( ct.nodes[3].lType ).to.be.equal('line');

	// 	expect( ct.nodes[4].type ).to.be.equal('corner');
	// 	expect( ct.nodes[4].rType ).to.be.equal('line');
	// 	expect( ct.nodes[4].lType ).to.be.equal('smooth');

	// 	expect( ct.nodes[5].type ).to.be.equal('corner');
	// 	expect( ct.nodes[5].rType ).to.be.equal('line');
	// 	expect( ct.nodes[5].lType ).to.be.equal('smooth');

	// 	expect( ct.nodes[6].type ).to.be.equal('corner');
	// 	expect( ct.nodes[6].rType ).to.be.equal('line');
	// 	expect( ct.nodes[6].lType ).to.be.equal('smooth');

	// 	expect( ct.nodes[7].type ).to.be.equal('corner');
	// 	expect( ct.nodes[7].rType ).to.be.equal('line');
	// 	expect( ct.nodes[7].lType ).to.be.equal('line');

	// 	prototypo.naive.prepareContour( ct );

	// 	ct.nodes.forEach(function(node) {
	// 		expect( node.rType ).to.be.equal('line');
	// 		expect( node.lType ).to.be.equal('line');
	// 	});
	// });

	// it('sets the [l|r]Type of a contour made of curves', function() {
	// 	prototypo.naive.expand( test5.contours[0], test5, params );
	// 	expect( test5.contours.length ).to.be.equal(2);

	// 	var ct = test5.contours[1];

	// 	expect( ct.nodes[0].type ).to.be.equal('corner');
	// 	expect( ct.nodes[0].rType ).to.be.equal('line');
	// 	expect( ct.nodes[0].lType ).to.be.equal('smooth');

	// 	expect( ct.nodes[1].type ).to.be.equal('corner');
	// 	expect( ct.nodes[1].rType ).to.be.equal('smooth');
	// 	expect( ct.nodes[1].lType ).to.be.equal('line');

	// 	expect( ct.nodes[2].type ).to.be.equal('corner');
	// 	expect( ct.nodes[2].rType ).to.be.equal('line');
	// 	expect( ct.nodes[2].lType ).to.be.equal('smooth');

	// 	expect( ct.nodes[3].type ).to.be.equal('corner');
	// 	expect( ct.nodes[3].rType ).to.be.equal('smooth');
	// 	expect( ct.nodes[3].lType ).to.be.equal('line');

	// 	prototypo.naive.prepareContour( ct );
	// 	prototypo.naive.notomatic( ct, params );

	// 	expect( ct.nodes[0].rCtrl.coords ).to.be.deep.equal( ct.nodes[0].coords );
	// 	expect( ct.nodes[1].lCtrl.coords ).to.be.deep.equal( ct.nodes[1].coords );
	// 	expect( ct.nodes[2].rCtrl.coords ).to.be.deep.equal( ct.nodes[2].coords );
	// 	expect( ct.nodes[3].lCtrl.coords ).to.be.deep.equal( ct.nodes[3].coords );
	// });

	// it('sets the [l|r]Direction of a contour made of curves', function() {
	// 	test5.contours[0].update( params, test5 );
	// 	prototypo.naive.expand( test5.contours[0], test5, params );
	// 	var ct = test5.contours[1];

	// 	expect( test5.contours.length ).to.be.equal(2);
	// 	ct.nodes.forEach(function(node) {
	// 		expect( node.x ).to.not.deep.equal(NaN);
	// 		expect( node.y ).to.not.deep.equal(NaN);
	// 	});

	// 	expect( ct.nodes[0].lDir ).to.be.equal(  3/4 * Math.PI );
	// 	expect( ct.nodes[1].rDir ).to.be.equal( -3/4 * Math.PI );
	// 	expect( ct.nodes[2].lDir ).to.be.equal( -3/4 * Math.PI );
	// 	expect( ct.nodes[3].rDir ).to.be.equal(  3/4 * Math.PI );

	// 	prototypo.naive.prepareContour( ct );
	// 	prototypo.naive.notomatic( ct, params );

	// 	expect( ct.nodes[0].rCtrl.coords ).to.be.deep.equal( ct.nodes[0].coords );
	// 	expect( ct.nodes[1].lCtrl.coords ).to.be.deep.equal( ct.nodes[1].coords );
	// 	expect( ct.nodes[2].rCtrl.coords ).to.be.deep.equal( ct.nodes[2].coords );
	// 	expect( ct.nodes[3].lCtrl.coords ).to.be.deep.equal( ct.nodes[3].coords );

	// 	expect( ct.nodes[0].lCtrl.x ).to.be.below( ct.nodes[0].x );
	// 	expect( ct.nodes[0].lCtrl.y ).to.be.above( ct.nodes[0].y );
	// 	expect( ct.nodes[1].rCtrl.x ).to.be.below( ct.nodes[1].x );
	// 	expect( ct.nodes[1].rCtrl.y ).to.be.below( ct.nodes[1].y );
	// 	expect( ct.nodes[2].lCtrl.x ).to.be.below( ct.nodes[2].x );
	// 	expect( ct.nodes[2].lCtrl.y ).to.be.below( ct.nodes[2].y );
	// 	expect( ct.nodes[3].rCtrl.x ).to.be.below( ct.nodes[3].x );
	// 	expect( ct.nodes[3].rCtrl.y ).to.be.above( ct.nodes[3].y );
	// });

	// // same as above but use Glyph.prototype.update directly
	// it('can update a glyph with contour made of curves', function() {
	// 	test5.update( params );
	// 	var ct = test5.contours[1];

	// 	expect( ct.nodes[0].rCtrl.coords ).to.be.deep.equal( ct.nodes[0].coords );
	// 	expect( ct.nodes[1].lCtrl.coords ).to.be.deep.equal( ct.nodes[1].coords );
	// 	expect( ct.nodes[2].rCtrl.coords ).to.be.deep.equal( ct.nodes[2].coords );
	// 	expect( ct.nodes[3].lCtrl.coords ).to.be.deep.equal( ct.nodes[3].coords );

	// 	expect( ct.nodes[0].lCtrl.x ).to.be.below( ct.nodes[0].x );
	// 	expect( ct.nodes[0].lCtrl.y ).to.be.above( ct.nodes[0].y );
	// 	expect( ct.nodes[1].rCtrl.x ).to.be.below( ct.nodes[1].x );
	// 	expect( ct.nodes[1].rCtrl.y ).to.be.below( ct.nodes[1].y );
	// 	expect( ct.nodes[2].lCtrl.x ).to.be.below( ct.nodes[2].x );
	// 	expect( ct.nodes[2].lCtrl.y ).to.be.below( ct.nodes[2].y );
	// 	expect( ct.nodes[3].rCtrl.x ).to.be.below( ct.nodes[3].x );
	// 	expect( ct.nodes[3].rCtrl.y ).to.be.above( ct.nodes[3].y );
	// });

	// it('copies the coordinates of contour nodes to the Ctrls for straight lines', function() {
	// 	var params = {
	// 			width: 1,
	// 			thickness: 80,
	// 			xHeight: 400
	// 		},
	// 		ct,
	// 		a,
	// 		b;

	// 	test2.anchors.forEach(function(anchor) {
	// 		anchor.update( params, test2 );
	// 	});

	// 	test2.contours[0].nodes.forEach(function(node) {
	// 		node.update( params, test2, test2.contours[0] );
	// 	});

	// 	prototypo.naive.expand( test2.contours[0], test2, params );
	// 	ct = test2.contours[2];
	// 	prototypo.naive.prepareContour( ct );

	// 	prototypo.naive.notomatic( ct, params );

	// 	ct.nodes.forEach(function(node) {
	// 		a = expect( node.x ).to.not.deep.equal(NaN);
	// 		b = expect( node.y ).to.not.deep.equal(NaN);
	// 		expect( node.rCtrl.coords ).to.be.deep.equal( node.coords );
	// 		expect( node.lCtrl.coords ).to.be.deep.equal( node.coords );
	// 	});
	// });

	// it('can import the contours and nodes of a component into a glyph', function() {
	// 	prototypo.naive.expand( test3.contours[0], test3, {} );
	// 	test3.gatherNodes();

	// 	expect( test3.allContours.length ).to.be.equal(4);
	// 	expect( test3.allNodes.length ).to.be.equal(22);
	// });

	// it('can find appropriate control angles for the middle node of three nodes', function() {
	// 	var findAngle = prototypo.naive.findAngle;

	// 	// oblique
	// 	expect(findAngle(
	// 		{x: 0, y: 0},
	// 		{x: 10, y: 10, type: 'auto'},
	// 		{x: 20, y: 20}
	// 	)).to.be.equal( Math.PI / 4 );

	// 	expect(findAngle(
	// 		{x: 20, y: 20},
	// 		{x: 10, y: 10, type: 'auto'},
	// 		{x: 0, y: 0}
	// 	)).to.be.equal( -Math.PI + Math.PI / 4 );

	// 	expect(findAngle(
	// 		{x: 0, y: 20},
	// 		{x: 10, y: 10, type: 'auto'},
	// 		{x: 20, y: 0}
	// 	)).to.be.equal( -Math.PI / 4 );

	// 	expect(findAngle(
	// 		{x: 20, y: 0},
	// 		{x: 10, y: 10, type: 'auto'},
	// 		{x: 0, y: 20}
	// 	)).to.be.equal( Math.PI - Math.PI / 4 );

	// 	// horizontal
	// 	expect(findAngle(
	// 		{x: 0, y: 0},
	// 		{x: 10, y: 10, type: 'auto'},
	// 		{x: 20, y: 0}
	// 	)).to.be.equal( 0 );

	// 	expect(findAngle(
	// 		{x: 20, y: 0},
	// 		{x: 10, y: 10, type: 'auto'},
	// 		{x: 0, y: 0}
	// 	)).to.be.equal( -Math.PI );

	// 	// vertical
	// 	expect(findAngle(
	// 		{x: 0, y: 0},
	// 		{x: 10, y: 10, type: 'auto'},
	// 		{x: 0, y: 20}
	// 	)).to.be.equal( Math.PI / 2 );

	// 	expect(findAngle(
	// 		{x: 0, y: 20},
	// 		{x: 10, y: 10, type: 'auto'},
	// 		{x: 0, y: 0}
	// 	)).to.be.equal( -Math.PI / 2 );
	// });
});