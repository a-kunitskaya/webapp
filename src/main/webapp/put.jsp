<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
	<head>
		<title>PUT Page</title>
		<link rel="stylesheet" href="css/main.css">
		<link rel="stylesheet" href="css/custom.css"/>
	</head>
	<body>
		<div>
		<h1>This is response to the current PUT request</h1>
		<br/>
		<c:choose>
			<c:when test="${exception == null}">
				<p>Updated value '${value}' for key '${key}'</p>
			</c:when>
			<c:otherwise>
				<p>${exception}</p>
			</c:otherwise>
		</c:choose>
		<br/>
<jsp:include page="parts/all_requests.jsp"/>
<jsp:include page="parts/return.jsp"/>
			</div>
	</body>
</html>