<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>PICSELL</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Place favicon.ico in the root directory -->
    <link rel="<%=cp %>/psPage/shortcut icon" type="image/x-icon" href="<%=cp %>/psPage/images/favicon.ico">
    <link rel="<%=cp %>/psPage/apple-touch-icon" href="<%=cp %>/psPage/apple-touch-icon.png">
    

    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="<%=cp %>/psPage/css/bootstrap.min.css">
    <!-- Owl Carousel min css -->
    <link rel="stylesheet" href="<%=cp %>/psPage/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=cp %>/psPage/css/owl.theme.default.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="<%=cp %>/psPage/css/core.css">  <!-- <!--  --> <!--  -->
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="<%=cp %>/psPage/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="<%=cp %>/psPage/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="<%=cp %>/psPage/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="<%=cp %>/psPage/css/custom.css">


    <!-- Modernizr JS -->
    <script src="<%=cp %>/paPage/js/vendor/modernizr-3.5.0.min.js"></script>
    
    <script type="text/javascript">

	function sendIt() {
		
		var f = document.myForm;
		
		
		f.action = "<%=cp%>/picsell/list.do";
		f.submit();
		
	}

</script>
    
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper">
        <!-- Start Header Style -->
        <header id="htc__header" class="htc__header__area header--one">
            <!-- Start Mainmenu Area -->
            <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
                <div class="container">
                    <div class="row">
                        <div class="menumenu__container clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5"> 
                                <div class="logo">
                                     <a href="<%=cp%>/picsell/main.do"><img src="<%=cp %>/psPage/image/picsell1.png" alt="logo images"></a>
                                </div>
                            </div>
                            <div class="col-md-7 col-lg-8 col-sm-5 col-xs-3">
                                <nav class="main__menu__nav hidden-xs hidden-sm">
                                    <ul class="main__menu">
                                       
                                        <li class="drop"><a href="">Tag's</a>
                                            <ul class="dropdown mega_dropdown">
                                                <!-- Start Single Mega MEnu -->
                                                
                                                <li><a class="mega__title" 
                                                href="<%=cp %>/picsell/list_video.do">VIDEO</a>
                                                    <!-- <ul class="mvideoTaglist.jspega__item">
                                                        <li><a href="product-grid.html">Product Grid</a></li>
                                                        <li><a href="cart.html">cart</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                    </ul> -->
                                                </li>
                                                <!-- End Single Mega MEnu -->
                                                <!-- Start Single Mega MEnu -->
                                              
                                                   <!--  <ul class="mega__item">
                                                        <li><a href="#">Category</a></li>
                                                        <li><a href="#">My Account</a></li>
                                                        <li><a href="wishlist.html">Wishlist</a></li>
                                                        <li><a href="cart.html">Shopping Cart</a></li>
                                                        <li><a href="checkout.html">Checkout</a></li>
                                                    </ul> -->
                                                </li>
                                                <!-- End Single Mega MEnu -->
                                                <!-- Start Single Mega MEnu -->
                                                <li><a class="mega__title" href="<%=cp %>/picsell/list_movie.do">MOVIE POSTER</a>
                                                   <!--  <ul class="mega__item">
                                                        <li><a href="#">Simple Product</a></li>
                                                        <li><a href="#">Variable Product</a></li>
                                                        <li><a href="#">Grouped Product</a></li>
                                                        <li><a href="#">Downloadable Product</a></li>
                                                        <li><a href="#">Simple Product</a></li>
                                                    </ul> -->
                                                </li>
                                                
                                                <li><a class="mega__title" href="<%=cp %>/picsell/list_illust.do">ILLUST</a>
                                                
                                                 <li><a class="mega__title" href="<%=cp %>/picsell/list_picture.do">PICTURE</a>
                                                
                                                </li>
                                                
                                                
                                                
                                                <!-- End Single Mega MEnu -->
                                            </ul>
                                        </li>
                                       
                                        <c:if test="${empty sessionScope.PicSellCustomInfo.userId }">
                                        <li class="drop"><a href="<%=cp%>/picsell/login.do">UPLOAD</a>
                                        </c:if>
                                        <c:if test="${!empty sessionScope.PicSellCustomInfo.userId }">
										<li class="drop"><a href="<%=cp%>/picsell/up_upload.do">UPLOAD</a>
										</c:if>
                                           <!--  <ul class="dropdown mega_dropdown">
                                                Start Single Mega MEnu
                                                <li><a class="mega__title" href="product-grid.html">Shop Pages</a>
                                                    <ul class="mega__item">
                                                        <li><a href="product-grid.html">Product Grid</a></li>
                                                        <li><a href="cart.html">cart</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                    </ul>
                                                </li>
                                                End Single Mega MEnu
                                                Start Single Mega MEnu
                                                <li><a class="mega__title" href="product-grid.html">Variable Product</a>
                                                    <ul class="mega__item">
                                                        <li><a href="#">Category</a></li>
                                                        <li><a href="#">My Account</a></li>
                                                        <li><a href="wishlist.html">Wishlist</a></li>
                                                        <li><a href="cart.html">Shopping Cart</a></li>
                                                        <li><a href="checkout.html">Checkout</a></li>
                                                    </ul>
                                                </li>
                                                End Single Mega MEnu
                                                Start Single Mega MEnu
                                                <li><a class="mega__title" href="product-grid.html">Product Types</a>
                                                    <ul class="mega__item">
                                                        <li><a href="#">Simple Product</a></li>
                                                        <li><a href="#">Variable Product</a></li>
                                                        <li><a href="#">Grouped Product</a></li>
                                                        <li><a href="#">Downloadable Product</a></li>
                                                        <li><a href="#">Simple Product</a></li>
                                                    </ul>
                                                </li>
                                                End Single Mega MEnu
                                            </ul>
                                        </li>
                                        <li class="drop"><a href="#">Product</a>
                                            <ul class="dropdown">
                                                <li><a href="product-grid.html">Product Grid</a></li>
                                                <li><a href="product-details.html">Product Details</a></li>
                                            </ul> 
                                        </li>-->
                                        <c:choose>
                                        <c:when test="${!empty sessionScope.PicSellCustomInfo.userId }">
                                        <%-- <li class="drop"><a href="<%=cp%>/picsell/up_myuploadlist.do">MY UPLOAD LIST</a> --%>
                                        </li>
                                        <li class="drop"><a href="<%=cp%>/picsell/charge.do">CHARGE POINT</a>
                                        </c:when> 
                                        <c:otherwise>
                                         <%-- <li class="drop"><a href="<%=cp%>/picsell/login.do">MY UPLOAD LIST</a> --%>
                                        </li>
                                         <li class="drop"><a href="<%=cp%>/picsell/login.do">CHARGE POINT</a>
                                        </c:otherwise>
                                        </c:choose>
                                        
                                        	
                                       
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                        	
                                          <c:choose>
                                          <c:when test="${empty sessionScope.PicSellCustomInfo.userId }">
                                          <li class="drop"><a href="<%=cp%>/picsell/login.do">LOGIN</a>
                                          <li class="drop"><a href="<%=cp%>/picsell/created.do">SIGN UP</a>
                                          </c:when>
                                          <c:otherwise>
                                          <li class="drop"><a href="<%=cp%>/picsell/logout.do">LOGOUT</a>
                                          <%-- <li class="drop"><a href="<%=cp%>/picsell/created.do">SIGN UP</a> --%>
                                          </c:otherwise>
										  </c:choose>
                                      
                                           
                                           <li class="drop"><a href="<%=cp%>/picsell/board_memory.do">QnA</a>	
                                          
                                          
                                          
                                         
                            </div>
                            
                            <div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
                            <div class="header__right">
                            <div class="header__search search search__open">
                            <a href="<%=cp%>/picsell/list.do"><i class="icon-magnifier icons"></i></a>
                            </div>
                            
                            <c:choose>
                            <c:when test="${!empty sessionScope.PicSellCustomInfo.userId }">
                            <div class="header__account">
                            <a href="<%=cp%>/picsell/join_mypage.do"><i class="icon-user icons"></i></a>
                            </div>
                            <div class="htc__shopping__cart">
                            <a href="<%=cp%>/picsell/down_basket.do"><i class="icon-handbag icons"></i></a>
                            </div> 
                            </c:when> 
                            <c:otherwise>
                            <div class="header__account">
                            <a href="<%=cp%>/picsell/login.do"><i class="icon-user icons"></i></a>
                            </div>
                            <div class="htc__shopping__cart">
                            <a href="<%=cp%>/picsell/login.do"><i class="icon-handbag icons"></i></a>
                            </div> 
                            </c:otherwise>
                            </c:choose>    
                                   
                                     
                               </div>
                            </div>
                        </div>
                    </div>
                    <div class="mobile-menu-area"></div>
                </div>
            </div>
            <!-- End Mainmenu Area -->
        </header>
        <!-- End Header Area -->

        <div class="body__overlay"></div>
        <!-- Start Offset Wrapper -->
        <div class="offset__wrapper">
            <!-- Start Search Popap -->
            <div class="search__area">
                <div class="container" >
                    <div class="row" >
                        <div class="col-md-12" >
                            <div class="search__inner">
                                <form action="" method="post" name="myForm">
                                    <input placeholder="Search here... " type="text" name="imageTag">
                                    <button type="submit" onclick="sendIt();"/>
                                </form>
                                <div class="search__close__btn">
                                    <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Search Popap -->
            <!-- Start Cart Panel -->
            <div class="shopping__cart">
                <div class="shopping__cart__inner">
                    <div class="offsetmenu__close__btn">
                        <a href="#"><i class="zmdi zmdi-close"></i></a>
                    </div>
                    <div class="shp__cart__wrap">
                        <div class="shp__single__product">
                            <div class="shp__pro__thumb">
                                <a href="#">
                                    <img src="images/product-2/sm-smg/1.jpg" alt="product images">
                                </a>
                            </div>
                            <div class="shp__pro__details">
                                <h2><a href="product-details.html">BO&Play Wireless Speaker</a></h2>
                                <span class="quantity">QTY: 1</span>
                                <span class="shp__price">$105.00</span>
                            </div>
                            <div class="remove__btn">
                                <a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                            </div>
                        </div>
                        <div class="shp__single__product">
                            <div class="shp__pro__thumb">
                                <a href="#">
                                    <img src="images/product-2/sm-smg/2.jpg" alt="product images">
                                </a>
                            </div>
                            <div class="shp__pro__details">
                                <h2><a href="product-details.html">Brone Candle</a></h2>
                                <span class="quantity">QTY: 1</span>
                                <span class="shp__price">$25.00</span>
                            </div>
                            <div class="remove__btn">
                                <a href="#" title="Remove this item"><i class="zmdi zmdi-close"></i></a>
                            </div>
                        </div>
                    </div>
                    <ul class="shoping__total">
                        <li class="subtotal">Subtotal:</li>
                        <li class="total__price">$130.00</li>
                    </ul>
                    <ul class="shopping__btn">
                        <li><a href="cart.html">View Cart</a></li>
                        <li class="shp__checkout"><a href="<%=cp %>/psPage/checkout.html">Checkout</a></li>
                    </ul>
                </div>
            </div>
            <!-- End Cart Panel -->
        </div>
        
        <!-- End Offset Wrapper -->
        <!-- Start Slider Area -->
        <div class="slider__container slider--one bg__cat--3">
            <div class="slide__container slider__activation__wrap owl-carousel">
                
                <!-- Start Single Slide -->
     <!--  -->    <div class="single__slide animation__style01 slider__fixed--height">
                    <div class="container">
                        <div class="row align-items__center">
                            <div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
                                <div class="slide">
                                    <div class="slider__inner">
                                        <h2>collection 2019</h2>
                                        <h1>ARTIST PIC</h1>
                                       <!--  <div class="cr__btn">
                                           
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
                                <div class="slide__thumb">
                                    <img src="<%=cp %>/psPage/image/cinema.jpg" alt="slider images">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single Slide -->
                
                <!-- Start Single Slide -->
                <div class="single__slide animation__style01 slider__fixed--height">
                    <div class="container">
                        <div class="row align-items__center">
                            <div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
                                <div class="slide">
                                    <div class="slider__inner">
                                        <h2>collection 2019</h2>
                                        <h1>ARTIST PIC</h1>
                                       <div class="cr__btn">
                                         
                                        </div> 
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
                                <div class="slide__thumb">
                                    <img src="<%=cp %>/psPage/image/main1.jpg" alt="slider images" 
                                    style="width: 420px; height: 594px;">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- End Single Slide -->
            </div>
            
        </div>
        
        <!-- Start Slider Area -->
        <!-- Start Category Area -->
        
    
    <%-- <table align="center" border="0" width="500" cellpadding="3" cellspacing="3">
	
	<c:forEach var="dto" items="${lists }">
	<c:if test="${i%j==0 }">
		<tr align="center">
		</c:if>
			<td>
			<a href="<%=cp%>/picsell/down_imageClick.do?imageCode=${dto.imageCode}">
				<img src="${imagePath }/${dto.originalName }.jpg" width="180" 
				height="180"/></a>
			</td>
	<c:if test="${i%j == j-1 }">	
	</tr>
	</c:if>
		<c:set var="i" value="${i+1 }"/> 
		</c:forEach>
	</table>	 --%>
        
        
        
        
        
        
        
        
        
        <section class="htc__category__area ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line">PICSELL LIST</h2>
                            <p>But I must explain to you how all this mistaken idea</p>
                        </div>
                    </div>
                </div>
                
                
                
                
                
                
                
                    <%-- <table align="center" border="0" width="500" cellpadding="3" cellspacing="3">
	
	<c:forEach var="dto" items="${lists }">
	<c:if test="${i%j==0 }">
		<tr align="center">
		</c:if>
			<td>
			<a href="<%=cp%>/picsell/down_imageClick.do?imageCode=${dto.imageCode}">
				<img src="${imagePath }/${dto.originalName }.jpg" width="180" 
				height="180"/></a>
			</td>
	<c:if test="${i%j == j-1 }">	
	</tr>
	</c:if>
		<c:set var="i" value="${i+1 }"/> 
		</c:forEach>
	</table>	 --%>
         
                
                <div class="htc__product__container">
                    <div class="row">
                        <div class="product__list clearfix mt--30">
                        <c:forEach var="dto" items="${lists }">
                            <!-- Start Single Category -->
                            <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                                <div class="category">
                                    <div class="ht__cat__thumb">
                                        <a href="<%=cp%>/picsell/down_imageClick.do?imageCode=${dto.imageCode}">
                                        
                                            <img src="${imagePath }/${dto.originalName}" alt="product images"
                                            height="320" width="320">
                                        </a>
                                    </div>
                                    <div class="fr__hover__info">
                                    
                                    <br/>
                                    
                                        <ul class="product__action">
                                            <!-- <li><a href="wishlist.html"><i class="icon-heart icons"></i></a></li> -->
											
							<c:choose>
                            <c:when test="${!empty sessionScope.PicSellCustomInfo.userId }">
                             <li><a href="<%=cp%>/picsell/down_addcart.do?imageCode=${dto.imageCode}">
                                            <i class="icon-handbag icons"></i></a></li>
                            <li><a href="<%=cp%>/picsell/down_imageClick.do?imageCode=${dto.imageCode}">
                                            <i class="icon-shuffle icons"></i></a></li>
                            </c:when> 
                            <c:otherwise>
                             <li><a href="<%=cp%>/picsell/login.do">
                                            <i class="icon-handbag icons"></i></a></li>
                            <li><a href="<%=cp%>/picsell/login.do">
                                            <i class="icon-shuffle icons"></i></a></li> 
                            </c:otherwise>
                            </c:choose>    
											
										
                                           
                                            
                                            
                                        </ul>
                                    </div>
                                    <div class="fr__product__inner">
                                        <h4><a href="product-details.html">${dto.imageTitle }</a></h4>
                                        <ul class="fr__pro__prize">
                                            <li class="old__prize"><b>${dto.imagePoint }&nbsp;point</b></li>
                                           <!--  <li>$25.9</li> -->
                                           <br/>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Category -->
                            </c:forEach>
                           
     
                           
                        </div>
                    </div>
                </div>
                
                <br/>
                
                
                <%-- <table align="center">
	<tr>
		<td align="center" style="font-size: 15pt;">
		<c:if test="${dataCount != 0 }">
			${pageIndexList }
		</c:if>
		<c:if test="${dataCount == 0 }">
			<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			NOT CORRECT SEARCH IMAGE</b>
		</c:if>
		</td>
	</tr>	
	</table> --%>
         
            </div>
        </section>
       
       
       
       
       <%--  <section class="top__rated__area bg__white pt--100 pb--110">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line">VIDEO LIST</h2>
                            <p>But I must explain to you</p>
                        </div>
                    </div>
                </div>
                <div class="row mt--20">
                  
                    <!-- Start Single Product -->
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <div class="htc__best__product">
                            <div class="htc__best__pro__thumb">
                                <a href="<%=cp%>/picsell/down_imageClick.do?imageCode=${dto.imageCode}">
                                    <img src="${imagePath }/${dto.originalName}.jpg" alt="product images"
                                            height="320" width="320">
                                </a>
                            </div>
                            <div class="htc__best__product__details">
                                <h2><a href="product-details.html">dummy Product title</a></h2>
                               <!--  <ul class="rating">
                                    <li><i class="icon-star icons"></i></li>
                                    <li><i class="icon-star icons"></i></li>
                                    <li><i class="icon-star icons"></i></li>
                                    <li class="old"><i class="icon-star icons"></i></li>
                                    <li class="old"><i class="icon-star icons"></i></li>
                                </ul> -->
                                <ul  class="top__pro__prize">
                                    <li class="old__prize">$82.5</li>
                                    <!-- <li>$75.2</li> -->
                                </ul>
                                <div class="best__product__action">
                                    <ul class="product__action--dft">
                                        <li><a href="wishlist.html"><i class="icon-heart icons"></i></a></li>
                                        <li><a href="cart.html"><i class="icon-handbag icons"></i></a></li>
                                        <li><a href="#"><i class="icon-shuffle icons"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->
                    
                    <!-- Start Single Product -->
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <div class="htc__best__product">
                            <div class="htc__best__pro__thumb">
                                <a href="product-details.html">
                                    <img src="images/product-2/sm-img-2/2.jpg" alt="small product">
                                </a>
                            </div>
                            <div class="htc__best__product__details">
                                <h2><a href="product-details.html">dummy Product title</a></h2>
                                <!-- <ul class="rating">
                                    <li><i class="icon-star icons"></i></li>
                                    <li><i class="icon-star icons"></i></li>
                                    <li><i class="icon-star icons"></i></li>
                                    <li class="old"><i class="icon-star icons"></i></li>
                                    <li class="old"><i class="icon-star icons"></i></li>
                                </ul> -->
                                <ul  class="top__pro__prize">
                                    <li class="old__prize">$82.5</li>
                                   <!--  <li>$75.2</li> -->
                                </ul>
                                <div class="best__product__action">
                                    <ul class="product__action--dft">
                                        <li><a href="wishlist.html"><i class="icon-heart icons"></i></a></li>
                                        <li><a href="cart.html"><i class="icon-handbag icons"></i></a></li>
                                        <li><a href="#"><i class="icon-shuffle icons"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->
                    <!-- Start Single Product -->
                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
                        <div class="htc__best__product">
                            <div class="htc__best__pro__thumb">
                                <a href="product-details.html">
                                    <img src="images/product-2/sm-img-2/3.jpg" alt="small product">
                                </a>
                            </div>
                            <div class="htc__best__product__details">
                                <h2><a href="product-details.html">dummy Product title</a></h2>
                              <!--   <ul class="rating">
                                    <li><i class="icon-star icons"></i></li>
                                    <li><i class="icon-star icons"></i></li>
                                    <li><i class="icon-star icons"></i></li>
                                    <li class="old"><i class="icon-star icons"></i></li>
                                    <li class="old"><i class="icon-star icons"></i></li>
                                </ul> -->
                                <ul  class="top__pro__prize">
                                    <li class="old__prize">$82.5</li>
                                  <!--   <li>$75.2</li> -->
                                </ul>
                                <div class="best__product__action">
                                    <ul class="product__action--dft">
                                        <li><a href="wishlist.html"><i class="icon-heart icons"></i></a></li>
                                        <li><a href="<%=cp%>/picsell/down_basket.do"><i class="icon-handbag icons"></i></a></li>
                                        <li><a href="#"><i class="icon-shuffle icons"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->
                </div>
            </div>
        </section> --%>
        <!-- End Top Rated Area -->
        <!-- Start Brand Area -->
        <!-- <div class="htc__brand__area bg__cat--4">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="ht__brand__inner">
                            <ul class="brand__list owl-carousel clearfix">
                                <li><a href="#"><img src="images/brand/1.png" alt="brand images"></a></li>
                                <li><a href="#"><img src="images/brand/2.png" alt="brand images"></a></li>
                                <li><a href="#"><img src="images/brand/3.png" alt="brand images"></a></li>
                                <li><a href="#"><img src="images/brand/4.png" alt="brand images"></a></li>
                                <li><a href="#"><img src="images/brand/5.png" alt="brand images"></a></li>
                                <li><a href="#"><img src="images/brand/5.png" alt="brand images"></a></li>
                                <li><a href="#"><img src="images/brand/1.png" alt="brand images"></a></li>
                                <li><a href="#"><img src="images/brand/2.png" alt="brand images"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- End Brand Area -->
        <!-- Start Blog Area -->
        <!-- <section class="htc__blog__area bg__white ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line">Our Blog</h2>
                            <p>But I must explain to you how all this mistaken idea</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="ht__blog__wrap clearfix">
                        Start Single Blog
                        <div class="col-md-6 col-lg-4 col-sm-6 col-xs-12">
                            <div class="blog">
                                <div class="blog__thumb">
                                    <a href="blog-details.html">
                                        <img src="images/blog/blog-img/1.jpg" alt="blog images">
                                    </a>
                                </div>
                                <div class="blog__details">
                                    <div class="bl__date">
                                        <span>March 22, 2016</span>
                                    </div>
                                    <h2><a href="blog-details.html">Lorem ipsum dolor sit amet, consec tetur adipisicing elit</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <div class="blog__btn">
                                        <a href="blog-details.html">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        End Single Blog
                        Start Single Blog
                        <div class="col-md-6 col-lg-4 col-sm-6 col-xs-12">
                            <div class="blog">
                                <div class="blog__thumb">
                                    <a href="blog-details.html">
                                        <img src="images/blog/blog-img/2.jpg" alt="blog images">
                                    </a>
                                </div>
                                <div class="blog__details">
                                    <div class="bl__date">
                                        <span>May 22, 2017</span>
                                    </div>
                                    <h2><a href="blog-details.html">Lorem ipsum dolor sit amet, consec tetur adipisicing elit</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <div class="blog__btn">
                                        <a href="blog-details.html">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        End Single Blog
                        Start Single Blog
                        <div class="col-md-6 col-lg-4 col-sm-6 col-xs-12">
                            <div class="blog">
                                <div class="blog__thumb">
                                    <a href="blog-details.html">
                                        <img src="images/blog/blog-img/3.jpg" alt="blog images">
                                    </a>
                                </div>
                                <div class="blog__details">
                                    <div class="bl__date">
                                        <span>March 22, 2018</span>
                                    </div>
                                    <h2><a href="blog-details.html">Lorem ipsum dolor sit amet, consec tetur adipisicing elit</a></h2>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <div class="blog__btn">
                                        <a href="blog-details.html">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        End Single Blog
                    </div>
                </div>
            </div>
        </section> -->
        <!-- End Blog Area -->
        <!-- End Banner Area -->
        <!-- Start Footer Area -->
        <%--  <section class="htc__category__area ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line">VIDEO LIST</h2>
                            <p>But I must explain to you how all this mistaken idea</p>
                        </div>
                    </div>
                </div>
                
                
                <div class="htc__product__container">
                    <div class="row">
                        <div class="product__list clearfix mt--30">
                        <c:forEach var="dto" items="${lists1 }">
                            <!-- Start Single Category -->
                            <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                                <div class="category">
                                    <div class="ht__cat__thumb">
                                        <a href="<%=cp%>/picsell/down_imageClick.do?imageCode=${dto.imageCode}">
                                        
                                            <img src="${imagePath }/${dto.originalName}" alt="product images"
                                            height="320" width="320">
                                        </a>
                                    </div>
                                    <div class="fr__hover__info">
                                    
                                    <br/>
                                    
                                        <ul class="product__action">
                                            <li><a href="wishlist.html"><i class="icon-heart icons"></i></a></li>

                                            <li><a href="<%=cp%>/picsell/down_addcart.do?imageCode=${dto.imageCode}">
                                            <i class="icon-handbag icons"></i></a></li>

                                            <li><a href="<%=cp%>/picsell/down_imageClick.do?imageCode=${dto.imageCode}">
                                            <i class="icon-shuffle icons"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="fr__product__inner">
                                        <h4><a href="product-details.html">${dto.imageTitle }</a></h4>
                                        <ul class="fr__pro__prize">
                                            <li class="old__prize"><b>$${dto.imagePoint }&nbsp;point</b></li>
                                           <!--  <li>$25.9</li> -->
                                           <br/>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Category -->
                            </c:forEach>
                           
     
                           
                        </div>
                    </div>
                </div>
                
                
                
                
                
                
                
                
                
                
                
                
                </section> --%>
        <footer id="htc__footer">
            <!-- Start Footer Widget -->
           <!--  <div class="footer__container bg__cat--1">
                <div class="container">
                    <div class="row">
                        Start Single Footer Widget
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="footer">
                                <h2 class="title__line--2">ABOUT US</h2>
                                <div class="ft__details">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim</p>
                                    <div class="ft__social__link">
                                        <ul class="social__link">
                                            <li><a href="#"><i class="icon-social-twitter icons"></i></a></li>

                                            <li><a href="#"><i class="icon-social-instagram icons"></i></a></li>

                                            <li><a href="#"><i class="icon-social-facebook icons"></i></a></li>

                                            <li><a href="#"><i class="icon-social-google icons"></i></a></li>

                                            <li><a href="#"><i class="icon-social-linkedin icons"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        End Single Footer Widget
                        Start Single Footer Widget
                        <div class="col-md-2 col-sm-6 col-xs-12 xmt-40">
                            <div class="footer">
                                <h2 class="title__line--2">information</h2>
                                <div class="ft__inner">
                                    <ul class="ft__list">
                                        <li><a href="#">About us</a></li>
                                        <li><a href="#">Delivery Information</a></li>
                                        <li><a href="#">Privacy & Policy</a></li>
                                        <li><a href="#">Terms  & Condition</a></li>
                                        <li><a href="#">Manufactures</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        End Single Footer Widget
                        Start Single Footer Widget
                        <div class="col-md-2 col-sm-6 col-xs-12 xmt-40 smt-40">
                            <div class="footer">
                                <h2 class="title__line--2">my account</h2>
                                <div class="ft__inner">
                                    <ul class="ft__list">
                                        <li><a href="#">My Account</a></li>
                                        <li><a href="cart.html">My Cart</a></li>
                                        <li><a href="#">Login</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        End Single Footer Widget
                        Start Single Footer Widget
                        <div class="col-md-2 col-sm-6 col-xs-12 xmt-40 smt-40">
                            <div class="footer">
                                <h2 class="title__line--2">Our service</h2>
                                <div class="ft__inner">
                                    <ul class="ft__list">
                                        <li><a href="#">My Account</a></li>
                                        <li><a href="cart.html">My Cart</a></li>
                                        <li><a href="#">Login</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        End Single Footer Widget
                        Start Single Footer Widget
                        <div class="col-md-3 col-sm-6 col-xs-12 xmt-40 smt-40">
                            <div class="footer">
                                <h2 class="title__line--2">NEWSLETTER </h2>
                                <div class="ft__inner">
                                    <div class="news__input">
                                        <input type="text" placeholder="Your Mail*">
                                        <div class="send__btn">
                                            <a class="fr__btn" href="#">Send Mail</a>
                                        </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                   End Single Footer Widget
                    </div>
                </div>
            </div> -->
            <!-- End Footer Widget -->
            <!-- Start Copyright Area -->
            <div class="htc__copyright bg__cat--5">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="copyright__inner">
                                <p>Copyright© <a href="https://freethemescloud.com/">Free themes Cloud</a> 2018. All right reserved.</p>
                                <!-- <a href="#"><img src="images/others/shape/paypol.png" alt="payment images"></a> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Copyright Area -->
        </footer>
        <!-- End Footer Style -->
    </div>
    <!-- Body main wrapper end -->

    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="<%=cp%>/psPage/js/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap framework js -->
    <script src="<%=cp%>/psPage/js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="<%=cp%>/psPage/js/plugins.js"></script>
    <script src="<%=cp%>/psPage/js/slick.min.js"></script>
    <script src="<%=cp%>/psPage/js/owl.carousel.min.js"></script>
    <!-- Waypoints.min.js. -->
    <script src="<%=cp%>/psPage/js/waypoints.min.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="<%=cp%>/psPage/js/main.js"></script>

</body>

</html>