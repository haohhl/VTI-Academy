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
	<p>fn:length() trả về số lượng ký tự bên trong một chuỗi hoặc số
	lượng mục trong bộ sưu tập. Nó được sử dụng để tính toán độ dài của
	chuỗi và để tìm ra số lượng phần tử trong một bộ sưu tập.</p><hr>
	
	<c:set var="str1" value="This is first string"/>  
	<c:set var="str2" value="Hello"/>  
	Length of the String-1 is: ${fn:length(str1)}<br>  
	Length of the String-2 is: ${fn:length(str2)}  
</body>
</html>