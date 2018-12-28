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
			<input type="text" placeholder="Enter a key to POST" class="form" name="key"/>
			<br/>
			<input type="text" placeholder="Enter a value to POST" class="form" name="value"/>
			<br/>
			<input type="submit" class="button" value="POST"/>
		</form>
		<br/>
		<form action="servlet?command=put" method="POST">
			<br/>
			<input type="text" placeholder="Enter a key to UPDATE the value for" class="form" name="key"/>
			<br/>
			<input type="text" placeholder="Enter a new value" class="form" name="value"/>
			<br/>
			<input type="submit" class="button" value="PUT"/>
		</form>
		<br/>
		<form action="servlet" method="DELETE">
			<br/>
			<input type="text" placeholder="Enter a key to DELETE" class="form" name="key"/>
			<br/>
			<input type="submit" class="button" value="DELETE"/>
		</form>
		<h4>Total views count:
		<%= com.kunitskaya.service.ViewCounter.getViewsCount()%>
		</h2>
	</body>
</html>