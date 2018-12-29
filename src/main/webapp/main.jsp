<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>
	<head>
		<title>Main page</title>
		<link rel="stylesheet" href="css/main.css">
		</head>
		<body>
		<div>
		<h1>Welcome!</h1>
		<p>This app processes your REST requests. Please click the 'START' button below to continue.</p>
		</div>
		<br/>
		<form action="servlet" method="GET">
				<input type="hidden" name="command" value="get"/>
				<input type="hidden" name="isIndex" value="true"/>
			<input type="submit" class="button" value="START"/>
		</form>
	</body>
</html>