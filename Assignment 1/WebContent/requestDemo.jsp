<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	First name is : <%= request.getParameter("firstName") %><br><br>
	Last name is : ${param.lastName}<br><br>
	Country is : ${param.country}<br><br>
	Color is : ${param.color}<br><br>
	<ul>
	<p>Languages are :</p> <% String[] str = request.getParameterValues("language");
					if(str != null){
						for(String langs : str){
							out.println("<li>"+ langs +"</li>");
						}
					}
					%>
	</ul>
</body>
</html>