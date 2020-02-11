define(['components/listPage'], function(listPage) {
	return listPage(
			'animalList',
			'resource->/api/animal',
			[
		        { id:"id"},
		        { id:"name", editor: 'text'},	        
		        { id:"sex", editor: 'text'},	        
		        { id:"birthday", editor: 'text'}	        
		    ] 
	   )
});