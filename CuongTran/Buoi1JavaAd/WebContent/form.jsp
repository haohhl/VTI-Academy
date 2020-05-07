<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>Name:<%=request.getParameter("name") %></p>
<p>Age:<%=request.getParameter("age") %></p>
<ul>
	<% String select[] = request.getParameterValues("units");
		if(select != null && select.length !=0){
			out.println("You are: ");
			for(int i= 0; i<select.length; i++){
				out.println(select[i]+",");
			}
		}
		out.println("<br/>");
		out.println("You also are: ");
		String name = request.getParameter("classes");
		out.println(name);
		
		out.println("<br/>");
		String namesecond = request.getParameter("othertroops");
		out.println("You may want to try to be ");
		char ch = namesecond.charAt(0);
		if(ch==96){
			out.println("an "+namesecond);
		}else{
			out.println("a " +namesecond);
		}
	%>
</ul>
</body>
</html>