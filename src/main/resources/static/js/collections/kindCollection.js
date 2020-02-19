define(function() {
	//Receive a collection of animal types
	return  new webix.DataCollection({ url:"api/kind/list" });
	
})