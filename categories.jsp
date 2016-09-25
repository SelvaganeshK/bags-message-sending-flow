<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">


<head>
 <%@include file="header2.jsp" %>
  
   <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
  </style>
</head>


<body>


 
  
 <div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
   
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

   
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="<c:url value='resources/images/categories1.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
          
        </div>
      </div>

      <div class="item">
        <img src="<c:url value='resources/images/categories2.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
          
        </div>
      </div>
    
      <div class="item">
        <img src="<c:url value='resources/images/categories3.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
         
        </div>
      </div>

      <div class="item">
        <img src="<c:url value='resources/images/categories4.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
        </div>
      </div>
  
    </div>

    
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
 
  <div class="container">

  
     
       <div class="row">
    
        <div class="col-lg-12">
  
              <h1 class="page-header">OUR CATEGORIES</h1>
 
          </div>
     
       <div class="col-md-4">
    
            <div class="panel panel-default">
    
                <div class="panel-heading">
   
                     <h4><center>MENS BAGS</center></h4>
     
               </div>
            
        <div class="panel-body">
    <img src="<c:url value='resources/images/mens.jpg" class="img-rounded" alt="mens world" width="320" height="200'/>"/>
                    
 
                       <a href="mens" class="btn btn-default">CHECK IN</a>
    
                </div>
        
        </div>
        
    </div>
        
   <div class="col-md-4">
   
             <div class="panel panel-default">
     
               <div class="panel-heading">
     
                   <h4><center>WOMENS BAGS</center></h4>
   
                 </div>
           
         <div class="panel-body">
  
                      <img src="<c:url value='resources/images/womens.jpg" class="img-rounded" alt="womens world" width="320" height="200'/>"/>
   
                     <a href="womens" class="btn btn-default">CHECK IN</a>
  
                  </div>
         
       </div>
       
     </div>
         
   <div class="col-md-4">
   
             <div class="panel panel-default">
     
               <div class="panel-heading">
        
                <h4><center>TRAVEL BAGS</center></h4>
    
                </div>
            
        <div class="panel-body">
    
                   <img src="<c:url value='resources/images/travels.jpg" class="img-rounded" alt="travel world" width="320" height="200'/>"/>
    
                    <a href="travels" class="btn btn-default">CHECK IN</a>
  
                  </div>
       
         </div>
          
  </div>
   
     </div>
   
        
   
     

  
  </div>
   
  <%@include file="footer.jsp" %> 
 <script src="<c:url value='resources/bootstrap/js/jquery.js'/>"/></script>

  
   
   <script src="<c:url value='resources/bootstrap/js/bootstrap.min.js'/>"/></script>

  
  
  <script>
 
   $('.carousel').carousel({
        interval: 3000 
    })
    
</script>

</body>

</html>
