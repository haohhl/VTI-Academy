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
	<p>fn:substringBefore() trả về tập hợp con của chuỗi trước một chuỗi
	con cụ thể. Nó được sử dụng để trả về một phần của chuỗi gốc nằm
	trước giá trị chuỗi đã chỉ định.</p><hr>
	
	<c:set var="string" value="Hi, This is JAVATPOINT.COM developed by SONOO JAISWAL."/>  
	${fn:substringBefore(string, "developed")} 
</body>
</html>