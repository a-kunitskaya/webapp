<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html>
	<head>
		<title>POST Page</title>
		<link rel="stylesheet" href="css/custom.css">
		</head>
		<body>
			<h2 align="center">This is response to POST request</h2>
			</h4>Key, value from request: ${key}:${value}</h4>
		</h2>All POST requests (inner state, task 1):
	</h2>
	<c:forEach var="request" items="${requests}">
		<tr>
			<td>${request.key}:${request.value}: </td>
		</tr>
	</c:forEach>
	<form action="index.jsp" method="GET">
		<input type="submit" class="button" value="RETURN"/>
	</body>
</html>