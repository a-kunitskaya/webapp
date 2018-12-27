<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html>
	<head>
		<title>DELETE Page</title>
		<link rel="stylesheet" href="css/custom.css">
		</head>
		<body>
			<h3 align="center">This is response to DELETE request</h3>
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
            		</h2>All POST requests (inner state, task 1):
            	</h2>
            	<c:forEach var="request" items="${requests}">
            		<tr>
            			<td>${request.key}:${request.value}: </td>
            		</tr>
            	</c:forEach>

Total views from cookie 1: ${cookie['views']}
Total views from cookie 2: ${cookie['views'].getValue()}
Total views from cookie 3: ${cookie.views}
Total views from cookie 4: ${cookie.views.getValue()}

		<form action="index.jsp" method="GET">
			<input type="submit" class="button" value="RETURN"/>
		</form>
	</body>
</html>