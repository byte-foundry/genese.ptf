var xhr = new XMLHttpRequest(),
	fontSrc;
xhr.open('GET', 'base/dist/font.json', false);
xhr.send();
fontSrc = JSON.parse( xhr.responseText );

describe('font utils', function() {

	var font = prototypo( fontSrc ),
		test0 = font.glyphs.test0,
		test2 = font.glyphs.test2,
		test3 = font.glyphs.test3,
		params = {
			thickness: 2,
			contrast: 3
		};

	it('can expand an open skeleton', function() {
		expect( test0.contours.length ).to.be.equal(2);

		prototypo.naive.expand( test0.contours[0], test0, params );

		expect( test0.contours.length ).to.be.equal(3);
		expect( test0.contours[0].expanded.length ).to.be.equal(1);
		expect( test0.contours[0].expanded[0].nodes.length ).to.be.equal(8);
	});

	it('sets the [l|r]Type of a node appropriately', function() {
		prototypo.naive.expand( test2.contours[0], test2, {} );
		expect( test2.contours.length ).to.be.equal(3);

		var ct = test2.contours[2];

		expect( ct.nodes[0].type ).to.be.equal('corner');
		expect( ct.nodes[0].rType ).to.be.equal('line');
		expect( ct.nodes[0].lType ).to.be.equal('line');

		expect( ct.nodes[1].type ).to.be.equal('corner');
		expect( ct.nodes[1].rType ).to.be.equal('smooth');
		expect( ct.nodes[1].lType ).to.be.equal('line');

		expect( ct.nodes[2].type ).to.be.equal('corner');
		expect( ct.nodes[2].rType ).to.be.equal('smooth');
		expect( ct.nodes[2].lType ).to.be.equal('line');

		expect( ct.nodes[3].type ).to.be.equal('corner');
		expect( ct.nodes[3].rType ).to.be.equal('smooth');
		expect( ct.nodes[3].lType ).to.be.equal('line');

		expect( ct.nodes[4].type ).to.be.equal('corner');
		expect( ct.nodes[4].rType ).to.be.equal('line');
		expect( ct.nodes[4].lType ).to.be.equal('smooth');

		expect( ct.nodes[5].type ).to.be.equal('corner');
		expect( ct.nodes[5].rType ).to.be.equal('line');
		expect( ct.nodes[5].lType ).to.be.equal('smooth');

		expect( ct.nodes[6].type ).to.be.equal('corner');
		expect( ct.nodes[6].rType ).to.be.equal('line');
		expect( ct.nodes[6].lType ).to.be.equal('smooth');

		expect( ct.nodes[7].type ).to.be.equal('corner');
		expect( ct.nodes[7].rType ).to.be.equal('line');
		expect( ct.nodes[7].lType ).to.be.equal('line');

		prototypo.naive.prepareContour( ct );

		ct.nodes.forEach(function(node) {
			expect( node.rType ).to.be.equal('line');
			expect( node.lType ).to.be.equal('line');
		});
	});

	it('copies the coordinates of contour nodes to the Ctrls for straight lines', function() {
		var params = {
				width: 1,
				thickness: 80,
				xHeight: 400
			},
			ct,
			a,
			b;

		test2.anchors.forEach(function(anchor) {
			anchor.update( params, test2 );
		});

		test2.contours[0].nodes.forEach(function(node) {
			node.update( params, test2, test2.contours[0] );
		});

		prototypo.naive.expand( test2.contours[0], test2, params );
		ct = test2.contours[2];
		prototypo.naive.prepareContour( ct );

		prototypo.naive.notomatic( ct, params );

		ct.nodes.forEach(function(node) {
			a = expect( node.x ).to.not.deep.equal(NaN);
			b = expect( node.y ).to.not.deep.equal(NaN);
			expect( node.rCtrl.coords ).to.be.deep.equal( node.coords );
			expect( node.lCtrl.coords ).to.be.deep.equal( node.coords );
		});
	});

	it('can import the contours and nodes of a component into a glyph', function() {
		prototypo.naive.expand( test3.contours[0], test3, {} );
		test3.gatherNodes();

		expect( test3.allContours.length ).to.be.equal(3);
		expect( test3.allNodes.length ).to.be.equal(12);
	});

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