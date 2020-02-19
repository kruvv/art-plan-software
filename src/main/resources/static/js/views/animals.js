define([ 'components/listPage', 'collections/kindCollection' ], function(
		listPage, kindCollection) {
	return listPage('animalList', 'resource->/api/animal', [ {
		id : "id"
	}, {
		id : "name",
		editor : 'text'
	}, {
		id : "kind",
		editor : 'combo',
		options : kindCollection
	}, {
		id : "sex",
		editor : 'select',
		options : [ 'Male', 'Famale' ]
	}, {
		id : "birthday",
		editor : 'text'
	} ])
});