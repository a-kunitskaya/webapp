<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div>
</p>All POST requests (inner state, task 1):</p>
<c:forEach var="request" items="${requests}">
<p>${request.key}:${request.value}:</p>
</c:forEach>
</div>