<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<h2>Requests list:</h2>
<table>
  <tr>
    <th>KEY</th>
    <th>VALUE</th>
  </tr>
<c:forEach var="request" items="${requests}">
  <tr>
 <td>${request.key}</td>
  <td>${request.value}</td>
</c:forEach>
</table>