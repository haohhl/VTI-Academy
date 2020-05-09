<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	First Name: <%= request.getParameter("firstName") %>
	<br>
	Last Name: ${param.lastName}
	<br>
	Age: ${param.ages}
	<br>
	School: ${param.school}
	<br>
	Color:
	<br>
	<ul>
		<% String[] langs =request.getParameterValues("color");
		if(langs!=null) {
			for(String str:langs) {
				out.println("<li>"+str+"</li>");
			}
		} 
		%>
	</ul>
</body>
</html>