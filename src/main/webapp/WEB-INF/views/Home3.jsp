<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<header></header>

<body>
<c:if test="${!empty logoutMessage}">
<div class="alert alert-success">${logoutMessage}</div>
</c:if>

<c:if test="${!empty successMessage}">
<div class="alert alert-success">${successMessage}</div>
</c:if>

<c:if test="${!empty errorMessage}">
<div class="alert alert-danger">${errorMessage}</div>
</c:if>


<c:if test="${isUserClickedRegisterHere==true}">
<%@ include file="/WEB-INF/views/Register.jsp" %>
</c:if>

<c:if test="${isUserClickedLoginHere==true || invalidCredentials==true}">
<div id="error">${errorMessage}</div>
<%@ include file="/WEB-INF/views/Login.jsp" %>
</c:if>


</body>
</html>