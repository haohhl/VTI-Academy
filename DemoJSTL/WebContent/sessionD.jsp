<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="">
		Add item list: <input type="text" placeholder="Nhập item" name="item">
		<br> <input type="submit" value="submit">
	</form>

	<br>
	<br> Item entered: ${param.item}

	<hr>

	<%
		//get Listitems from session
		List<String> listItems = (List<String>) session.getAttribute("todoLlist");
		// gia su session obj khong ton tai => create new session object.

		if (listItems == null) {
			listItems = new ArrayList<String>();
			session.setAttribute("todoLlist", listItems);
		}

		// add item into listitem

		String item = request.getParameter("item");
		if(item != null && !listItems.contains(item)){
			listItems.add(item);
		}
	%>
	<ol>
		<%
			for(String it : listItems) {
				out.println("<li>" + it + "</li>");
			}
			
		%>
	</ol>


</body>
</html>