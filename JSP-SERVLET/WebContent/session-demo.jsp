<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Demo</title>
</head>
<body>
	<form action="">
		Add New Item: <input type="text" name="item">
		<input type="submit" value="Submit"/>
	</form>
	
	<br><br>
	Item Entered: ${param.item}
	
	<hr>
	<%
		// get listItem from session
		List<String> items = (List<String>) session.getAttribute("todoList");
		
		// Gia su session object khong ton tai => create new list
		if(items == null) {
			items = new ArrayList<String>();
			session.setAttribute("todoList", items);
		}
		
		// Them item vao trong list
		String theItem = request.getParameter("item");
		if(theItem != null && !items.contains(theItem)) {
			items.add(theItem);
		}		
	%>
	
	<br>
	<ol>
		<% for(String x: items) {
			out.println("<li>" + x + "</li>");
		}
		%>
	</ol>


</body>
</html>