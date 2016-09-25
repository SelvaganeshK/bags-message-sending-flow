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
   angular.module('myapp',[]).controller('SupplierController',function($scope)
   {
	 
	   $scope.aa=c;
	   
   });
</script>

 </head>
<body>

<%@include file="header4.jsp"%>

<div class="container" ng-app="myapp" ng-controller="SupplierController">

<p>SEARCH YOUR SUPPLIER HERE:</p>

<p><input type="text" class="form-control" placeholder="Search...." ng-model="test"></p>

<table border="2">
			<th>ID</th>
			<th>NAME</th>
			<th>ADDRESS</th>
			<th>EDIT</th>
			<th>DELETE</th>

			
				<tr ng-repeat="supplier in aa | filter:test">
					<td>{{supplier.pid}}</td>
					<td>{{supplier.name}}</td>
					<td>{{supplier.address}}</td>
					<td><a href="editsupplier?id={{supplier.pid}}">edit</a></td>
					<td><a href="deleteSupplier?id={{supplier.pid}}">delete</a></td>

				</tr>

		
		</table>
</div>

<%@include file="footer.jsp" %>	
</body>
</html>