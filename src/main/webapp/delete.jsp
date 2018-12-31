<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<title>DELETE Page</title>
		<link rel="stylesheet" href="css/main.css"/>
		<link rel="stylesheet" href="css/custom.css"/>
	</head>
	<body>
		<div>
			<h1>This is response to DELETE request</h1>
			<br/>
			<c:choose>
				<c:when test="${empty exception}">
					<p>Deleted object with key '${key}'</p>
				</c:when>
				<c:otherwise>
					<p>${exception}</p>
				</c:otherwise>
			</c:choose>
			<br/>
			<jsp:include page="parts/all_requests.jsp"/>
			<br/>
			<jsp:include page="parts/return.jsp"/>
		</div>
	</body>
</html>