<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
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
        <img src="<c:url value='resources/images/mens1.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
          
        </div>
      </div>

      <div class="item">
        <img src="<c:url value='resources/images/mens2.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
          
        </div>
      </div>
    
      <div class="item">
        <img src="<c:url value='resources/images/mens3.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
         
        </div>
      </div>

	  <div class="item">
        <img src="<c:url value='resources/images/mens4.jpg" alt="" width="460" height="345'/>"/>
        <div class="carousel-caption">
          <h3></h3>
         
        </div>
      </div>
      <div class="item">
        <img src="<c:url value='resources/images/mens5.jpg" alt="" width="460" height="345'/>"/>
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
					<img src="<c:url value='resources/images/gethu.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Addidas A3</a></h3>
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
					<img src="<c:url value='resources/images/fastrack1.jpg" class="img-responsive" alt=""'/>"/>
					
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
					<img src="<c:url value='resources/images/fast.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Fastrack Hound</a></h3>
						<p>Style Bag for Boys and girls</p>
						
						<span class="actual">Rs.500</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/wildcraft wild.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">WildCraft W3</a></h3>
						<p>stylish orange college bag </p>
						
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
					<img src="<c:url value='resources/images/nike.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Nike</a></h3>
						<p>Symbol for style</p>
						<span class="actual">Rs.650</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/wildcraft oo.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Wildcraft spikez</a></h3>
						<p>Bleed in Blue </p>
						<span class="actual">Rs.999</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/wildcraft-str.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">Wiki zz</a></h3>
						<p>Stylish laptop bags </p>
						
						<span class="actual">Rs.1098</span><br>
						<ul class="buttons">
							<li class="cart"><a href="#">Add To Cart</a></li>
							<li class="shop_btn"><a href="#">Buy Now</a></li>
							<div class="clear"> </div>
					    </ul>
				    </div>
				</a></div>
				<div class="col-md-3 shop_box"><a href="single.html">
					<img src="<c:url value='resources/images/skybags.jpg" class="img-responsive" alt=""'/>"/>
					
					<div class="shop_desc">
						<h3><a href="#">skybags</a></h3>
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