<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>
	<head>
		<title>DELETE Page</title>
		<link rel="stylesheet" href="css/custom.css">
		</head>
		<body>
			<div>
				<div>
			<h1>This is response to DELETE request</h1>
			<br/>
            			<c:choose>
            				<c:when test="${empty exception}">
            					<h4>Deleted object with key '${key}'</h4>
            				</c:when>
            				<c:otherwise>
            					<h4>${exception}</h4>
            				</c:otherwise>
            			</c:choose>
            			<br/>
            				<div/>
            		</h2>All POST requests (inner state, task 1):
            	</h2>
            	<c:forEach var="request" items="${requests}">

            			<p>${request.key}:${request.value}:</p>

            	</c:forEach>
		<form action="servlet" method="GET">
				<input type="hidden" name="command" value="get"/>
				<input type="hidden" name="isIndex" value="true"/>
			<input type="submit" class="button" value="RETURN"/>
		</form>
			</div>
	</body>
</html>