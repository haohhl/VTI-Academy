<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<meta charset="ISO-8859-1">
	<title>List Student</title>
</head>
<body>

	<div class="container">
 			<h2 id="h2ListStudent">List Student</h2>	
 			
 			<a href="<%=request.getContextPath()%>/insert">Add new user</a><br><br>
 					           
 			<table class="table table-striped">
	   			<thead>
	     			<tr>
	     				<th>ID</th>
	       				<th>First Name</th>
	       				<th>Last Name</th>
	       				<th>Email</th> 
	       				<th>Action</th>
	     			</tr>
	   			</thead>
	   			<tbody>
		   			<c:forEach var="temp" items="${listStudent}">
						<tr>
							<td><c:out value="${temp.getId()}"/></td>
							<td><c:out value="${temp.getFirstName()}"/></td>
							<td><c:out value="${temp.getLastName()}"/></td>
							<td><c:out value="${temp.getEmail()}"/></td>	
							<td><a href="edit?id=<c:out value="${temp.getId()}"/>">Edit</a>&nbsp&nbsp&nbsp&nbsp<a href="delete?id=<c:out value="${temp.getId()}"/>">Delete</a></td>
						</tr>
					</c:forEach>				
   				</tbody>
 			</table>
	</div>
</body>
</html>