<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
	<head>
		<title>POST Page</title>
		<link rel="stylesheet" href="css/custom.css">
		</head>
		<body>
			</div>
			<h1>This is response to POST request</h1>
			<p>Key, value from the current request: ${key}:${value}</p>

		<div>
		</p>All POST requests (inner state, task 1):
	</p>
    		<c:forEach var="request" items="${requests}">
    			<p>${request.key}:${request.value}<p>
    		</c:forEach>

	<form action="servlet" method="GET">
					<input type="hidden" name="command" value="get"/>
    				<input type="hidden" name="isIndex" value="true"/>
		<input type="submit" class="button" value="RETURN"/>
	</body>
	</div>
</html>