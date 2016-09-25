<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>

<%@include file="header2.jsp" %>

</head>
<body>
				
	<div class="banner">
	<div id="fwslider">
         <div class="slider_container">
             <div class="slide">
               <img src="<c:url value='resources/images/Baggit.jpg'/>" class="img-responsive" alt=""/>
                <div class="slide_content">
                    <div class="slide_content_wrap">
                        
                    </div>
                </div>
            </div>
            <div class="slide"> 
               
               <img src="<c:url value='resources/images/home1.jpg'/>" class="img-responsive" alt=""/>
                
                 <div class="slide_content">
                    <div class="slide_content_wrap">
                        
                    </div>
                </div>
               
            </div>
           
            <div class="slide">
               <img src="<c:url value='resources/images/good.jpg'/>" class="img-responsive" alt=""/>
                <div class="slide_content">
                    <div class="slide_content_wrap">
                        
                    </div>
                </div>
            </div>
           
        </div>
  
        <div class="timers"></div>
        <div class="slidePrev"><span></span></div>
        <div class="slideNext"><span></span></div>
      
       </div>
       
  <%@include file="footer.jsp" %>  
	
</body>	
</html>