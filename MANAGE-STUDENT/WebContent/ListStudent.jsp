<%@ page import="com.vti.*" %>
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
		
		<table class="table table-bordered table-hover">
			<thead>
				<tr class="thead-dark" style="text-align: center">
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Age</th>
					<th>Gender</th>
					<th>School</th>
					<th>Phone Number</th>
					<th>Email</th>
					<th>Address</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listStudents }" var="student">
					<tr>
						<td>${student.getId() }</td>
						<td>${student.getFirstName() }</td>
						<td>${student.getLastName() }</td>
						<td>${student.getAge() }</td>
						<td>${student.getGender() }</td>
						<td>${student.getSchool() }</td>
						<td>${student.getPhoneNumber() }</td>
						<td>${student.getEmail() }</td>
						<td>${student.getAddress() }</td>
						<td>
							<a href="http://localhost:8080/MANAGE-STUDENT/EditStudent.jsp">Edit</a>						
						</td>
						<td>
							<a href="http://localhost:8080/MANAGE-STUDENT/DeleteStudent.jsp">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<form action="InsertStudent.jsp">	
			<input type="submit" name="submit" value="Insert"/>
		</form>
	</body>
</html>