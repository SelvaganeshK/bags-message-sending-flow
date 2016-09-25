<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
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
	  <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

   
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="<c:url value='resources/images/lagguage1.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
          
        </div>
      </div>

      <div class="item">
        <img src="<c:url value='resources/images/lagguage2.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
          
        </div>
      </div>
    
	<div class="item">
        <img src="<c:url value='resources/images/lagguage3.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
          
        </div>
      </div>
      <div class="item">
        <img src="<c:url value='resources/images/lagguage4.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
         
        </div>
      </div>

      <div class="item">
        <img src="<c:url value='resources/images/lagguage5.jpg" alt="" width="460" height="345'/>"/>
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
	<div class="main">
      <div class="shop_top">
		<div class="container">
			<div class="row shop_box-top">
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/american.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">American Tourister</a></h3>
						<p>Travel bag 24 litres </p>
						
						<span class="actual">Rs.1298</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/corona allinone.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Corona allinone</a></h3>
						<p> All in One Feature</p>
						<span class="actual">Rs.2290</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/fastrack travel.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Fastrack Bags</a></h3>
						<p>Simple and stylish look</p>
						
						<span class="actual">Rs.1800</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/Skybags-Riviera.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Skybags luggage</a></h3>
						<p>High class traveller </p>
						
						<span class="actual">Rs.2019</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
			</div>
			<div class="row">
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/2.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Zwart Bags</a></h3>
						<p>18Litres travel bags</p>
						<span class="actual">Rs.950</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/Waterproof.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Skybags</a></h3>
						<p>Waterproof luggages</p>
						<span class="actual">Rs.3187</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/suitcase.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Wildcraft Trolleys</a></h3>
						<p>Trucking Bags </p>
						
						<span class="actual">Rs.1098</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/traveling-bags.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">WildCraft Travel Bags</a></h3>
						<p>Stylish bag for truckers</p>
						
						<span class="actual">Rs.1999</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
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