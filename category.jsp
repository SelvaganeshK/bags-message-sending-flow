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
					
					<img src="<c:url value='resources/images/cate.jpg'/>" class="img-responsive" alt=""/>
					 <div class="clear"></div>
				  </div>
				</div>
				<div class="col-md-6">
				 <div class="login-title">
	           		<h2 class="title">ADD CATEGORY</h2>
	           		
					<div id="loginbox" class="loginbox">
						<form:form action="./saveCategory" method="POST" commandName="cat" enctype="multipart/form-data">
						
						<br>
						  <fieldset class="input">
						    
						      <label for="categoryname">CATEGORY NAME</label>
						      <form:input path="name" type="text" name="categoryname" class="inputbox" size="18" autocomplete="off"/>
						      
						      <label for="categorydescription">CATEGORY DESCRIPTION</label>
						      <form:input path="description" type="text" name="categorydescription" class="inputbox" size="18" autocomplete="off"/>
						   
						      <br>
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
	  <a href="listcategory">CLICK HERE TO GOTO LIST PAGE</a>
		<br>
		<div ng-app="myApp" ng-controller="CategoryController">
		<table border="2">
			<th> ID </th>
			<th> NAME </th>
			<th> DESCRIPTION </th>
			<th> EDIT </th>
			<th> DELETE </th>

			<c:forEach items="${CategoryList}" var="Category">
				<tr>
					<td>${Category.fid}</td>
					<td>${Category.name}</td>
					<td>${Category.description}</td>
					<td><a href="editcategory?id=${Category.fid}">edit</a></td>
					<td><a href="deleteCategory?id=${Category.fid}">delete</a></td>




				</tr>

			</c:forEach>
		</table>
		</div>
</center>
	<%@include file="footer.jsp" %>
</body>
</html>