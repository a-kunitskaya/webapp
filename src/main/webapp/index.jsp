<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
	<head>
		<meta charset="UTF-8"/>
		<title>Home page</title>
		<link rel="stylesheet" href="css/main.css"/>
		<link rel="stylesheet" href="css/custom.css"/>
	</head>
	<body>
		<div>
			<h1>Thank you for using the app!</h1>
			<p>Please click one of the buttons below to submit a request.</p>
		</div>
		<div>
			<form action="servlet" method="GET">
				<input type="hidden" name="command" value="get"/>
				<input type="hidden" name="isIndex" value="false"/>
				<input type="submit" class="button" value="GET"/>
			</form>
			<form action="servlet?command=post" method="POST">
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
			<form action="servlet?command=delete" method="POST">
				<br/>
				<input type="text" placeholder="Enter a key to DELETE" class="form" name="key"/>
				<br/>
				<input type="submit" class="button" value="DELETE"/>
			</form>
			<p>Total views count from cookies: ${views}</p>
		</div>
	</body>
</html>