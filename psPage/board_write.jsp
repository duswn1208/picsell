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

	function sendIt(){
		
		f = document.myForm;
		
	 /* 	str = f.subject.value;
		str = str.trim();
		if(!str){
			alert("\n제목을 입력하세요.");
			f.subject.focus();
			return;
		}
		f.subject.value = str;
		
		str = f.name.value;
		str = str.trim();
		if(!str){
			alert("\n이름을 입력하세요.");
			f.name.focus();
			return;
		}
		/*
		if(!isValidKorean(str)){
			alert("\n이름을 정확히 입력하세요.");
			f.name.focus();
			return;
		}

		f.name.value = str;
		
		if(f.email.value){
			
			if(!isValidEmail(f.email.value)){
				alert("\n정상적인 이메일을 입력하세요.");
				f.email.focus();
				return;
			}
		}
		
		str = f.content.value;
		str = str.trim();
		if(!str){
			alert("\n내용을 입력하세요.");
			f.content.focus();
			return;
		}
		f.content.value = str;
		
		str = f.pwd.value;
		str = str.trim();
		if(!str){
			alert("\n패스워드를 입력하세요.");
			f.pwd.focus();
			return;
		}
		f.pwd.value = str; */
		
		f.action = "<%=cp%>/picsell/board_writeok.do";
		f.submit();
		
	}

</script>

</head>

<body>
<form action="" name="myForm" method="post">
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
									<li class="drop"><a
										href="<%=cp%>/picsell/up_myuploadlist.do">MY UPLOAD LIST</a></li>
									<li class="drop"><a href="<%=cp%>/picsell/chargePage.do">CHARGE
											POINT</a>
								</c:when>
								<c:otherwise>
									<li class="drop"><a href="<%=cp%>/picsell/login.do">MY
											UPLOAD LIST</a></li>
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
									<li class="drop"><a href="<%=cp%>/picsell/created.do">SIGN
											UP</a>
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
								<div class="row">
									<div class="contact-form-wrap mt--60">
										<div class="col-xs-12">
											<div class="contact-title">
												<h2 class="title__line--6">게시판</h2>
											</div>
										</div>
										<div class="col-xs-12">
											
												<div class="single-contact-form">
													<div class="contact-box subject">
														<input type="text" name="subject" value="">
													</div>
												</div>

												<div class="single-contact-form">
													<div class="contact-box name">
														<input type="text" name="userId" value="${sessionScope.PicSellCustomInfo.userId }">
														
													</div>
												</div>
												 

												<div class="single-contact-form">
													<div class="contact-box message">
														<textarea name="content" placeholder=""></textarea>
													</div>
												</div>
												<div class="contact-btn" align="right">
													<input type="hidden" name="num" value="${board_dto.num }">
													<input type="hidden" name="pageNum" value="${pageNum }">
													<input type="hidden" name="searchKey" value="${searchKey }">
													<input type="hidden" name="searchValue"	value="${searchValue }">
													<button type="button" class="fv-btn" onclick="sendIt();"/>등록하기</button>
													<button type="button" class="fv-btn" onclick="javascript:location.href='<%=cp%>/picsell/board_memory.do';"/>작성취소</button>
												</div>
											
											<div class="form-output">
												<p class="form-messege"></p>
											</div>
										</div>
									</div>
								</div>
							</table>



						</div>

					</div>
				</div>
			</div>
		</div>

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
</form>
</body>



</html>