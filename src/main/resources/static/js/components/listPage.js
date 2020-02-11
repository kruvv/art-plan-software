define(function() {
	return function(tableId, url, columns) {
		return {
			rows: [
				{
					view:"toolbar",
					cols:[
						  {
							  view: 'button',
							  label: 'ADD',
							  click: function() {
								var kindList = $$(tableId);
								var id = kindList.add({});
								kindList.editRow(id);
							   }
						  }
					     ]
				},
				{
					id: tableId,
					view:"datatable",
				    columns:columns,
				    url: url,
				    save: url,
				    autoheight: true,
				    autowidth: true,
				    editable: true,
				    pager: 'kindPager',
				    datafetch: 3
				},
				{
					view: 'pager',
					id: 'kindPager',
					size: 3,
					group: 3,
					template: "{common.first()}{common.prev()}{common.pages()}{common.next()}{common.last()}"
				}
			]
		}
	}
});