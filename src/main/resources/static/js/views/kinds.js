define([ 'components/listPage' ], function(listPage) {
	return listPage('kindList', 'resource->/api/kind', [ {
		id : "name",
		editor : 'text'
	} ])
});
