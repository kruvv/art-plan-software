define(function() {
	return {
		rows: [
			{
            	view: 'button',
            	label: 'Main',
            	click: function() {
					routie('');
				}
			},
			{
				view: 'list',
				data: [
					'one',
					'two',
					'three'
				]
			}
		]
	}
});