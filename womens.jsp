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
        <img src="<c:url value='resources/images/womens1.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
          
        </div>
      </div>

      <div class="item">
        <img src="<c:url value='resources/images/womens2.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
          
        </div>
      </div>
	  
    <div class="item">
        <img src="<c:url value='resources/images/womens3.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
          
        </div>
      </div>
      <div class="item">
        <img src="<c:url value='resources/images/womens4.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
         
        </div>
      </div>

      <div class="item">
        <img src="<c:url value='resources/images/womens5.jpg" alt="" width="460" height="345'/>"/>
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
					<img src="<c:url value='resources/images/feminina-Lady.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Feminina Lady</a></h3>
						<p>Womens 2016 style</p>
						
						<span class="actual">Rs.598</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/messenger-bag.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Fastrack style</a></h3>
						<p>style and cool college flip bag </p>
						<span class="actual">Rs.690</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/virginland.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">VirGinLand</a></h3>
						<p>Style Bag for girls</p>
						
						<span class="actual">Rs.500</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/Preppy-French.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Preppy French</a></h3>
						<p>stylish blue college bag </p>
						
						<span class="actual">Rs.1019</span><br>
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
					<img src="<c:url value='resources/images/simple.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Nike</a></h3>
						<p>Style and crazy wallets</p>
						<span class="actual">Rs.350</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/wallets.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Black Pearl</a></h3>
						<p>Black with Blue </p>
						<span class="actual">Rs.699</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/Wind-backpack.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Wiki zz</a></h3>
						<p>Stylish lovely bags </p>
						
						<span class="actual">Rs.1098</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/Women-Clutch-Hand-Bags.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Skybags</a></h3>
						<p>Skybags for life</p>
						
						<span class="actual">Rs.799</span><br>
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