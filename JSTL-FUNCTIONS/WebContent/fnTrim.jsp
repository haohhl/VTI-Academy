<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Using JSTL Functions</title>
</head>
<body>
	<p>fn:trim() loại bỏ khoảng trắng từ cả hai đầu của chuỗi. Nó chủ yếu
	được sử dụng để bỏ qua các khoảng trắng từ cả hai đầu của chuỗi.</p><hr>
	
	<c:set var="str1" value="Do   Tien    Anh    "/>  
	<p>String-1 Length is : ${fn:length(str1)}</p>  
	
	<c:set var="str2" value="${fn:trim(str1)}" />  
	<p>String-2 Length is : ${fn:length(str2)}</p>  
	<p>Final value of string is : ${str2}</p>  
	
</body>
</html>