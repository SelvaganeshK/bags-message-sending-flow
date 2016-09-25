<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>

 </head>
<body>
<%@include file="header4.jsp" %>
<br>
<br>



<div class="main">
      <div class="shop_top">
		<div class="container">
			<div class="col-md-6">
				 <div class="login-page">
					
					<img src="<c:url value='resources/images/supp.jpg'/>" class="img-responsive" alt=""/>
					 <div class="clear"></div>
				  </div>
				</div>
				<div class="col-md-6">
				 <div class="login-title">
	           		<h2 class="title">EDIT SUPPLIER</h2>
	           		
					<div id="loginbox" class="loginbox">
						<form:form action="./updateSupplier" method="POST" commandName="sup">
						
						<br>
						 
						    
						      <label for="categoryid">SUPPLIER ID</label>
						      <form:input path="pid" type="text" value="${SupplierObject.pid}" readonly="true" name="supplierid" class="inputbox" size="18" autocomplete="off"/>
						      
						      <label for="categoryname">SUPPLIER NAME</label>
						      <form:input path="name" type="text" value="${SupplierObject.name}" name="suppliername" class="inputbox" size="18" autocomplete="off"/>
						   
						   <label for="supplieraddress">SUPPLIER ADDRESS</label>
						      <form:input path="description" type="text" value="${SupplierObject.description}" name="supplieraddress" class="inputbox" size="18" autocomplete="off"/>
						   
						      <br>
						    <br>
						   <div class="submit"/>
							<input type="reset" name="action" class="button" value="RESET" onclick="Supplier" />
						    <input type="submit" name="action" class="button" value="UPDATE"  />
		                    
		                     </div>
		                    
						
		</form:form>
					</div>
			      </div>
				 <div class="clear"></div>
			  </div>
			</div>
		  </div>
	  </div>




<%@include file="footer.jsp" %>	


	
		
</body>
</html>