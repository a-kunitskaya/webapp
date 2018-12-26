<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Home page</title>
		<link rel="stylesheet" href="css/custom.css"/>
	</head>
	<body>
		<h2 align="center">Click a button below to submit request</h2>

		<form action="servlet" method="GET">
			<input type="submit" class="button" value="GET"/>
		</form>

		<form action="servlet" method="POST">
			<br/>
			<input type="text" placeholder="Enter key to POST" class="form" name="key"/>
			<br/>
			<input type="text" placeholder="Enter value to POST" class="form" name="value"/>
			<br/>
			<input type="submit" class="button" value="POST"/>
		</form>
					<br/>
				<form action="servlet" method="PUT">
        			<br/>
        			<input type="text" placeholder="Enter value to update PUT" class="form" name="value"/>
        			<br/>
        			<input type="submit" class="button" value="POST"/>
        		</form>
					<br/>
		<button class="button">PUT</button>
		<button class="button">DELETE</button>
		<h2>Total views count:</h2><%= com.kunitskaya.service.ViewCounter.getViewsCount()%>
	</body>
</html>