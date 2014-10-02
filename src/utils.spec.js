var xhr = new XMLHttpRequest(),
	fontSrc;
xhr.open('GET', 'base/dist/font.json', false);
xhr.send();
fontSrc = JSON.parse( xhr.responseText );

describe('font utils', function() {

	var font = prototypo( fontSrc ),
		test0 = font.glyphs.test0,
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
});