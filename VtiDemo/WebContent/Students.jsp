<%@ page import="com.vti.demo.jsp.Student"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VTI</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>
<body>
	<h1 style="text-align: center;">Danh sách sinh viên</h1>
	<table class="table">
		<thead>
			<tr>
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
		<%
			List<Student> st = new ArrayList<>();
			st.add(new Student(1, "Le Thu Huong"	, 	22, "Nu"	, "NEU", "0972099925", "Ha Noi"));
			st.add(new Student(2, "Nguyen Manh Hung", 	23, "Nam"	, "NEU", "0972099926", "Ha Noi"));
			st.add(new Student(3, "Ho Thi Thu Hien"	, 	22, "Nu"	, "NEU", "0972099927", "Ha Noi"));
			st.add(new Student(4, "Nguyen Thi Ha"	, 	24, "Nu"	, "NEU", "0972099928", "Ha Noi"));
			st.add(new Student(5, "Nguyen Thanh Nam", 	22, "Nam"	, "NEU", "0972099929", "Ha Noi"));
			st.add(new Student(6, "Tran Ngoc Anh"	, 	23, "Nu"	, "NEU", "0972099935", "Ha Noi"));
			st.add(new Student(7, "Le Viet Thang"	, 	22, "Nam"	, "NEU", "0972099946", "Ha Noi"));
			st.add(new Student(8, "Le Mai Trang"	, 	22, "Nu"	, "NEU", "0972099905", "Ha Noi"));
			st.add(new Student(9, "Nguyen Lan Nhi"	, 	22, "Nu"	, "NEU", "0972099965", "Ha Noi"));
			st.add(new Student(10, "Hoang Ha My"	,	22, "Nu"	, "NEU", "0972099955", "Ha Noi"));
			for(int i=0; i<10;i++)
	    	{
		%>
			<tr class="table-warning">
				<td><% out.println(st.get(i).getId()); %></td>
				<td><% out.println(st.get(i).getName()); %></td>
				<td><% out.println(st.get(i).getAge()) ;%></td>
				<td><% out.println(st.get(i).getGender()) ;%></td>
				<td><% out.println(st.get(i).getSchool()) ;%></td>
				<td><% out.println(st.get(i).getPhoneNumber()) ;%></td>
				<td><% out.println(st.get(i).getAddress()) ; }%></td>
			</tr>
		</tbody>
	</table>
	<div>
		<c:forEach items="<%=st%>" var="test">
			<p><c:out value="${test.name}"/></p>
		</c:forEach>
	</div>
</body>
</html>