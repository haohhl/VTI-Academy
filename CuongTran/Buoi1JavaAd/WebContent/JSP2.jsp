
<%@page import="com.vti.demo.jsp.DemoUtils" %>
<%@page import="com.vti.demo.jsp.danhsach" %>
<%@page import="com.vti.demo.jsp.list" %>
<%@page import="com.vti.demo.jsp.sinhvien" %>
<%@page import="java.util.Scanner" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
		<c:forEach items="<%=DemoUtils.add()%>" var="li">
			<p>
				<c:out value ="${li}"/>
			</p>	
		</c:forEach>
		
		<c:set var="salary" scope="request" value="200 denari"/>
		<br/>
		Salary: <c:out value ="${salary}"/>
				
		<c:remove var="salary" scope="request"/>
		<br/>
		New salary: <c:out value ="${salary}"/>
		
		<c:set var="salary" scope="request" value="100 denari"/>
		<br/>
		Final salary: <c:out value="${salary }"></c:out>
		
		<c:if test="${a>=b }">
			<c:out value="${a}"/>
		</c:if>
	</div>
	
	<form action="form.jsp">
		Name:<input type="text" name="name"/>
		Age:<input type="text" name="age"/>
		<input type="radio" name="classes" value="famer"/>Famer
		<input type="radio" name="classes" value="noble"/>Noble
		<br>
		<input type="checkbox" name="units" value="calvary"/>Calvary
		<input type="checkbox" name="units" value="footman"/>Footman
		<br>
		<p>Other troops</p>
		<select name="othertroops">
			<option value="crossbowman">Crossbowman</option>
			<option value="archer">Archer</option>
			<option value="egyptianmanluk">EgyptianManluk</option>
			<option value="mercenaryswordband">MercenarySwordband</option>
		</select>
		<input type="submit" name="submit" value="send"/>
	</form>
	<table>
	<thead>
		<tr colspan="6">Thong tin</tr>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Age</th>
			<th>School</th>
			<th>Address</th>
			<th>Phone</th>
		</tr>
	</thead>
	<tbody>
		<%
					
					for(int i=0; i<sinhvien.create().size(); i++){
						out.println("<tr>");
						out.println("<td>"+ sinhvien.create().get(i).getId()+"</td>");
						out.println("<td>"+ sinhvien.create().get(i).getAge()+"</td>");
						out.println("<td>"+ sinhvien.create().get(i).getName()+"</td>");
						out.println("<td>"+ sinhvien.create().get(i).getPhone()+"</td>");
						out.println("<td>"+ sinhvien.create().get(i).getSchool()+"</td>");
						out.println("<td>"+ sinhvien.create().get(i).getAddress()+"</td>");
						out.println("</tr>");
					}
				%>
		
			<c:forEach items="<%= sinhvien.create()%>" var="test">
			<tr>
				
				<td><c:out value="${test.getId()}"/></td>
				
				<td>${test.getName()}</td>
				
				<td>${test.getAge()}</td>
				
				<td>${test.getSchool()}</td>
				
				<td>${test.getAddress()}</td>
				
				<td>${test.getPhone()}</td>
			</tr>	
			</c:forEach>
			
	</tbody>
	</table>
</body>
</html>