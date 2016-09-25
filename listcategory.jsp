<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<title>BAGITTODAY</title>
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>

<script>
var c=${selva};
   angular.module('myapp',[]).controller('CategoryController',function($scope)
   {
	 
	   $scope.aa=c;
	   
   });
</script>

 </head>
<body>

<%@include file="header4.jsp"%>

<div class="container" ng-app="myapp" ng-controller="CategoryController">

<p>SEARCH YOUR CATEGORY HERE:</p>

<p><input type="text" class="form-control" placeholder="Search...." ng-model="test"></p>

<table border="2">
			<th>ID</th>
			<th>NAME</th>
			<th>DESCRIPTION</th>
			<th>EDIT</th>
			<th>DELETE</th>

			
				<tr ng-repeat="category in aa | filter:test">
					<td>{{category.fid}}</td>
					<td>{{category.name}}</td>
					<td>{{category.description}}</td>
					<td><a href="editcategory?id={{category.fid}}">edit</a></td>
					<td><a href="deleteCategory?id={{category.fid}}">delete</a></td>

				</tr>

		
		</table>
</div>

<%@include file="footer.jsp" %>	
</body>
</html>