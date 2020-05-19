<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>List Student</title>
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
	<div style="text-align: center">
		<h1>LIST STUDENT</h1>
	</div>

	<form action="AddStudent.jsp" class="container text-left">
		<input type="submit" name="submit" value="Add New Student"/>
	</form><br>
	<a href="<%=request.getContextPath()%>/list" class="nav-link"></a>
	<table class="table table-bordered table-hover">
		<thead>
			<tr class="thead-dark" style="text-align: center">
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${listStudents }" var="student">
				<tr>
					<td><c:out value="${student.id }"/></td>
					<td><c:out value="${student.firstName }"/></td>
					<td><c:out value="${student.lastName }"/></td>
					<td><c:out value="${student.email }"/></td>
					<td>
						<a href="edit?id=<c:out value='${student.id}' />">Edit</a>						
					</td>
					<td>
						<a href="delete?id=<c:out value='${student.id}' />">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>