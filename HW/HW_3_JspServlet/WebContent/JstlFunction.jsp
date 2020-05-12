<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title>JSTL Function</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>

<body>
  <div class="container" style="padding: 35px;">

    <div style="padding: 35px; border: 1px solid hotpink;">
      <h2>JSTL fn:contains() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fncontains.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="String" value="Welcome to javatpoint" />

              <c:if test="${fn:contains(String, 'javatpoint')}">
                <p>Found javatpoint string<p>
              </c:if>

              <c:if test="${fn:contains(String, 'JAVATPOINT')}">
                <p>Found JAVATPOINT string<p>
              </c:if>

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:containsIgnoreCase() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fncontainsIgnoreCase.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="String" value="Welcome to javatpoint" />

              <c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">
                <p>Found javatpoint string<p>
              </c:if>

              <c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">
                <p>Found JAVATPOINT string<p>
              </c:if>

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:endsWith() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fnendsWith.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="String" value="Welcome to JSP programming" />

              <c:if test="${fn:endsWith(String, 'programming')}">
                <p>String ends with programming<p>
              </c:if>

              <c:if test="${fn:endsWith(String, 'JSP')}">
                <p>String ends with JSP<p>
              </c:if>

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:escapeXml() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fnescapeXml.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="string1" value="It is first String." />
              <c:set var="string2" value="It is <xyz>second String.</xyz>" />

              <p>With escapeXml() Function:</p>
              <p>string-1 : ${fn:escapeXml(string1)}</p>
              <p>string-2 : ${fn:escapeXml(string2)}</p>

              <p>Without escapeXml() Function:</p>
              <p>string-1 : ${string1}</p>
              <p>string-2 : ${string2}</p>

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:indexOf() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fnindexOf.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="string1" value="It is first String." />
              <c:set var="string2" value="It is <xyz>second String.</xyz>" />

              <p>Index-1 : ${fn:indexOf(string1, "first")}</p>
              <p>Index-2 : ${fn:indexOf(string2, "second")}</p>

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:trim() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fntrim.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="str1" value="Welcome to JSP        programming         " />
              <p>String-1 Length is : ${fn:length(str1)}</p>

              <c:set var="str2" value="${fn:trim(str1)}" />
              <p>String-2 Length is : ${fn:length(str2)}</p>
              <p>Final value of string is : ${str2}</p>

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:startsWith() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fnstartsWith.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="msg" value="The Example of JSTL fn:startsWith() Function" />
              The string starts with "The": ${fn:startsWith(msg, 'The')}
              <br>The string starts with "Example": ${fn:startsWith(msg, 'Example')}

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:split() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fnsplit.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="str1" value="Welcome-to-JSP-Programming." />
              <c:set var="str2" value="${fn:split(str1, '-')}" />
              <c:set var="str3" value="${fn:join(str2, ' ')}" />

              <p>String-3 : ${str3}</p>
              <c:set var="str4" value="${fn:split(str3, ' ')}" />
              <c:set var="str5" value="${fn:join(str4, '-')}" />

              <p>String-5 : ${str5}</p>

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:toLowerCase() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fntoLowerCase.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="string" value="Welcome to JSP Programming" />
              ${fn:toLowerCase("HELLO,")}
              ${fn:toLowerCase(string)}

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:toUpperCase() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fntoUpperCase.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="site" value="javatpoint.com" />
              <c:set var="author" value="Sonoo Jaiswal" />
              Hi, This is ${fn:toUpperCase(site)} developed by ${fn:toUpperCase(author)}.

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:substring() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fnsubstring.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="string" value="This is the first string." />
              ${fn:substring(string, 5, 17)}

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:substringAfter() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fnsubstringAfter.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="string" value="Nakul Jain" />
              ${fn:substringAfter(string, "Nakul")}

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:substringBefore() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fnsubstringBefore.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="string" value="Hi, This is JAVATPOINT.COM developed by SONOO JAISWAL." />
              ${fn:substringBefore(string, "developed")}

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:length() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fnlength.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="str1" value="This is first string" />
              <c:set var="str2" value="Hello" />
              Length of the String-1 is: ${fn:length(str1)}<br>
              Length of the String-2 is: ${fn:length(str2)}

            </div>
          </div>
        </div>
      </div>
    </div>

    <div style="padding: 35px; border: 1px solid hotpink; border-top: none;">
      <h2>JSTL fn:replace() Function</h2>
      <div class="row">
        <div class="col-lg-12">
          Code:
          <div class="card">
            <code class="card-header">
              <jsp:include page="./resources/HTML/fnreplace.html"></jsp:include>
            </code>
          </div>
        </div>
        <div class="col-lg-12">
          Result:
          <div class="card">
            <div class="card-text">

              <c:set var="author" value="Ramesh Kumar" />
              <c:set var="string" value="pqr xyz abc PQR" />
              ${fn:replace(author, "Ramesh", "Suresh")}
              ${fn:replace(string, "pqr", "hello")}

            </div>
          </div>
        </div>
      </div>
    </div>



  </div>
</body>

</html>