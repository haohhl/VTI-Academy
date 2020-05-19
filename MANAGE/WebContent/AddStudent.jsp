<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Student Form</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">		
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>		
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<div style="text-align: center">
					<h1>INSERT STUDENT</h1>
				</div>
				<form action="/MANAGE/add">
					<fieldset class="form-group">
						<label>First Name: </label>
						<input type="text" class="form-control" name="firstName">
					</fieldset>
	
					<fieldset class="form-group">
						<label>Last Name: </label>
						<input type="text" class="form-control" name="lastName">
					</fieldset>
	
					<fieldset class="form-group">
						<label>Email: </label>
						<input type="text" class="form-control" name="email">
					</fieldset>
	
					<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>