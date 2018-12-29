<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
	<head>
		<title>PUT Page</title>
		<link rel="stylesheet" href="css/custom.css"/>
	</head>
	<body>
		<div>
			<div>
		<h1>This is response to the current PUT request</h1>
		<br/>
		<c:choose>
			<c:when test="${exception == null}">
				<h4>Updated value '${value}' for key '${key}'</h4>
			</c:when>
			<c:otherwise>
				<h4>${exception}</h4>
			</c:otherwise>
		</c:choose>
		</div>
		<br/>
		<h4>All POST requests (inner state, task 1):</h4>
		<c:forEach var="request" items="${requests}">
			<p>${request.key}:${request.value}</p>
		</c:forEach>
		<form action="servlet" method="GET">
						<input type="hidden" name="command" value="get"/>
        				<input type="hidden" name="isIndex" value="true"/>
			<input type="submit" class="button" value="RETURN"/>
		</form>
			</div>
	</body>
</html>