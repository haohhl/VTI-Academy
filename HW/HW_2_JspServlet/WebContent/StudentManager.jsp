<%@page import="com.vti.jsp.entity.Student"%>
<%@page import="com.vti.jsp.MainApp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Học sinh</title>
<!-- CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css"
	rel="stylesheet">
</head>
<body>

	<%!MainApp obj = new MainApp();%>
	<%
		obj.CreateListStu();
	%>


	<div class="container">
		<span style="font-size: 30px"> <b>Quản lý học sinh</b>
		</span>
		<table class="table table-bordered" id="dataTable" width="100%"
			cellspacing="0">
			<thead>
				<tr>
					<th>ID</th>
					<th>Họ tên</th>
					<th>Tuổi</th>
					<th>Giới tính</th>
					<th>Trường học</th>
					<th>Số điện thoại</th>
					<th>Địa chỉ</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${param.id}</td>
					<td>${param.name}</td>
					<td>${param.age}</td>
					<td>${param.gender}</td>
					<td>${param.school}</td>
					<td>${param.phone}</td>
					<td>${param.address1} - ${param.address2} <%
 	String[] checkbox = request.getParameterValues("address3");
 if (checkbox != null) {
 	out.print(" / Ở cùng: ");
 	for (int i = 0; i < checkbox.length; i++) {
 		out.print(checkbox[i]);
 		if (i < checkbox.length - 1) {
 	out.print(", ");
 		}
 	}
 }
 %>
					</td>
				</tr>
				<c:forEach items="<%=obj.getListStudent()%>" var="student">
					<tr>
						<td>${student.getStuId()}</td>
						<td>${student.getName()}</td>
						<td>${student.getAge()}</td>
						<td>${student.getGender()}</td>
						<td>${student.getSchool()}</td>
						<td>${student.getPhoneNumber()}</td>
						<td>${student.getAddress()}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>


	<!-- Bootstrap core JavaScript-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- Page level plugin JavaScript-->
	<script
		src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
	<script>
		$(function() {
			$('#dataTable').DataTable({
				"pageLength" : 4,
				"paging" : true,
				"lengthChange" : false,
				"searching" : false,
				"ordering" : true,
				"info" : false,
				"autoWidth" : false
			});
		});
	</script>
</body>
</html>