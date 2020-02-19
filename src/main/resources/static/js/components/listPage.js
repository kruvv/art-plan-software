define(function() {
	return function(tableId, url, columns) {
		var listPage_id = webix.uid();
		return {
			
			rows : [
					{
						view : "toolbar",
						id:  tableId + listPage_id,
						cols : [ {
							view : 'button',
							
							label : 'ADD',
							color : 'green',
							inputWidth : 120,
							align : "left",
							click : function() {
								var addList = $$(tableId);
								var id = addList.add({});
								addList.editRow(id);
							}
						}, {
							view : 'button',
							
							label : 'Delete',
							inputWidth : 120,
							align : "left",
							click : function() {
								console.log('Deleted!!!')
								// var addList = $$(tableId);
								// var id = addList.add({});
								// addList.editRow(id);
							}
						} ]
					},
					{
						id : tableId ,
						view : "datatable",
						columns : columns,
						url : url,
						save : url,
						autoheight : true,
						autowidth : true,
						editable : true,
						pager : 'myPager',
						datafetch : 3
					},
					{
						view : 'pager',
						id : 'myPager',
						size : 3,
						group : 3,
						template : "{common.first()}{common.prev()}{common.pages()}{common.next()}{common.last()}"
					} ]
		}
	}
});