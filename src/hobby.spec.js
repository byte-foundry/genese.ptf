var xhr = new XMLHttpRequest(),
	fontSrCtrl;
xhr.open('GET', 'base/dist/font.json', false);
xhr.send();
fontSrCtrl = JSON.parse( xhr.responseText );

var Contour = prototypo.Contour,
		hobby = prototypo.hobby;

describe('Augment Node\'s prototype', function() {
	it('should have get/set for all hobby-specific properties', function() {
		var ct = new Contour();

		[
			{c: [0, 0]},
			{c: [0, 100]},
			{c: [100, 100]},
			{c: [100, 0]}

		].forEach(function(args) {
			var node = ct.addNode({
				x: args.c[0],
				y: args.c[1]
			});
			node.lType = 'open';
			node.rType = 'open';
			node.lTension = 1;
			node.rTension = 1;
		});

		expect(ct.nodes[0].lType).to.be.equal('open');
		expect(ct.nodes[0].rType).to.be.equal('open');
		expect(ct.nodes[1].lType).to.be.equal('open');
		expect(ct.nodes[1].rType).to.be.equal('open');
		expect(ct.nodes[2].lType).to.be.equal('open');
		expect(ct.nodes[2].rType).to.be.equal('open');
		expect(ct.nodes[3].lType).to.be.equal('open');
		expect(ct.nodes[3].rType).to.be.equal('open');

		expect(ct.nodes[0].x_pt).to.be.equal(0);
		expect(ct.nodes[0].y_pt).to.be.equal(0);
		expect(ct.nodes[1].x_pt).to.be.equal(0);
		expect(ct.nodes[1].y_pt).to.be.equal(100);
		expect(ct.nodes[2].x_pt).to.be.equal(100);
		expect(ct.nodes[2].y_pt).to.be.equal(100);
		expect(ct.nodes[3].x_pt).to.be.equal(100);
		expect(ct.nodes[3].y_pt).to.be.equal(0);

		expect(ct.nodes[0].left_tension).to.be.equal(1);
		expect(ct.nodes[0].right_tension).to.be.equal(1);
		expect(ct.nodes[1].left_tension).to.be.equal(1);
		expect(ct.nodes[1].right_tension).to.be.equal(1);
		expect(ct.nodes[2].left_tension).to.be.equal(1);
		expect(ct.nodes[2].right_tension).to.be.equal(1);
		expect(ct.nodes[3].left_tension).to.be.equal(1);
		expect(ct.nodes[3].right_tension).to.be.equal(1);
	});
});

describe('Update controls with Hobby', function() {

	it('should link nodes appropriately', function() {
		var ct = new Contour();

		[
			{c: [0, 0]},
			{c: [0, 100]},
			{c: [100, 100]},
			{c: [100, 0]}

		].forEach(function(args) {
			var node = ct.addNode({
				x: args.c[0],
				y: args.c[1]
			});
			node.lType = 'open';
			node.rType = 'open';
			node.lTension = 1;
			node.rTension = 1;
		});

		hobby.prepareContour( ct );

		expect(ct.nodes[0].lType).to.be.equal('endcycle');
		expect(ct.nodes[0].rType).to.be.equal('open');
		expect(ct.nodes[1].lType).to.be.equal('open');
		expect(ct.nodes[1].rType).to.be.equal('open');
		expect(ct.nodes[2].lType).to.be.equal('open');
		expect(ct.nodes[2].rType).to.be.equal('open');
		expect(ct.nodes[3].lType).to.be.equal('open');
		expect(ct.nodes[3].rType).to.be.equal('endcycle');

		expect(ct.nodes[0].next).to.be.equal(ct.nodes[1]);
		expect(ct.nodes[1].next).to.be.equal(ct.nodes[2]);
		expect(ct.nodes[2].next).to.be.equal(ct.nodes[3]);
		expect(ct.nodes[3].next).to.be.equal(ct.nodes[0]);
	});

	it('should be able to update the position of its control points', function() {
		var ct = new Contour();

		[
			{c: [0, 0]},
			{c: [0, 100]},
			{c: [100, 100]},
			{c: [100, 0]}

		].forEach(function(args) {
			var node = ct.addNode({
				x: args.c[0],
				y: args.c[1]
			});
			node.lType = 'open';
			node.rType = 'open';
			node.lTension = 1;
			node.rTension = 1;
		});

		hobby.prepareContour( ct );

		expect(ct.nodes[0].next).to.be.equal(ct.nodes[1]);

		hobby.makeChoices( ct.nodes );

		// there's no way to predict that the expected value is 28,
		// but last time the script worked it produced 28 :)
		expect(Math.round(ct.nodes[0].lCtrl.x)).to.be.equal(28);
		expect(Math.round(ct.nodes[0].lCtrl.y)).to.be.equal(-28);
		expect(Math.round(ct.nodes[0].rCtrl.x)).to.be.equal(-28);
		expect(Math.round(ct.nodes[0].rCtrl.y)).to.be.equal(28);

		ct.nodes[0].y = 20;
		hobby.makeChoices( ct.nodes[0] );

		// same here
		expect(Math.round(ct.nodes[0].lCtrl.x)).to.be.equal(24);
		expect(Math.round(ct.nodes[0].lCtrl.y)).to.be.equal(-14);
		expect(Math.round(ct.nodes[0].rCtrl.x)).to.be.equal(-17);
		expect(Math.round(ct.nodes[0].rCtrl.y)).to.be.equal(45);
	});

	/*it('update controls when there\'s one line in the shape', inject(function(Contour) {
		var ct = new Contour([
			{c: [0, 0], rType: 'line'},
			{c: [0, 100], lType: 'line'},
			{c: [100, 100]},
			{c: [100, 0]}
		]);

		ct.updateControls();

		// there's no way to predict that the expected value is 28,
		// but last time the script worked it produced 28 :)
		expect(Math.round(ct.nodes[0].rCtrl.x)).to.be.equal(0);
		expect(Math.round(ct.nodes[0].rCtrl.y)).to.be.equal(0);
		expect(Math.round(ct.nodes[1].lCtrl.x)).to.be.equal(0);
		expect(Math.round(ct.nodes[1].lCtrl.y)).to.be.equal(100);

		ct.nodes[0].y = 20;
		// currently we need to re-set the control type to update the control position
		ct.nodes[0].rType = 'line';
		ct.updateControls();

		// ditto
		expect(Math.round(ct.nodes[0].rCtrl.x)).to.be.equal(0);
		expect(Math.round(ct.nodes[0].rCtrl.y)).to.be.equal(20);
		expect(Math.round(ct.nodes[1].lCtrl.x)).to.be.equal(0);
		expect(Math.round(ct.nodes[1].lCtrl.y)).to.be.equal(100);

		// ditto
		expect(Math.round(ct.nodes[2].lCtrl.x)).to.be.equal(72);
		expect(Math.round(ct.nodes[2].lCtrl.y)).to.be.equal(127);
		expect(Math.round(ct.nodes[2].rCtrl.x)).to.be.equal(129);
		expect(Math.round(ct.nodes[2].rCtrl.y)).to.be.equal(72);
	}));

	it('update controls when there are multiple lines in the shape', inject(function(Contour) {
		var ct = new Contour([
			{c: [0, 0], rType: 'line'},
			{c: [0, 100], lType: 'line', rType: 'line'},
			{c: [100, 100], lType: 'line'},
			{c: [100, 0]}
		]);

		ct.updateControls();

		// ditto
		expect(Math.round(ct.nodes[3].lCtrl.x)).to.be.equal(128);
		expect(Math.round(ct.nodes[3].lCtrl.y)).to.be.equal(28);
		expect(Math.round(ct.nodes[3].rCtrl.x)).to.be.equal(72);
		expect(Math.round(ct.nodes[3].rCtrl.y)).to.be.equal(-28);
	}));

	// this is equivalent to the first update controls test in skeleton.js
	it('update controls with a complex contour', inject(function(Contour) {
		var ct = new Contour([
				{c: [-10, 0], lType: 'line', rType: 'line'},
				{c: [50, 100], lType: 'line'},
				{c: [110, 0], rType: 'line'},
				{c: [90, 0], lType: 'line'},
				{c: [50, 90], rType: 'line'},
				{c: [10, 0], lType: 'line', rType: 'line'}
			]),
			nodes = ct.nodes;

		ct.updateControls();

		expect(nodes[0].lType).to.be.equal('line');
		expect(nodes[0].rType).to.be.equal('line');

		expect(nodes[1].lType).to.be.equal('line');
		expect(nodes[1].rType).to.be.equal('open');

		expect(nodes[2].lType).to.be.equal('open');
		expect(nodes[2].rType).to.be.equal('line');

		expect(nodes[3].lType).to.be.equal('line');
		expect(nodes[3].rType).to.be.equal('open');

		expect(nodes[4].lType).to.be.equal('open');
		expect(nodes[4].rType).to.be.equal('line');

		expect(nodes[5].lType).to.be.equal('line');
		expect(nodes[5].rType).to.be.equal('line');
	}));*/

});

describe('Expand skeleton and update controls with Hobby', function() {

	var font = prototypo( fontSrCtrl ),
		test1 = font.glyphs.test1,
		skeleton = test1.contours[0];

	it('should update controls when there\'s one line in the shape', function() {
		skeleton.update({}, test1.contours, {});
		hobby.expand( skeleton, test1, {
			thickness: 2,
			contrast: 3
		});

		expect( test1.contours.length ).to.be.equal(2);

 		hobby.prepareContour( test1.contours[1] );
		var nodes = test1.contours[1].nodes;

		expect(nodes[0].lType).to.be.equal('lineendcycle');
		expect(nodes[0].rType).to.be.equal('line');

		expect(nodes[1].lType).to.be.equal('line');
		expect(nodes[1].rType).to.be.equal('open');

		expect(nodes[2].lType).to.be.equal('open');
		expect(nodes[2].rType).to.be.equal('line');

		expect(nodes[3].lType).to.be.equal('line');
		expect(nodes[3].rType).to.be.equal('open');

		expect(nodes[4].lType).to.be.equal('open');
		expect(nodes[4].rType).to.be.equal('line');

		expect(nodes[5].lType).to.be.equal('line');
		expect(nodes[5].rType).to.be.equal('lineendcycle');



		expect(nodes[0].rCtrl.x).to.be.equal( -10 );
		expect( Math.round(nodes[0].rCtrl.y) ).to.be.equal( 0 );

		expect(nodes[1].lCtrl.x).to.be.equal( 50 );
		expect(nodes[1].lCtrl.y).to.be.equal( 100 );

		// second line
		expect(nodes[2].rCtrl.x).to.be.equal( 110 );
		expect( Math.round(nodes[2].rCtrl.y) ).to.be.equal( 0 );

		expect(nodes[3].lCtrl.x).to.be.equal( 90 );
		expect( Math.round(nodes[3].lCtrl.y) ).to.be.equal( 0 );

		// third line
		expect(nodes[4].rCtrl.x).to.be.equal( 50 );
		expect(nodes[4].rCtrl.y).to.be.equal( 90 );

		expect(nodes[5].lCtrl.x).to.be.equal( 10 );
		expect( Math.round(nodes[5].lCtrl.y) ).to.be.equal( 0 );

		// fourth line
		expect(nodes[5].rCtrl.x).to.be.equal( 10 );
		expect( Math.round(nodes[5].rCtrl.y) ).to.be.equal( 0 );

		expect(nodes[0].lCtrl.x).to.be.equal( -10 );
		expect( Math.round(nodes[0].lCtrl.y) ).to.be.equal( 0 );
	});

});