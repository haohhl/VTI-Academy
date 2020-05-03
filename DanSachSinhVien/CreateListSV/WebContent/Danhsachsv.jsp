<%@page import="com.vti.student"%>
<%@page import="com.vti.Danhsachlop"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Danh Sach Sinh Vien</title>
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
	<div class="container">
	<h3>Danh sach Sinh viên</h3>
	<p> tog sv là <%= Danhsachlop.initData() %></p>
	<table class="table table-dark table-striped">
		<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th>School</th>
				<th>Phone number</th>
				<th>Address</th>
			</tr>
		</thead>
		<tbody>
			<!-- <c:forEach var="objSV" items="${danhSachSV}">
			<tr>
					<td> ${objSV.id }   </td> 
					<td> ${objSV.name }   </td>
					<td> ${objSV.age }   </td>
					<td> ${objSV.gender }   </td> 
					<td> ${objSV.school }   </td> 
					<td> ${objSV.phoneNumber }   </td> 
					<td> ${objSV.address }   </td>  
			</tr> 
			</c:forEach> -->
		 	<% for(int i= 0; i < Danhsachlop.danhSach.size(); i++){
					out.print("<tr>"); %>
					
					<% out.print("<td>"); %> <%=Danhsachlop.danhSach.get(i).getId() %> <% out.print("</td>"); %>
					<% out.print("<td>"); %> <%=Danhsachlop.danhSach.get(i).getName() %> <% out.print("</td>"); %>
					<% out.print("<td>"); %> <%=Danhsachlop.danhSach.get(i).getAge() %> <% out.print("</td>"); %>
					<% out.print("<td>"); %> <%=Danhsachlop.danhSach.get(i).getGender() %> <% out.print("</td>"); %>
					<% out.print("<td>"); %> <%=Danhsachlop.danhSach.get(i).getSchool() %> <% out.print("</td>"); %>
					<% out.print("<td>"); %> <%=Danhsachlop.danhSach.get(i).getPhoneNumber() %> <% out.print("</td>"); %>
					<% out.print("<td>"); %> <%=Danhsachlop.danhSach.get(i).getAddress() %> <% out.print("</td>"); %>
					
					<% out.print("</tr>"); 
					}%> 
		</tbody>
	</table>
	</div>
</body>
</html>