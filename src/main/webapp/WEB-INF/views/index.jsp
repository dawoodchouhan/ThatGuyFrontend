<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <html>
<body>
<div data-role="page">
<div data-role="header" data-position="fixed">
<table width="100%">
<tr>
<c:choose>
<c:when test="${empty loggedInUser}">
<td align="left">Existing user<a href="loginHere">Login Here</a></td>
<td align="center">New user<a href="registerHere">Register Here</a></td>
</c:when>
<c:when test="${not empty loggedInUser}">
<td>Welcome &{loggedInUser}</td>

<td align="right"><a href="logout">Logout</a></td>
</c:when>
</c:choose>



</body>
</html>
