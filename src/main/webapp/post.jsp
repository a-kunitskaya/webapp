<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html>
<head>

    <title> POST Page</title>
    <link rel="stylesheet" href="css/custom.css">

</head>
<body>

<h2 align="center">This is response to POST request</h2>
<h4>The value from request: ${value}</h4>

<br>
                    							<h2></h2>Total requests count: ${requestCount}
                    						</h2>
                    						<br>
                    						</h2>All requests: </h2>
                    							<br>
                    					<c:forEach items="${requests}" var="request">
                    						<tr>
                    							<td>
                    								<c:out value="${request}"/>
                    							</td>
                    						</tr>
                    					</c:forEach>

<form action="index.jsp" method="GET">
<input type="submit" class="button" value="RETURN"/>

</body>
</html>