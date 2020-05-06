<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>jstl core tag</title>

    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
      crossorigin="anonymous"
    />
  </head>

  <body>
    <div class="container" style="padding: 35px;">
      <div style="padding: 35px; border: 1px solid hotpink;">
        <h2>c:out</h2>
        <div class="row">
          <div class="col">
            Code:
            <div class="card">
              <code class="card-header">
                <jsp:include page="./htmlctag/cout.html"></jsp:include>
              </code>
            </div>
          </div>
          <div class="col">
            Result:
            <div class="card">
              <div class="card-text">
                <p><c:out value="${'Welcome to javaTpoint'}" /></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
        <h2>c:set</h2>
        <div class="row">
          <div class="col">
            Code:
            <div class="card">
              <code class="card-header">
                <jsp:include page="./htmlctag/cset.html"></jsp:include>
              </code>
            </div>
          </div>
          <div class="col">
            Result:
            <div class="card">
              <div class="card-text">
                <p>
                  <c:set var="Income" scope="session" value="${4000*4}" />
                  <c:out value="${Income}" />
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
        <h2>c:remove</h2>
        <div class="row">
          <div class="col">
            Code:
            <div class="card">
              <code class="card-header">
                <jsp:include page="./htmlctag/cremove.html"></jsp:include>
              </code>
            </div>
          </div>
          <div class="col">
            Result:
            <div class="card">
              <div class="card-text">
                <c:set var="income" scope="session" value="${4000*4}" />
                <p>Before Remove Value is: <c:out value="${income}" /></p>
                <c:remove var="income" />
                <p>After Remove Value is: <c:out value="${income}" /></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
        <h2>c:if</h2>
        <div class="row">
          <div class="col">
            Code:
            <div class="card">
              <code class="card-header">
                <jsp:include page="./htmlctag/cif.html"></jsp:include>
              </code>
            </div>
          </div>
          <div class="col">
            Result:
            <div class="card">
              <div class="card-text">
                <p>
                  <c:set var="income" scope="session" value="${4000*4}" />
                  <c:if test="${income > 8000}">
                    My income is: <c:out value="${income}" />
                  </c:if>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
        <h2>c:choose c:when c:otherwise</h2>
        <div class="row">
          <div class="col">
            Code:
            <div class="card">
              <code class="card-header">
                <jsp:include page="./htmlctag/c3.html"></jsp:include>
              </code>
            </div>
          </div>
          <div class="col">
            Result:
            <div class="card">
              <div class="card-text">
                <c:set var="income" scope="session" value="${4000*4}" />
                <p>Your income is : <c:out value="${income}" /></p>
                <c:choose>
                  <c:when test="${income <= 1000}">
                    Income is not good.
                  </c:when>
                  <c:when test="${income > 10000}">
                    Income is very good.
                  </c:when>
                  <c:otherwise>
                    Income is undetermined...
                  </c:otherwise>
                </c:choose>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
        <h2>c:forEach</h2>
        <div class="row">
          <div class="col">
            Code:
            <div class="card">
              <code class="card-header">
                <jsp:include page="./htmlctag/cforeach.html"></jsp:include>
              </code>
            </div>
          </div>
          <div class="col">
            Result:
            <div class="card">
              <div class="card-text">
                <c:forEach var="j" begin="1" end="3">
                  <p>Item <c:out value="${j}" /></p>
                </c:forEach>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script
      src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
      integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
      integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
      integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
