<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
	<head>
		<title>POST Page</title>
		<link rel="stylesheet" href="css/main.css">
		<link rel="stylesheet" href="css/custom.css">
		</head>
		<body>
			<div>
			<h1>This is response to POST request</h1>
			<p>Key, value from the current request: ${key}:${value}</p>

<jsp:include page="parts/all_requests.jsp"/>
<br/>
<jsp:include page="parts/return.jsp"/>

	</div>
</html>