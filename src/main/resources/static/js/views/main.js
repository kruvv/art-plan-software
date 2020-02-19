define([ 'components/listPage' ], function(listPage) {
	return listPage('main', 'Hello', [ {
		template : "Row 1"	}, {
		cols : [ {template : "Column 1"} ]
	} ] )
		
	
});