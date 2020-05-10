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
	Phone Number is: ${param.phoneNumber}<br><br>
	Country is : ${param.country}<br><br>
	Gender is : ${param.gender}<br><br>
	Literacy is/are: 
		<ul>
	<% String[] str = request.getParameterValues("study");
					if(str != null){
						for(String stu : str){
							out.print("<li>"+ stu +"</li>");
						}
					}
					%>
	</ul>
</body>
</html>