var xhr = new XMLHttpRequest(),
	fontSrc;
xhr.open('GET', 'base/dist/font.json', false);
xhr.send();
fontSrc = JSON.parse( xhr.responseText );

describe('font utils', function() {

	var font = prototypo( fontSrc ),
		test0 = font.glyphs.test0,
		test2 = font.glyphs.test2,
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

	it.only('sets the [l|r]Type of a node appropriately', function() {
		prototypo.naive.expand( test2.contours[0], test2, {} );
		expect( test2.contours.length ).to.be.equal(2);

		var ct = test2.contours[1];

		expect( ct.nodes[0].type ).to.be.equal('corner');
		expect( ct.nodes[0].rType ).to.be.equal('line');
		expect( ct.nodes[0].lType ).to.be.equal('line');

		expect( ct.nodes[1].rType ).to.be.equal('smooth');
		expect( ct.nodes[1].lType ).to.be.equal('line');

		expect( ct.nodes[2].rType ).to.be.equal('smooth');
		expect( ct.nodes[2].lType ).to.be.equal('line');

		expect( ct.nodes[3].rType ).to.be.equal('line');
		expect( ct.nodes[3].lType ).to.be.equal('smooth');

		expect( ct.nodes[4].rType ).to.be.equal('line');
		expect( ct.nodes[4].lType ).to.be.equal('smooth');

		expect( ct.nodes[5].type ).to.be.equal('corner');
		expect( ct.nodes[5].rType ).to.be.equal('line');
		expect( ct.nodes[5].lType ).to.be.equal('line');

		prototypo.naive.prepareContour( ct );

		expect( ct.nodes[0].type ).to.be.equal('corner');
		expect( ct.nodes[0].rType ).to.be.equal('line');
		expect( ct.nodes[0].lType ).to.be.equal('line');

		expect( ct.nodes[1].rType ).to.be.equal('line');
		expect( ct.nodes[1].lType ).to.be.equal('line');

		expect( ct.nodes[2].rType ).to.be.equal('line');
		expect( ct.nodes[2].lType ).to.be.equal('line');

		expect( ct.nodes[3].rType ).to.be.equal('line');
		expect( ct.nodes[3].lType ).to.be.equal('line');

		expect( ct.nodes[4].rType ).to.be.equal('line');
		expect( ct.nodes[4].lType ).to.be.equal('line');

		expect( ct.nodes[5].type ).to.be.equal('corner');
		expect( ct.nodes[5].rType ).to.be.equal('line');
		expect( ct.nodes[5].lType ).to.be.equal('line');
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