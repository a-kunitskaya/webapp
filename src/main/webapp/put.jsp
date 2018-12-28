<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html>
	<head>
		<title>PUT Page</title>
		<link rel="stylesheet" href="css/custom.css">
		</head>
		<body>
			<h2 align="center">This is response to PUT request</h2>
			<br/>
			<c:choose>
				<c:when test="${empty exception}">
				<h4>${exception}</h4>
				</c:when>
				<c:otherwise>
					<h4>Updated value '${value}' for key '${key}'</h4>
				</c:otherwise>
			</c:choose>
			<br/>
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