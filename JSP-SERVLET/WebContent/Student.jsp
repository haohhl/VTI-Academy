<%@ page import="com.vti.demo.jsp.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
	<head>
		<title>Danh sách sinh viên</title>
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
		<!-- <jsp:include page="common/header.html"></jsp:include> -->
		<div style="text-align: center">
			<h1>LIST STUDENT</h1>
		</div>

		<table class="table table-bordered table-hover"">
	    	<thead>
				<tr class="thead-dark" style="text-align: center">
					<th>ID</th>
					<th>Name</th>
					<th>Age</th>
					<th>Gender</th>
					<th>School</th>
					<th>Phone Number</th>
					<th>Address</th>
				</tr>
		    </thead>
		    <tbody>
		    	<c:forEach items="${Student.add() }" var="student">
			    	<tr>
						<td>${student.getId() }</td>
						<td>${student.getName() }</td>
						<td>${student.getAge() }</td>
						<td>${student.getGender() }</td>
						<td>${student.getSchool() }</td>
						<td>${student.getPhoneNumber() }</td>
						<td>${student.getAddress() }</td>
					</tr>
		    	</c:forEach>
				<tr>
					<td>ID</td>
					<td>Name</td>
					<td>Age</td>
					<td>Gender</td>
					<td>School</td>
					<td>Phone Number</td>
					<td>Address</td>
				</tr>
		    </tbody>
		</table>		
		
		
		
		<!-- <jsp:include page="common/footer.html"></jsp:include> -->
	</body>
</html>