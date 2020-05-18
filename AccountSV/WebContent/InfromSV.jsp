<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Inform Sinh viên</title>
</head>
<body>
	Tên sinh viên là :
	<%=request.getParameter("fullname")%> <br>
	Chuyên ngành là:
	<%=request.getParameter("chuyên ngành")%> <br>
	Giới tính là:
	<%=request.getParameter("gioitinh")%> <br>
	Môn thể dục đã chọn là:
	<%=request.getParameter("monchon")%> <br>
	Những ngày học được là:
		<%
		  String[] lag = request.getParameterValues("ngay");
		  if(lag.length > 1) {	
			  for(String st : lag){
				  out.println(st + ",");
			  }
		  }
		  if(lag.length == 1){
			  out.println(lag[0]);
		  }
		%>
	<br>
	Ý kiến thêm về môn học: 
	<%=request.getParameter("message")%>
	
</body>
</html>