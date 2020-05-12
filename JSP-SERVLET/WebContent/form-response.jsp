<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	The Student fristName is submitted: <%= request.getParameter("firstName") %>
	<br><br>
	The Student lastName is submitted: ${param.lastName }
	
	<br><br>
	Country: ${param.country}
	
	<br><br>
	Color: ${param.favoriteColor}
	
	<br><br>
	Language:  ${param.favoriteLanguage}
	
	<ul>
		<% String [] langs = request.getParameterValues("favoriteLanguage");
			if(langs != null) {
				for(String str : langs) {
					out.print("<li>"+str+"</li>");
				}
			}
		%>
	</ul>
	
</body>
</html>