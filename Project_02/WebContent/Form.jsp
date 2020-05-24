<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Form Student</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
</head>
<body>
	<h2>Form Student</h2><br><br>
	
	<c:if test="${student != null }">
		<form action="update" >
	</c:if>
	<c:if test="${student == null }">
		<form action="insert">
	</c:if>
	
	<c:if test="${student != null }">
		<input type="hidden" name="id" value="<c:out value="${student.id }"/>" />
	</c:if>
				
	<form>
		<div class="form-group">
		    <label>First Name:</label>
		    <input type="text" class="form-control" value="<c:out value="${student.firstName }"/>" name="firstName">
  		</div>
  		<div class="form-group">
		    <label>Last Name:</label>
		    <input type="text" class="form-control" value="<c:out value="${student.lastName }"/>" name="lastName">
  		</div>
		<div class="form-group">
		  <label>Email:</label>
		  <input type="text" class="form-control" value="<c:out value="${student.email }"/>" name="email">
		</div>
  		<button type="submit">Save</button>
	</form>
	
</body>
</html>