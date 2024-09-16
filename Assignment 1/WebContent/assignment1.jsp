<%@ page import="com.vti.demo.jsp.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>StudentS</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
	  <h2>STUDENTS LIST</h2>
	  <hr>
	  <table class="table table-striped table-responsive">
	    <thead>
	      <tr>
	        <th>ID</th>
	        <th>NAME</th>
	        <th>AGE</th>
	        <th>GENDER</th>
	        <th>SCHOOL</th>
	        <th>PHONE NUMBER</th>
	        <th>ADDRESS</th>
	      </tr>
	    </thead>
	    <tbody>
			<c:forEach items="<%=students.createList()%>" var="infor">
				<tr>
					<td><c:out value="${infor.getId()}"></c:out></td>
					<td><c:out value="${infor.getName()}"></c:out></td>
					<td><c:out value="${infor.getAge()}"></c:out></td>
					<td><c:out value="${infor.getGender()}"></c:out></td>
					<td><c:out value="${infor.getSchool()}"></c:out></td>
					<td><c:out value="${infor.getPhoneNum()}"></c:out></td>
					<td><c:out value="${infor.getAddress()}"></c:out></td>
				</tr>
			</c:forEach>
	    </tbody>
	  </table>
	</div>
	
</body>
</html>