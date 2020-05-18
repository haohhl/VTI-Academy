<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Customer Information<br><br>
	1. Full Name<br><br>
		1.1. First Name: <%= request.getParameter("firstName") %><br><br>
		1.2. Last Name: <%= request.getParameter("lastName") %><br><br>
	2. Address<br><br>
		2.1. Street Address: <%= request.getParameter("address") %><br><br>
		2.2. City: <%= request.getParameter("city") %><br><br>
		2.3. State/Province: ${param.stateProvince}<br><br>
		2.4. Zip Code: ${param.zipCode}<br><br>
		2.5. Country: ${param.country}<br><br>
	3. Comment: ${param.comment}<br><br>
	Product<br><br>
	3.1. Color:
	<ul>
	<%
		String[] colors = request.getParameterValues("colorProduct");
		if (colors != null){
			for (String index: colors){
				out.println("<li>" + index + "</li>");
			}
		}
	%>
	</ul>
	3.2. Quantity:  ${param.quantity}<br><br>
	3.3. Delivery:  ${param.delivery}<br><br>
	
</body>
</html>