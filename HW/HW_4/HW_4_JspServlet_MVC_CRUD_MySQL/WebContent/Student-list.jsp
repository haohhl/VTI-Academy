<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>List Student</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<div class="container">
<h1>List Student</h1>
<a class="btn btn-success" href="<%=request.getContextPath()%>/new">Add	New Student</a>
<table class="table table-bordered table-hover">
	<thead class="thead-dark">
	<tr>
		<th>Id</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gender</th>
		<th>Birth Date</th>
		<th>Address</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	</thead>
	<tbody>
		<c:forEach var="s" items="${listStudent}">
		<tr>
			<td>${s.id}</td>
			<td>${s.firstName}</td>
			<td>${s.lastName}</td>
			<td>
			<c:if test="${s.gender == true}">
			Male
			</c:if>
			<c:if test="${s.gender == false}">
			Female
			</c:if>
			</td>
			<td><fmt:formatDate pattern = "dd/MM/yyyy" value = "${s.birthDate}"/></td>
			<td>${s.address}</td>
			<td><a class="btn btn-success" href="edit?id=${s.id}">Edit</a></td>					
			<td><a class="btn btn-success" href="delete?id=${s.id}" onclick="return confirm('Are you want to delete?')">Delete</a></td>
		</tr>
		</c:forEach>
	</tbody>
</table>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>