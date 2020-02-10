requirejs.config({
	baseUrl: 'js' //to shorten the path to require.
});

function buildRoute(view) {
	return function() {
		webix.ui({
			id: 'root',
			rows: [
				view
				]
			}, $$('root'));
		}
	}


require(['views/main', 'views/animals'], function(main, animals) {	
	webix.ready(function() {
		webix.ui({
			id: 'root',
			cotainer: 'app',
		});
		
	});
	
	routie({
		'': buildRoute(main),
		'animals': buildRoute(animals)
	});
});