<%@ page import="com.vti.demo.jsp.list" %>
<%@ page import="com.vti.demo.jsp.danhsach" %>
<%@page import="java.util.Scanner" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%danhsach d =new danhsach(); %>
<%d.addList(); %>

	<table>
		<tr>			
			<td>Thông tin</td>				
		</tr>
		<tr>
			<th>Họ và tên</th>
			<th>Tuổi</th>
		</tr>
		</tr>
			<%
				out.print("<td>");
				d.getName();
				out.print("</td>");
			%>	
		</tr>
	</table>
</body>
</html>