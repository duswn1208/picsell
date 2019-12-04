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
<link rel="<%=cp%>/psPage/shortcut icon" type="image/x-icon"
	href="<%=cp%>/psPage/images/favicon.ico">
<link rel="<%=cp%>/psPage/apple-touch-icon"
	href="<%=cp%>/psPage/apple-touch-icon.png">


<!-- All css files are included here. -->
<!-- Bootstrap fremwork main css -->
<link rel="stylesheet" href="<%=cp%>/psPage/css/bootstrap.min.css">
<!-- Owl Carousel min css -->
<link rel="stylesheet" href="<%=cp%>/psPage/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="<%=cp%>/psPage/css/owl.theme.default.min.css">
<!-- This core.css file contents all plugings css file. -->
<link rel="stylesheet" href="<%=cp%>/psPage/css/core.css">
<!-- <!--  -->
<!--  -->
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
<script src="<%=cp%>/paPage/js/vendor/modernizr-3.5.0.min.js"></script>

<script type="text/javascript">

	function sendIt() {
		
		var f = document.searchForm;
	
		f.action = "<%=cp%>
	/picsell/board_memory.do";
		f.submit();

	}
</script>

</head>

<body>
	<!-- Body main wrapper start -->
	<div class="wrapper">
		<!-- Start Header Style -->
		<header id="htc__header" class="htc__header__area header--one">
		<!-- Start Mainmenu Area -->
		<div id="sticky-header-with-topbar"
			class="mainmenu__wrap sticky__header">
			<div class="container">
				<div class="row">
					<div class="menumenu__container clearfix">
						<div class="col-lg-2 col-md-2 col-sm-3 col-xs-5">
							<div class="logo">
								<a href="<%=cp%>/picsell/main.do"><img
									src="<%=cp%>/psPage/image/picsell1.png" alt="logo images"></a>
							</div>
						</div>
						<div class="col-md-7 col-lg-8 col-sm-5 col-xs-3">
							<nav class="main__menu__nav hidden-xs hidden-sm">
							<ul class="main__menu">

								<li class="drop"><a href="">Tag's</a>
									<ul class="dropdown mega_dropdown">
										<!-- Start Single Mega MEnu -->

										<li><a class="mega__title"
											href="<%=cp%>/picsell/list_video.do">VIDEO</a></li>
										<!-- End Single Mega MEnu -->
										<!-- Start Single Mega MEnu --></li>
								<!-- End Single Mega MEnu -->
								<!-- Start Single Mega MEnu -->
								<li><a class="mega__title"
									href="<%=cp%>/picsell/list_movie.do">MOVIE POSTER</a></li>

								<li><a class="mega__title"
									href="<%=cp%>/picsell/list_illust.do">ILLUST</a></li>

								<!-- End Single Mega MEnu -->
							</ul>
							</li>

							<c:if test="${empty sessionScope.PicSellCustomInfo.userId }">
								<li class="drop"><a href="<%=cp%>/picsell/login.do">UPLOAD</a>
							</c:if> <c:if test="${!empty sessionScope.PicSellCustomInfo.userId }">
								<li class="drop"><a href="<%=cp%>/picsell/up_upload.do">UPLOAD</a>
							</c:if> <c:choose>
								<c:when test="${!empty sessionScope.PicSellCustomInfo.userId }">
									<%-- <li class="drop"><a
										href="<%=cp%>/picsell/up_myuploadlist.do">MY UPLOAD LIST</a></li> --%>
									<li class="drop"><a href="<%=cp%>/picsell/chargePage.do">CHARGE
											POINT</a>
								</c:when>
								<c:otherwise>
									<%-- <li class="drop"><a href="<%=cp%>/picsell/login.do">MY
											UPLOAD LIST</a></li> --%>
									<li class="drop"><a href="<%=cp%>/picsell/login.do">CHARGE
											POINT</a>
								</c:otherwise>
							</c:choose> <c:choose>
								<c:when test="${empty sessionScope.PicSellCustomInfo.userId }">
									<li class="drop"><a href="<%=cp%>/picsell/login.do">LOGIN</a>
									<li class="drop"><a href="<%=cp%>/picsell/created.do">SIGN
											UP</a>
								</c:when>
								<c:otherwise>
									<li class="drop"><a href="<%=cp%>/picsell/logout.do">LOGOUT</a>
									<%-- <li class="drop"><a href="<%=cp%>/picsell/created.do">SIGN
											UP</a> --%>
								</c:otherwise>
							</c:choose>
							<li class="drop"><a href="<%=cp%>/picsell/board_memory.do">QnA</a>
						</div>

						<div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
							<div class="header__right">
								<div class="header__search search search__open">
									<a href="<%=cp%>/picsell/list.do"><i
										class="icon-magnifier icons"></i></a>
								</div>

								<c:choose>
									<c:when test="${!empty sessionScope.PicSellCustomInfo.userId }">
										<div class="header__account">
											<a href="<%=cp%>/picsell/join_mypage.do"><i
												class="icon-user icons"></i></a>
										</div>
										<div class="htc__shopping__cart">
											<a href="<%=cp%>/picsell/down_basket.do"><i
												class="icon-handbag icons"></i></a>
										</div>
									</c:when>
									<c:otherwise>
										<div class="header__account">
											<a href="<%=cp%>/picsell/login.do"><i
												class="icon-user icons"></i></a>
										</div>
										<div class="htc__shopping__cart">
											<a href="<%=cp%>/picsell/login.do"><i
												class="icon-handbag icons"></i></a>
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
		<!-- End Mainmenu Area --> </header>
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
			<!-- End Search Popap -->

			<!-- End Cart Panel -->
		</div>
		<!-- End Offset Wrapper -->
		<!-- Start Bradcaump area -->
		<div class="ht__bradcaump__area"
			style="background-image:url(<%=cp%>/psPage/image/1920x270.jpg);">
			<div class="ht__bradcaump__wrap">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="bradcaump__inner" style="">

							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Bradcaump area -->
		<!-- cart-main-area start -->
		<div class="cart-main-area ptb--100 bg__white">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 col-xs-12">
						<div class="table-content table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-thumbnail">번호</th>
										<th class="product-name">제목</th>
										<th class="product-price">작성자</th>
										<th class="product-quantity">작성일</th>
										<th class="product-subtotal">조회수</th>
									</tr>
								</thead>

								<tbody>
									<tr>
										<td class="product-thumbnail">공지</td>
										<td class="product-name"><a
											href="<%=cp%>/psPage/qna1.jsp">Picsell은 무엇인가요?</a></td>
										<td class="product-price"><span class="amount">PicSell</span></td>
										<td class="product-subtotal">2019-09-30</td>
										<td class="product-subtotal">2</td>
									</tr>

									<tr>
										<td class="product-thumbnail">공지</td>
										<td class="product-name"><a
											href="<%=cp%>/psPage/qna2.jsp">이미지를 그냥 사용하면 되는 건가요?</a></td>
										<td class="product-price"><span class="amount">PicSell</span></td>
										<td class="product-subtotal">2019-09-30</td>
										<td class="product-subtotal">2</td>
									</tr>

									<c:forEach var="board_dto" items="${board_lists }">
										<tr>
											<td class="num">${board_dto.num }</td>
											<td class="subject"><a
												href="${articleUrl }&num=${board_dto.num }">${board_dto.subject }</a>
											</td>
											<td class="userId">${board_dto.userId }</td>
											<td class="created">${board_dto.created }</td>
											<td class="hitCount">${board_dto.hitCount }</td>
										</tr>
									</c:forEach>
								</tbody>

							</table>

							<div id="footer" style="margin-left: 550px; font-size: 20pt;">
								<p>
									<c:if test="${dataCount!=0 }">
											${pageIndexList }
										</c:if>
									<c:if test="${dataCount==0 }">
										등록된 게시물이 없습니다 
										</c:if>
								</p>
							</div>

						</div>
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="buttons-cart--inner">
									<div class="buttons-cart"></div>
									<div class="buttons-cart checkout--btn">

										<a href="<%=cp%>/picsell/board_write.do">글쓰기</a>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div style="margin-left: 300px;"
								class="col-md-6 col-sm-12 col-xs-12">



							<div class="footer">
                                <h2 class="title__line--2">NEWSLETTER </h2>
                                <div class="ft__inner">
                                <form action="" name="searchForm" method="post">
											<select name="searchKey" class="selectField" style="height: 20px;">
												<option value="subject">제목</option>
												<option value="name">작성자</option>
												<option value="content">내용</option>
											</select>
											<br/><br/>
                                    <div class="news__input">
                                        <input type="text" name="searchValue" placeholder="검색*">
                                        
                                    </div>
                                    </form>
                                </div>
                            </div>
                            <br/><br/>
                            
					
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- cart-main-area end -->

			<!-- Start Footer Area -->
			<footer id="htc__footer"> <!-- Start Footer Widget --> <!-- End Footer Widget -->
			<!-- Start Copyright Area -->
			<div class="htc__copyright bg__cat--5">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="copyright__inner">
								<p>
									Copyright© <a href="https://freethemescloud.com/">Free
										themes Cloud</a> 2018. All right reserved.
								</p>
								<a href="#"><img src="images/others/shape/paypol.png"
									alt="payment images"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Copyright Area --> </footer>
			<!-- End Footer Style -->
		</div>
		<!-- Body main wrapper end -->

		<!-- Placed js at the end of the document so the pages load faster -->

		<!-- jquery latest version -->
		<script src="js/vendor/jquery-3.2.1.min.js"></script>
		<!-- Bootstrap framework js -->
		<script src="js/bootstrap.min.js"></script>
		<!-- All js plugins included in this file. -->
		<script src="js/plugins.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<!-- Waypoints.min.js. -->
		<script src="js/waypoints.min.js"></script>
		<!-- Main js file that contents all jQuery plugins activation. -->
		<script src="js/main.js"></script>
</body>

</html>