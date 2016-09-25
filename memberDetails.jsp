<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>REGISTER</title>
		<link href="style.css" rel="stylesheet" type="text/css" />
		<%@include file="header.jsp" %>
	</head>
 
	<body>
		  <div class="main">
      <div class="shop_top">
	     <div class="container">
				
				<h4>PERSONAL INFORMATION</h4>
				<sf:form modelAttribute="userBean"><br />
				<div class="register-top-grid">
				<div>
				<span>Name <label>*</label></span>
					<sf:input path="name" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('name')}" var="err">
					  <div><span>${err.text}</span></div>
					  </c:forEach><br />
					  </div>
					
					<div>
				   <span>UserName <label>*</label></span>
					<sf:input path="username" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err">
					  <div><span>${err.text}</span></div>
					  </c:forEach><br />
					  </div>
					
					<div>
					<span>DateOfBirth <label>*</label></span>
					<sf:input path="dob" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('dob')}" var="err">
					  <div><span>${err.text}</span></div>
					  </c:forEach><br />
					  </div>
					
					<div>
					<span>Mobile Number <label>*</label></span>
					<sf:input path="mob_no" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mob_no')}" var="err">
					  <div><span>${err.text}</span></div>
					  </c:forEach><br />
					  </div>
					
					<div>
					<span> Email <label>*</label></span>
					<sf:input path="email" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err">
					  <div><span>${err.text}</span></div>
					  </c:forEach><br />
					  </div>
					  <div class="clear"> </div>
											
										
										<div class="clear"> </div>
								</div>
								<div class="clear"> </div>
						<div class="register-bottom-grid">
						<h3>DELIVERY INFORMATION</h3>		
					
					<div>
					<span> BillingAddress <label>*</label></span>
					<sf:input path="billadd" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('billadd')}" var="err">
					  <div><span>${err.text}</span></div>
					  </c:forEach><br />
					  </div>
					
					<div>
					<span> ShippingAddress <label>*</label></span>
					<sf:input path="shipadd" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('shipadd')}" var="err">
					  <div><span>${err.text}</span></div>
					  </c:forEach><br />
					  </div>
					
					<div>
					<span> City <label>*</label></span>
					<sf:input path="city" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
					  <div><span>${err.text}</span></div>
					  </c:forEach><br />
					  </div>
					
					<div>
					<span> LandMark(Nearest) <label>*</label></span>
					<sf:input path="landmark" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('landmark')}" var="err">
					  <div><span>${err.text}</span></div>
					  </c:forEach><br />
					  </div>
					  <div class="clear"> </div>
								</div>
								<div class="clear"> </div>
								<div class="register-bottom-grid">
										<h3>LOGIN INFORMATION</h3>
					
					<div>
					<span>Password <label>*</label></span>
					<sf:input path="password" type="password" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					  
					</c:forEach><br />
					</div>
					<div>
					<span>ConfirmPassword <label>*</label></span>
					<sf:input path="confirmpass" type="password" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('confirmpass')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					</div>
										<div class="clear"> </div>
								</div>
								<div class="clear"> </div>
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:
					-->
					<center><input name="_eventId_submit" type="submit" value="Submit" /><br /></center>
				</sf:form>
			</fieldset>
				</div>
		   </div>
	  </div>
		 <%@include file="footer.jsp" %> 
	</body>
</html>