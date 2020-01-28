<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- My CSS -->
    <link rel="stylesheet" href="/css/mystyle.css" type="text/css" />
    
    <title>Welcome!</title>
  </head>
  <body ng-app="ArtPlanSoftware">
  	<div class="container" ng-controller="AppCtrl">
  	
   <!-- Modal add new animal -->
	<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="addModalLabel">Add new Animal</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        	<form>			  
				  <div class="form-group">
						<label for="InputName">Nikname animal</label>
						<input type="text" class="form-control" id="InputName" placeholder="Sharik">
				    
					    <label for="FormControlSelectKind">Kind of animal</label>
					    <select class="form-control" id="FormControlSelectKind">
					      <option></option>
					      <option>Dog</option>
					      <option>Cat</option>
					      <option>Cat</option>
					      <option>Bird</option>
					      <option>Reptile</option>				      
					    </select>
					    
					    <label for="FormControlSelectSex">Sex</label>
					    <select class="form-control" id="FormControlSelectSex">
					      <option></option>
					      <option>Male</option>
					      <option>Female</option>
					    </select>
					    
					    <label for="FormControlBirthday">Date birthday</label>
					    <input type="date" class="form-control" id="date" name="date">
				  </div>			 
				</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary btn-sm">Add</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	
   <!-- Modal info about animal -->
	<div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="infoModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="infoModalLabel">Info about Animal</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        	<form>			  
				  <div class="form-group">
						<label>Nikname animal: <span id="contName"></span></label><br>
						<label>Kind of animal: <span id="contKind"></span></label><br>
					    <label>Sex: <span id="contSex"></span></label><br>
					    <label>Date birthday: <span id="contBirthday"></span></label>
				  </div>			 
				</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>

	<!-- Modal Delete -->	
	<div class="modal fade" id="delModal" tabindex="-1" role="dialog" aria-labelledby="delModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="delModalLabel">Delete Animal</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        	<form>			  
				  <div class="form-group" >
				        <label>Are you sure you want to remove this animal?</label><br>
						<label>Id animal: <span id="contentId"></span></label><br>						
						<label>Nikname animal: <span id="contentName"></span></label>									    
				  </div>			 
				</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary btn-sm" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-danger btn-sm">Delete</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	
    
    	<div class="row">
    		<div class="col-md-12">
    			<div class="panel panel-default">
    				<div class="panel-heading"><h2>for Art Plan Software</h2>
    					<h5>Table with Animals</h5>
    				</div>
    				<table id="result" class="table table-striped">
  				 	<thead>
  				 		<tr>
  				 			<th>id</th>
  				 			<th>Nickname</th>  				 			
  				 			<th><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addModal">Add New Anamal</button></th>
  				 			
  				 		</tr>
  				 	</thead>
  				 	<tbody>
  				 		<tr id={{item.id}} ng-repeat="item in websites">  				 			
  				 			<td>{{item.id}}</td>
  				 			<td>{{item.name}}</td>
  				 			
  				 			<td>
	  				 			<div class="btn-group" role="group">
								    <button id="btnGroupDrop" type="button" class="btn btn-info dropdown-toggle btn-sm" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								      Select action
								    </button>
								    <div class="dropdown-menu" aria-labelledby="btnGroupDrop">
								      <a id="info" class="dropdown-item"  href="#" data-toggle="modal" data-target="#infoModal"  data-contName="{{item.name}}" data-contKind="{{item.kind}}" data-contSex="{{item.sex}}" data-contBirthday="{{item.birthday}}">Info</a>
								      <a id="edit" class="dropdown-item" href="#">Edit</a>
								      <a id="del" class="dropdown-item"  href="#" data-toggle="modal" data-target="#delModal" data-contentId="{{item.id}}" data-contentName="{{item.name}}">Delete</a>
								    </div>
								  </div>
							 </td>  				 			
  				 		</tr>
  				 	</tbody>
  				</table>
    			</div>
    		</div>
    	</div>
    </div>
   
	   

	

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <script type="text/javascript" src="js/angular.min.js"></script> 
    <script src="/js/script.js" type="text/javascript"></script>
  </body>
</html>