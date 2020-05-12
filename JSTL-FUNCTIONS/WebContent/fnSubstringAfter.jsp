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
	<p>fn:substringAfter() trả về tập hợp con của chuỗi theo sau là một
	chuỗi con cụ thể. Nó trả về một phần của chuỗi nằm sau giá trị chuỗi
	được cung cấp.</p><hr>
	
	<c:set var="string" value="Nakul Jain anh"/>  
	${fn:substringAfter(string, "Nakul J")}   
</body>
</html>