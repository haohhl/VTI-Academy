<%@page import="com.vti.jsp.entity.Student"%>
<%@page import="com.vti.jsp.MainApp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>JSP Homework 1</title>
	<!-- CSS -->
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css" rel="stylesheet">
</head>
<body>
 <%! MainApp obj= new MainApp(); %>
 <% obj.CreateListStu(); %>
 
<div class="container">
    <span style="font-size:30px">
		<b>Quản lý học sinh</b>
    </span>
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
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
      <% for (Student student : obj.getListStudent()) {
			out.println("<tr>");
			out.println("<td>"+student.getStuId()+"</td>");
			out.println("<td>"+student.getName()+"</td>");
			out.println("<td>"+student.getAge()+"</td>");
			out.println("<td>"+student.getGender()+"</td>");
			out.println("<td>"+student.getSchool()+"</td>");
			out.println("<td>"+student.getPhoneNumber()+"</td>");
			out.println("<td>"+student.getAddress()+"</td>");
			out.println("</tr>");
		}
	  %>              
      </tbody>
    </table>
</div>

	<!-- Bootstrap core JavaScript-->
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	<!-- Page level plugin JavaScript-->
  	<script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
  	<script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
  	<script>
	$(function () {
    	$('#dataTable').DataTable({
      	"pageLength": 4,
      	"paging": true,
     	"lengthChange": false,
      	"searching": false,
      	"ordering": true,
      	"info": false,
      	"autoWidth": false
      	});
  	});
	</script>
</body>
</html>