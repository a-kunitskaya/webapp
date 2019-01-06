<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="en_US"/>
<!doctype html>
<html>
<head>
    <title>Main page</title>
    <link rel="stylesheet" href="css/main.css"/>
</head>
<body>
<div>
    <fmt:bundle basename="com.kunitskaya.service.EnLocaleBundle">
        <h1>
            <fmt:message key="greetings"/>
        </h1>
        <p>
            <fmt:message key="welcomeMsg"/>
        </p>
    </fmt:bundle>
    <br/>
    <p> Current time:

        <c:set var="now" value="<%= new java.util.Date()%>"/>
        <fmt:formatDate type="time" value="${now}"/>
    </p>
    <form action="servlet" method="GET">
        <input type="hidden" name="command" value="get"/>
        <input type="hidden" name="isIndex" value="true"/>
        <input type="submit" class="button" value="START"/>
    </form>
</div>
</body>
</html>