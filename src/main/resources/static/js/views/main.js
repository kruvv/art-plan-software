define(function() {
	return {
	    type: 'line',
	    height: 400,
	    rows:[
	    	{ view:"template", 
	            type:"header", template:"for ArtPlanSoftware" },
	        {
	            	view: 'button',
	            	label: 'Animals',
	            	click: function() {
						routie('animals');
					}
	        },    
	        { template:"Row 1" }, //first row
	        { template:"Row 2" }  //second row
	    ]
	}
});