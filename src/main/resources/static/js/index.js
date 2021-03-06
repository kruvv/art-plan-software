requirejs.config({
	baseUrl : 'js' // to shorten the path to require.
});

function buildRoute(view) {
	return function() {
		webix.ui({
			//id : 'root',
			rows : [ view ]
		}, $$('root'));
	}
}

function buildButton(label, route) {
	return {
		view : "button",
		value : label,
		width : 100,
		align : "center",
		click : function() {
			routie(route);
		}
	}
}



require([ 'views/main', 'views/animals', 'views/kinds', 'util/resourceProxy', 'collections/kindCollection' ],
		function(main, animals, kinds, resourceProxy, kindCollection) {
			webix.ready(function() {
				webix.ui({
					container : 'app',
					id : 'root',
					width : document.body.clientWidth,
					height : document.body.clientHeight,					
					rows : [
							{
								view : "toolbar",
								id: 'mainBtn',
								cols : [ buildButton('Home', ''),
										buildButton('Animals', 'animals'),
										buildButton('Kinds', 'kinds') ]
							}, {
								//id : 'root'
							} ]
				});

			});

			routie({
				'' : buildRoute(main),
				'animals' : buildRoute(animals),
				'kinds' : buildRoute(kinds)
			});
		});