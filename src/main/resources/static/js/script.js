var app = angular.module("ArtPlanSoftware", []);

	app.controller("AppCtrl", function($scope, $http) {
		
		$scope.websites = [];
		
		$http({
			  method: 'GET',
			  url: 'http://localhost:9090/api/animals'			 
		
			}).then(function successCallback(response) {
				$scope.websites = response.data.content;
				//console.log($scope.websites);
			  });
		
	});
	
	$('#addModal').on('hide.bs.modal', function () {
		console.log("I there!!!")
	app.controller("AppCtrl", function($scope, $http) {
		$scope.response = {};
		$scope.save = function(answer, addAnimal) {
			if(addAnimal.$valid){
				$http.post('http://localhost:9090/api/animals/add', answer).then(
						function success(response) {
							$scope.response = response.data;
							console.log("Data sending!!!")
						}
				);
			}
		}
		
	});
 });


$(document).ready(function() {
	
	// Add calendar in form
	$(function() {
		  $('input[name="birthday"]').daterangepicker({
		    singleDatePicker: true,
		    locale: {
		    	format: 'dd.MM.yyyy'
		    	}
		    });		    
		});
	
	//Set focus on element name in form
	$('#addModal').on('shown.bs.modal', function () {
		  $('#InputName').focus();
		});
		
		
//	modalDelete = function() {
//		$(document).getElementById('btnGroupDrop').onclick = function(ev) {
//			var r, s, el;
//			ev = ev || event;
//			el = ev.target || ev.srcElement;
//			s = el.rows[r].cells[0].innerHTML;
//			console.log('id this string: ' + s);
//			
//		}
//	}
	
	//when opening a modal window delete
	$('#delModal').on('show.bs.modal', function(event) {
		//get the button that opened it
		var button = $(event.relatedTarget);
		//extract information from data-content attribute
		var contentId = button.data('contentid');
		var contentName = button.data('contentname');
		//output this information to an element having id = "content"
		var modal = $(this)
		modal.find('#contentId').text(contentId);
		modal.find('#contentName').text(contentName);
	});
	
	
	//when opening a modal window info
	$('#infoModal').on('show.bs.modal', function(event) {
		//get the button that opened it
		var button = $(event.relatedTarget);
		//extract information from data-content attribute
		var contName = button.data('contname');
		//var contKind = button.data('contkind');
		var contSex = button.data('contsex');
		var contBirthday = button.data('contbirthday').slice(0, 10);
		//output this information to an element having id = "cont**"
		var modal = $(this)
		modal.find('#contName').text(contName);
		//modal.find('#contKind').text(contKind)
		modal.find('#contSex').text(contSex);
		modal.find('#contBirthday').text(contBirthday);
	});
	
	$( "label" ).find( "span" ).css( "color", "red" );
});