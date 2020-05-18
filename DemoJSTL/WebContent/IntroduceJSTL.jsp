<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Introduce JSTL</title>
</head>
<body>
	<h4>c:out</h4>
	<c:out value="${'Hoạt động như <%= %>, '}"></c:out>
	<br />
	<c:out value="${'Cho phép truy cập thuộc tính qua ký tự (.)'}" />


	<br>
	<br>

	<h4>c:set</h4>
	<c:out value="${'evaluates an expression'}"></c:out>
	<c:set var="salaries" scope="session" value="${2000*5}" />
	<br />
	<c:out value="${salaries}" />

	<br>
	<br>

	<h4>c:remove</h4>
	Before remove:
	<c:out value="${salaries}" />
	<br>
	<c:remove var="salaries" />
	After remove:
	<c:out value="${salaries}" />

	<br>
	<br>

	<h4>c:if</h4>
	<c:set var="money" value="${1200/4}" />
	<c:if test="${money < 1000}">Money equal:<c:out value="${money}" />
	</c:if>

	<h4>c:choose; c:when; c:otherwise</h4>
	<c:out value="${'c:choose, Thẻ này giống thẻ switch'}" />
	<br>
	<c:out value="${'c:when, Thẻ này giống thẻ case'}" />
	<br>
	<c:out value="${'c:otherwise, Thẻ này giống default'}" />
	<br>
	<br>

	<c:choose>
		<c:when test="${money <= 0}">
			Money is very low to survive.
		</c:when>

		<c:when test="${money > 200}">
			Money is very good.
		</c:when>

		<c:otherwise>
			No comment sir...
		</c:otherwise>
	</c:choose>
	<br>
	<br>
	<h4>c:forEach</h4>
	<br>
	<c:forEach var="i" begin="1" end="5" step="2" >
         Item <c:out value="${i}" />
		<p>
	</c:forEach>


</body>
</html>