<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
      <link rel="stylesheet" href="<c:url value="/resources/admin.css"/>">
<html>
<head>

<title>products</title>
<style>

body {
  
background:url('http://www.publicdomainpictures.net/pictures/130000/nahled/red-side-gradient-background.jpg');

  margin:0px;
   background-repeat:no-repeat;

   background-size:cover;
  
font-family: 'Ubuntu', sans-serif;

}
</style>
</head>
<body>
<%@ include file="commonheader.jsp" %>
<h1>Add Product</h1>
<c:url var="addAction" value="/product/add"></c:url>
<form:form action="${addAction}" enctype="multipart/form-data" method="post">
   <table>
   <tr>
   <td><form:label path="id">
   <spring:message text="ID"/>
   </form:label></td>
   
   <c:choose>
   <c:when test="${!empty product.id}">
   <td><form:input path="id" value="" disabled="true" readonly="true"/>
   </td>
   </c:when>
   
   <c:otherwise>
   <td><form:input path="id" pattern=".{6,7}" required="true"
   		title="id should contain 6 to 7 characters"/></td>
   		</c:otherwise>
   		</c:choose>
   		<tr>
   		<form:input path="id" hidden="true"/>
   		<td><form:label path="name">
   		<spring:message text="Name"/>
   		</form:label>
   		</td>
   		<td><form:input path="name" required="true"/></td>
   		</tr>
   		
   		<tr>
   		<td><form:label path="price">
   		<spring:message text="Price"/>
   		</form:label></td>
   		<td><form:input path="price" required="true"/></td>
   		</tr>
   		
   		<tr>
   		<td><form:label path="description">
   		<spring:message text="Description"/>
   		</form:label></td>
   		<td><form:input path="description" required="true"/></td>
   		</tr>
   		
   		<tr>
   		<td><form:label path="supplier">
   		<spring:message text="Supplier"/>
   		</form:label></td>
   		<td><form:input path="supplier.name" items="${supplierList}" itemValue="name" itemLabel="name"/></td>
   		</tr>
   		
   		<tr>
   		<td><form:label path="category">
   		<spring:message text="Category"/>
   		</form:label></td>
   		<td><form:input path="category.name" items="${categoryList}" itemValue="name" itemLabel="name"/></td>
   		</tr>
   		
   		<tr>
   		  <td align="left"></td>
   		  <td align="left"><input type="file" name="image" /></td>
   		  </tr>
   		  
   		  <tr>
   		  <td colspan="2"><c:if test="${!empty product.name}">
   		  <input type="submit" value="<spring:message text="Edit Product"/>"/>
   		  </c:if><c:if test="${empty product.name}">
   		  <input type="submit" value="<spring:message text="Add Product"/>"/>
   		  </c:if></td>
   		  </tr>
   		
   		</table>
</form:form>
<br>


<h3>Product List</h3>
<c:if test="${!empty productList}">
<table class="tg">
<tr>
	<th width="80">Product ID</th>
	<th width="120">Product Name</th>
	<th width="200">Product Description</th>
	<th width="80">Price</th>
	<th width="80">Product Category</th>
	<th width="80">Product Supplier</th>
	<th width="60">Edit</th>
	<th width="60">Delete</th>
	</tr>
	<c:forEach items="${productList}" var="product">
	<tr>
	<td>${product.id}</td>
	<td>${product.name}</td>
	<td>${product.description}</td>
	<td>${product.price}</td>
	<td>${product.category.name}</td>
	<td>${product.supplier.name}</td>
	<td><a href="<c:url value='product/edit/${product.id}'/>">Edit</a></td>
	<td><a href="<c:url value='product/remove/${product.id}'/>">Delete</a></td>
	</tr>
	</c:forEach>
	
	</table>
	</c:if>
	

<%@ include file="commonfooter.jsp" %>

</body>
</html>