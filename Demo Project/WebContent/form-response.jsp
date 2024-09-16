<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>form-response</title>
</head>
<body>
	First Name is: <%= request.getParameter("firstName") %></br></br>
	Last Name is: ${param.lastName}</br></br>
	
	<ul>
		<% String[] langs = request.getParameterValues("gender"); 
		   if(langs != null) {
		   	for(String str : langs){
			   out.println("<li>"+str+"</li>");
		   	}
		   }
		%>
	</ul>
</body>
</html>