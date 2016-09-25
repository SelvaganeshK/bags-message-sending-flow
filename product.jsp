<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
   
   <%@include file="header4.jsp" %>  
   <style>
   img,
   img {
      width: 70%;
      margin: auto;
  }
  </style>

   
</head>
<body>
<center>
<div class="main">
      <div class="shop_top">
		<div class="container">
			<div class="col-md-6">
				 <div class="login-page">
					
					<img src="<c:url value='resources/images/logo.jpg'/>" class="img-responsive" alt=""/>
					 <div class="clear"></div>
				  </div>
				</div>
				<div class="col-md-6">
				 <div class="login-title">
	           		<h2 class="title">ADD PRODUCT</h2>
	           		
					<div id="loginbox" class="loginbox">
						<form:form action="./saveProduct" method="POST" commandName="prod" enctype="multipart/form-data">
						
						<br>
						  <fieldset class="input">
						    
						      <label for="productname">PRODUCT NAME</label>
						      <form:input path="name" type="text" name="productname" class="inputbox" size="18" autocomplete="off"/>
						      
						      <label for="productdescription">PRODUCT DESCRIPTION</label>
						      <form:input path="description" type="text" name="productdescription" class="inputbox" size="18" autocomplete="off"/>
						   
						      <label for="productprice">PRODUCT PRICE</label>
			                  <form:input path="price" type="number" name="productprice" class="inputbox" size="18" autocomplete="on"/>
			    
			                  <label for="supplier">SUPPLIER</label>
			                  <form:select path="supplier" class="form-control">
			                  <c:forEach items="${sList}" var="x">
			                  <option value="${x.name}">${x.name}
			                  </option>
			                    </c:forEach>
			                    </form:select>
			                </div>  
			                
			                
			                  <label for="category">CATEGORY</label>
			                  <form:select path="category" class="form-control">
			                  <c:forEach items="${cList}" var="x">
			                  <option value="${x.name}">${x.name}</option>
			                  
			                  </c:forEach>
			                 </form:select>
			               
			     
						    
						      <label for="productImage">PRODUCT IMAGE</label>
						      <form:input path="file" type="file" class="form-control"/>${message}
							  <form:hidden path="imgs" value="${img}"/>
						    
						    <br>
							<div class="submit">
						    <input type="submit" name="Submit" class="button" value="ADD"><div class="clear"></div>
							 
							 </div>
							 
						
		</form:form>
					</div>
			      </div>
				 <div class="clear"></div>
			  </div>
			</div>
		  </div>
	  </div>
	<br>
	<a href="listproduct">CLICK HERE TO GOTO LIST PAGE</a>
		
		<br>
		<div ng-app="myApp" ng-controller="ProductController">
		<table border="2">
			<th> ID </th>
			<th> NAME </th>
			<th> DESCRIPTION </th>
			<th> PRICE </th>
			<th>SUPPLIER</th>
			<th>CATEGORY</th>
			<th>IMAGE</th>
			<th> EDIT </th>
			<th> DELETE </th>

			<c:forEach items="${ProductList}" var="Product">
				<tr>
					<td>${Product.pid}</td>
					<td>${Product.name}</td>
					<td>${Product.description}</td>
					<td>${Product.price}</td>
					<td>${Product.supplier}</td>
					<td>${Product.category}</td>
					<td><img src="<c:url value="${Product.imgs}"/>" height="100px" width="100px"/></td>
					<td><a href="editproduct?id=${Product.pid}">edit</a></td>
					<td><a href="deleteProduct?id=${Product.pid}">delete</a></td>




				</tr>

			</c:forEach>
		</table>
		</div>
</center>
	<%@include file="footer.jsp" %>
</body>
</html>