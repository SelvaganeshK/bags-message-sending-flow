<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE HTML>
<html>
<head>
<%@include file="header.jsp" %>
 </head>
<body>
	
	  
    <div class="main">
      <div class="shop_top">
	     <div class="container">
						<form:form  modelAttribute="userBean">
								<div class="register-top-grid">
								<a href="index">Home</a>
										<h3>PERSONAL INFORMATION</h3>
										<div>
											<span>Name <label>*</label></span>
											<form:input path="name" />
											<sf:label path="name">Name: </sf:label>
											
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('name')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
										</div>
										<div>
											<span>User Name <label>*</label></span>
											<form:input path="username" type="text"/> 
											<sf:label path="username">UserName: </sf:label>
					<sf:input path="username" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
										</div>
										<div>
											<span>DateOfBirth <label>*</label></span>
											<form:input path="dob" />
											<sf:label path="dob">DateOfBirth: </sf:label>
					<sf:input path="dob" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('dob')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /> 
										</div>
										<div>
											<span>Mobile Number <label>*</label></span>
											<form:input path="mob_no"/>
											<sf:label path="mob_no">Mob_No: </sf:label>
					<sf:input path="mob_no" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mob_no')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br /> 
										</div>
										
										<div>
											<span> Email <label>*</label></span>
											<form:input path="email"/>
											<sf:label path="email">Email: </sf:label>
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
											<form:input path="billadd"/>
											<sf:label path="billadd">BillingAddress: </sf:label>
					<sf:input path="billadd" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('billadd')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
										</div>
										<div>
											<span> ShippingAddress <label>*</label></span>
											<form:input path="shipadd"/>
											<sf:label path="shipadd">ShippingAddress: </sf:label>
					<sf:input path="shipadd" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('shipadd')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
										</div>
										<div>
											<span> City <label>*</label></span>
											<form:input path="city"/>
											<sf:label path="city">City: </sf:label>
					<sf:input path="city" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('city')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
										</div>
										<div>
											<span> LandMark(Nearest) <label>*</label></span>
											<form:input path="landmark"/>
											<sf:label path="landmark">LandMark: </sf:label>
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
											<form:input path="password"/>
											<sf:label path="password">Password: </sf:label>
					<sf:input path="password" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
										</div>
										<div>
											<span>ConfirmPassword <label>*</label></span>
											<form:input path="confirmpass"/>
											<sf:label path="confirmpass">ConfirmPassword: </sf:label>
					<sf:input path="confirmpass" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('confirmpass')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
										</div>
										<div class="clear"> </div>
								</div>
								<div class="clear"> </div>
								<center><input type="submit" name="_eventId_submit" class="button" value="SUBMIT"><div class="clear"></div></center>
						</form:form>
					</div>
		   </div>
	  </div>
	
	 <%@include file="footer.jsp" %> 
</body>	
</html>