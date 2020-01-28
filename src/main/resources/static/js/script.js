var app = angular.module("ArtPlanSoftware", []);

	app.controller("AppCtrl", function($scope, $http) {
		
		$scope.websites = [];
		
		$http({
			  method: 'GET',
			  url: 'http://localhost:9090/api/animals'			 
		
			}).then(function successCallback(response) {
				$scope.websites = response.data.content;
				console.log($scope.websites);
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
		$(this).find('#contentId').text(contentId);
		$(this).find('#contentName').text(contentName);
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
		$(this).find('#contName').text(contName);
		//$(this).find('#contKind').text(contKind)
		$(this).find('#contSex').text(contSex);
		$(this).find('#contBirthday').text(contBirthday);
	});
		  
});