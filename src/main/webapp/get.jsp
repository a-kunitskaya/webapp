<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html>
	<head>
		<title>GET Page</title>
		<link rel="stylesheet" href="css/custom.css"/>
	</head>
	<body>
	<div>
		<h1>This is response to GET request</h1>
		<br/>
		<form action="index.jsp" method="GET">
						<input type="hidden" name="command" value="get"/>
        				<input type="hidden" name="isIndex" value="true"/>
			<input type="submit" class="button" value="RETURN"/>
		</form>
	<div>
	</body>
</html>