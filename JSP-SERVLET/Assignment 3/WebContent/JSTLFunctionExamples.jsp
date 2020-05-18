<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Function Examples</title>
</head>
<body>

	<!-- fn:contains() Function -->
	<p>1. fn:contains() Function</p>
	<c:set var="myName" value="Cao Thu Thao" />
	<c:if test="${fn:contains(myName,'Thao')}">		
		<p>My Name contains 'Thao'</p>
	</c:if>
	<br>
	<c:if test="${fn:contains(myName,'THAO')}">
		<p>My Name contains 'THAO'</p>
	</c:if>
	<br>
		
	<!-- fn:containsIgnoreCase() Function-->
	<p>2. fn:containsIgnoreCase() Function</p>
	<c:if test="${fn:containsIgnoreCase(myName, 'THAO')}">  	   
	   <p>My Name contains 'THAO'<p>  
	</c:if> 
	<br>
	
	<!-- fn:endsWith() Function -->
	<p>3. fn:endsWith() Function</p>
	<c:if test="${fn:endsWith(myName,'Thao')}">	
		<p>My Name ends with 'Thao'</p>
	</c:if>
	<br>
	
	<!-- fn:indexOf() Function -->
	<p>4. fn:indexOf() Function</p>
	<c:set var="string1" value="Mua Xuan"/>
	<c:set var="string2" value="Mua Thu"/>
	<p>Index 1: ${fn:indexOf(string1,'Xuan')}</p>
	<p>Index 2: ${fn:indexOf(string1,'Mua')}</p>
	<br>
	
	<!-- fn:trim() Function -->
	<p>5. fn:trim() Function</p>
	<c:set var="demoTrimString" value="      Hello I am Thao!      "/>
	<pre>The first string: ${demoTrimString}</pre>
	<p>The length of demoTrimString: ${fn:length(demoTrimString)}</p>
	
	<c:set var="finalTrimString" value="${fn:trim(demoTrimString)}" />  
	<pre>The second string: ${finalTrimString}</pre>
	<p>The length of finalTrimString: ${fn:length(finalTrimString)}</p>
	<br>
	
	<!-- fn:startsWith() Function -->
	<p>6. fn:startsWith() Function</p>
	<c:set var="starttWithString" value="VTI Academy"/>  
	The string starts with "The": ${fn:startsWith(starttWithString, 'The')}
	<br><br>
	
	<!-- fn:split() Function -->
	<p>7. fn:split() Function</p>
	<c:set var="str1" value="Welcome-to-VTI-Academy."/>  
	<c:set var="str2" value="${fn:split(str1, '-')}" />  
	<c:set var="str3" value="${fn:join(str2, ' ')}" />  
	  
	<p>String-3 : ${str3}</p>  
	<br>
	
	<!-- fn:toLowerCase() Function -->
	<p>8. fn:toLowerCase() Function</p>
	<c:set var="toLowerCaseString" value="WELCOME TO VTI ACADEMY"/>   
	${fn:toLowerCase(toLowerCaseString)}  
	<br><br>
	
	<!-- fn:toUpperCase() Function -->
	<p> 9. fn:toUpperCase() Function</p>
	<c:set var="toUpperCaseString" value="wwelcome to vti academy"/>   
	${fn:toUpperCase(toUpperCaseString)}  
	<br><br>
	
	<!-- fn:substring() Function -->
	<p>10. fn:substring() Function</p>
	<c:set var="substringString" value="This is the substring string."/>  
	${fn:substring(substringString, 5, 17)}  
		
	
	
   

</body>
</html>