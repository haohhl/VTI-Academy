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
	<p>fn:escapeXml() thoát khỏi các ký tự sẽ được hiểu là đánh dấu XML.
	Nó được sử dụng để thoát ký tự trong ngôn ngữ đánh dấu XML.</p><hr>
	
	<c:set var="string1" value="It is first String."/>  
	<c:set var="string2" value="It is <xyz>second String.</xyz>"/>  
	  
	<p>With escapeXml() Function:</p>  
	<p>string-1 : ${fn:escapeXml(string1)}</p>  
	<p>string-2 : ${fn:escapeXml(string2)}</p>  
	  
	<p>Without escapeXml() Function:</p>  
	<p>string-1 : ${string1}</p>  
	<p>string-2 : ${string2}</p>  
</body>
</html>