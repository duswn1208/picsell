<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon"
	href="<%=cp%>/psPage/images/favicon.ico">
<link rel="apple-touch-icon" href="<%=cp%>/psPage/apple-touch-icon.png">


<!-- All css files are included here. -->
<!-- Bootstrap fremwork main css -->
<link rel="stylesheet" href="<%=cp%>/psPage/css/bootstrap.min.css">
<!-- Owl Carousel min css -->
<link rel="stylesheet" href="<%=cp%>/psPage/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="<%=cp%>/psPage/css/owl.theme.default.min.css">
<!-- This core.css file contents all plugings css file. -->
<link rel="stylesheet" href="<%=cp%>/psPage/css/core.css">
<!-- Theme shortcodes/elements style -->
<link rel="stylesheet"
	href="<%=cp%>/psPage/css/shortcode/shortcodes.css">
<!-- Theme main style -->
<link rel="stylesheet" href="<%=cp%>/psPage/style.css">
<!-- Responsive css -->
<link rel="stylesheet" href="<%=cp%>/psPage/css/responsive.css">
<!-- User style -->
<link rel="stylesheet" href="<%=cp%>/psPage/css/custom.css">


<!-- Modernizr JS -->
<script src="js/vendor/modernizr-3.5.0.min.js"></script>

</head>
<body>

	<!-- --------------------- -->

	<div class="wrapper">

		<form action="" name="myForm" method="post"
			enctype="multipart/form-data">
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
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="search__inner">
									<form action="#" method="get">
										<input placeholder="Search here... " type="text">
										<button type="submit"></button>
									</form>
									<div class="search__close__btn">
										<span class="search__close__btn_icon"><i
											class="zmdi zmdi-close"></i></span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="ht__bradcaump__area"
					style="background-image:url(<%=cp%>/psPage/image/1920x270.jpg);">
					<div class="ht__bradcaump__wrap">
						<div class="container">
							<div class="row">
								<div class="col-xs-12">
									<div class="bradcaump__inner">
										<nav class="bradcaump-inner"> <a class="breadcrumb-item"
											href="index.html" style="color: #ffffff"></a> <span
											class="brd-separetor"><i
											class="zmdi zmdi-chevron-right"></i></span> </nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- --------------------- -->


				<%-- <table align="right">
					<tr>
						<td>${PicSellCustomInfo.userId }</td>
					</tr>

					<tr>
						<td>${PicSellCustomInfo.chargePoint }</td>
					</tr>
				</table> --%>

				<br /> <br /> <br />

				<form>
					<table width="800" style="margin-left: 500px;">

						<tr align="center" style="border-top: 1px solid #cccccc;">
							<td width="200"
								style="font-size: 20px; padding-top: 10px; border-right: 1px solid #cccccc; border-left: 1px solid #cccccc;"><b>이미지</b></td>
							<td width="250"
								style="font-size: 20px; padding-top: 10px; border-right: 1px solid #cccccc;""><b>Point</b></td>
							<td width="50"
								style="font-size: 20px; padding-top: 10px; border-right: 1px solid #cccccc;""><b>삭제</b></td>
						</tr>

						<tr height="1">
							<td colspan="3"
								style="border-right: 1px solid #cccccc; border-left: 1px solid #cccccc;"
								bgcolor="#cccccc"></td>

						</tr>



						<c:forEach var="dto" items="${Basket_list}">

							<tr align="center">
								<td
									style="border-right: 1px solid #cccccc; border-left: 1px solid #cccccc; padding-bottom: 10px; padding-top: 10px;"><img
									src="${imagePath }/${dto.originalName}" width="150" height="150" /></td>
								<td style="font-size: 20px; border-right: 1px solid #cccccc;">${dto.imagePoint }Points</td>
								<td style="border-right: 1px solid #cccccc;"><a
									href="<%=cp%>/picsell/down_delete.do?imageCode=${dto.imageCode }"><i
										class="icon-trash icons"></i></a>
							<tr height="1">
								<td
									style="border-right: 1px solid #cccccc; border-left: 1px solid #cccccc;"
									bgcolor="#cccccc"></td>
								<td
									style="border-right: 1px solid #cccccc; border-left: 1px solid #cccccc;"
									bgcolor="#cccccc"></td>
								<td
									style="border-right: 1px solid #cccccc; border-left: 1px solid #cccccc;"
									bgcolor="#cccccc"></td>
							</tr>

						</c:forEach>

						<tr>
							<td colspan="3" align="right" style="margin-right: 100px;">

								<div class="cart__total">
									<span>order total</span> <span>${sumPoint } Points</span>
								</div>
								<ul class="payment__btn">
									<li class="active"><a href="<%=cp%>/picsell/basket_payment.do?sumPoint=${sumPoint }">payment</a></li>
									<li><a href="<%=cp%>/picsell/main.do">continue
											shopping</a></li>
								</ul>
							</td>

						</tr>

					</table>

				</form>
				
				<div style="height: 30px"></div>
				
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
            		<div class="footer__container bg__cat--1">
			<div class="container">
				<div class="row">
					<!-- Start Single Footer Widget -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="footer">
							<h2 class="title__line--2">ABOUT US</h2>
							<div class="ft__details">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua. Ut enim</p>
								<div class="ft__social__link">
									<ul class="social__link">
										<li><a href="#"><i class="icon-social-twitter icons"></i></a></li>

										<li><a href="#"><i
												class="icon-social-instagram icons"></i></a></li>

										<li><a href="#"><i class="icon-social-facebook icons"></i></a></li>

										<li><a href="#"><i class="icon-social-google icons"></i></a></li>

										<li><a href="#"><i class="icon-social-linkedin icons"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- End Single Footer Widget -->
					<!-- Start Single Footer Widget -->
					<div class="col-md-2 col-sm-6 col-xs-12 xmt-40">
						<div class="footer">
							<h2 class="title__line--2">information</h2>
							<div class="ft__inner">
								<ul class="ft__list">
									<li><a href="#">About us</a></li>
									<li><a href="#">Delivery Information</a></li>
									<li><a href="#">Privacy & Policy</a></li>
									<li><a href="#">Terms & Condition</a></li>
									<li><a href="#">Manufactures</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- End Single Footer Widget -->
					<!-- Start Single Footer Widget -->
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
					<!-- End Single Footer Widget -->
					<!-- Start Single Footer Widget -->
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
					<!-- End Single Footer Widget -->
					<!-- Start Single Footer Widget -->
					<div class="col-md-3 col-sm-6 col-xs-12 xmt-40 smt-40">
						<div class="footer">
							<h2 class="title__line--2">NEWSLETTER</h2>
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
					<!-- End Single Footer Widget -->
				</div>
			</div>
		</div>
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
</body>
</html>