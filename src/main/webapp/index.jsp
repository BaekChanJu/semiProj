<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Untree.co">
	<link rel="shortcut icon" href="favicon.png">

	<meta name="description" content="" />
	<meta name="keywords" content="" />

	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,400;0,700;1,700&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">


	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/animate.min.css">
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
	<link rel="stylesheet" href="resources/css/jquery.fancybox.min.css">
	<link rel="stylesheet" href="resources/fonts/icomoon/style.css">
	<link rel="stylesheet" href="resources/fonts/flaticon/font/flaticon.css">
	<link rel="stylesheet" href="resources/css/aos.css">
	<link rel="stylesheet" href="resources/css/style.css">

	<title>UntreeStore Free HTML Template by Untree.co</title>
</head>






<body>

	<div class="search-form" id="search-form">
		<form action="">
			<input type="search" class="form-control" placeholder="Enter keyword to search...">
			<button class="button">
				<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
					<path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
				</svg>
			</button>
			<button class="button">
				<div class="close-search">
					<span class="icofont-close js-close-search"></span>
				</div>
			</button>

		</form>
	</div>

	<div class="site-mobile-menu">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>


	<!--  상단 헤더 -->
	<nav class="site-nav mb-5">
		<div class="sticky-nav js-sticky-header">

			<!--  메인 헤더 우측 상표 홈버튼 -->
			<div class="container position-relative">
				<div class="site-navigation text-center dark">
					<a href="index.jsp" class="logo menu-absolute m-0">Vintagere<span class="text-primary">.</span></a>

					<!--  메인 헤더 중앙 카테고리  -->
					<ul class="js-clone-nav pl-0 d-none d-lg-inline-block site-menu">
					
						<!-- Vintagure 카테고리  -->
							<!-- 맨위 메인이 되는 Vintagere,PAGES 같은 메인카테고리 누르면 맨처음 페이지 나오게합니다!-->
						<li class="has-children">
							<a href="mainOuter.do">Vintagere</a>
							<ul class="dropdown">
								<li><a href="mainOuter.do">OUTER</a></li>
								<li><a href="mainTop.do">TOP</a></li>
								<li><a href="mainBottom.do">BOTTOM</a></li>
								<li><a href="mainShoes.do">SHOES</a></li>
								<li><a href="mainAcc.do">ACC</a></li>
							</ul>
						</li>
						
						<!-- PAGES 카테고리 -->
						<li class="has-children">
							<a href="qnA.do">PAGES</a>
							<ul class="dropdown">
								<li><a href="qnA.do">Q & A</a></li>
								<li><a href="styleReview.do">STYLE REVIEW</a></li>
								<li><a href="free.do">자유 게시판</a></li>
							</ul>
						</li>
						
						<!-- MEN 카테고리 -->
						<li class="has-children">
							<a href="manOuter.do">MAN</a>
							<ul class="dropdown">
								<li><a href="manOuter.do">OUTER</a></li>
								<li><a href="manTop.do">TOP</a></li>
								<li><a href="manBottom.do">BOTTOM</a></li>
								<li><a href="manShoes.do">SHOES</a></li>
								<li><a href="manAcc.do">ACC</a></li>
							</ul>
						</li>
						
						<!-- WOMEN 카테고리 -->
						<li class="has-children">
							<a href="womanOuter.do">WOMAN</a>
							<ul class="dropdown">
								<li><a href="womanOuter.do">OUTER</a></li>
								<li><a href="womanTop.do">TOP</a></li>
								<li><a href="womanBottom.do">BOTTOM</a></li>
								<li><a href="womanShoes.do">SHOES</a></li>
								<li><a href="womanAcc.do">ACC</a></li>
							</ul>
						</li>		
					</ul>



					<!--  홈 메인상단 우측 아이콘 3개 -->
					<div class="menu-icons">
						<!--  검색 버튼 -->
						<a href="select.do" class="btn-custom-search" id="btn-search">
							<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
								<path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
							</svg>
						</a>
						<!--  유저 버튼 -->
						<a href="login.do" class="user-profile">
							<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
							</svg>
						</a>
						<!--  장바구니 버튼 -->
						<a href="cart.do" class="cart">
							<span class="item-in-cart">2</span>
							<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm7 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
							</svg>
						</a>

					</div>
					
					

					<a href="#" class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
						<span></span>
					</a>

				</div>
			</div>
		</div>
	</nav>

	<!--  이달의 이벤트 슬라이더 사진1  -->
	<div class="owl-carousel owl-single home-slider">
		<div class="item">
			<div class="untree_co-hero" style="background-image: url('resources/images/이달의이벤트1.gif');">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-6">

							<h1 class="mb-4 heading" data-aos="fade-up" data-aos-delay="100">Vintagere 겨울맞이<br><a href="https://untree.co">할인이벤트</a></h1>
							<div class="mb-5 text-white desc mx-auto" data-aos="fade-up" data-aos-delay="200">
							</div>
							<!-- eventSale1.do --> <!-- 크리스마스 상품으로 넘어가는게 아닌 이벤트 배너 만들어서 거기로 넘어가게 하기 -->
							<p class="mb-0" data-aos="fade-up" data-aos-delay="300"><a href="eventSale1.do" class="btn btn-outline-black">click!</a></p>

						</div>
					</div>
				</div>
			</div> <!-- /.untree_co-hero -->
		</div>

	<!--  이달의 이벤트 슬라이더 사진2  -->
		<div class="item">
			<div class="untree_co-hero" style="background-image: url('resources/images/이달의이벤트2.gif');">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-6">

							<h1 class="mb-4 heading" data-aos="fade-up" data-aos-delay="100">무슨이벤트인가 <a href="https://untree.co">색포인트</a></h1>
							<div class="mb-5 text-white desc mx-auto" data-aos="fade-up" data-aos-delay="200">
							</div>
									<!-- eventSale2.do -->
							<p class="mb-0" data-aos="fade-up" data-aos-delay="300"><a href="eventSale2.do" class="btn btn-outline-black">눌러!</a></p>

						</div>
					</div>
				</div>
			</div> <!-- /.untree_co-hero -->
		</div>
		
	</div>
<!-- 이달의 이벤트 슬라이더 종료 -->



<!--  이번주 MD 추천상품 -->
	<div class="untree_co-section">
		<div class="container">


			<div class="deal-hero overlay" style="background-image: url('resources/images/MD겨울추천.gif')"> 
				<div class="deal-contents">
					<span class="subtitle">MD의추천상품</span>
					<h2 class="title mb-4"><a href="#">겨울상품추천</a></h2>
					<p class="mb-5">차가운 겨울 따듯한 Vintagere에서 </p>
					<a href="mdRecommend.do" class="btn btn-black">click!</a>
				</div>
			</div> <!-- /.deal-hero -->

		</div>
	</div>
<!--  MD 종료 -->

<!--  NEW 상품 -->
	<div class="untree_co-section">
		<div class="container">

			<div class="row">
				<div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">
					<div class="product-item">
						<a href="shop-single.jsp" class="product-img">

							<div class="label new top-right">
								<div class='content'>New 라벨</div>
							</div>
							
							<!-- 신규상품 클릭시 -->
							<a href="newItemPage.do">
							<img src="resources/images/products/jacket-1-min.jpg" alt="Image" class="img-fluid">
							</a>
							
						</a>
						<h3 class="title"><a href="newItemPage.do">상품이름</a></h3>
						<div class="price">
							<span>상품가격</span>
						</div>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">
					<div class="product-item">
						<a href="shop-single.jsp" class="product-img">
						
							<div class="label new top-right">
								<div class='content'>New 라벨</div>
							</div>

							<div class="label sale top-right second">
								<div class='content'>Sale 라벨</div>
							</div>
							
						<!-- 신규상품 클릭시 -->
							<a href="newItemPage.do">
							<img src="resources/images/products/jacket-1-min.jpg" alt="Image" class="img-fluid">
							</a>
							
						</a>
						<h3 class="title"><a href="newItemPage.do">상품이름</a></h3>
						<div class="price">
							<del>세일전가격</del> &mdash; <span>세일후가격</span>
						</div>
					</div>
				</div>
				<div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">
					<div class="product-item">
						<a href="shop-single.jsp" class="product-img">
						
							<!-- 신규상품 클릭시 -->
							<a href="newItemPage.do">
							<img src="resources/images/products/jacket-1-min.jpg" alt="Image" class="img-fluid">
							</a>
							
						</a>
						<h3 class="title"><a href="newItemPage.do">상품이름</a></h3>
						<div class="price">
							<span>가격</span>
						</div>
					</div>
				</div>

				<div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">

					<div class="product-item">
						<a href="shop-single.jsp" class="product-img">
						
							<!-- 신규상품 클릭시 -->
							<a href="newItemPage.do">
							<img src="resources/images/products/jacket-1-min.jpg" alt="Image" class="img-fluid">
							</a>
							
						</a>
						<h3 class="title"><a href="newItemPage.do">상품이름</a></h3>
						<div class="price">
							<span>가격</span>
						</div>
					</div>

				</div>
				<div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">

					<div class="product-item">
						<a href="shop-single.jsp" class="product-img">
							<div class="label sale top-right">
								<div class='content'>Sale 라벨</div>
							</div>
							
								<!-- 신규상품 클릭시 -->
							<a href="newItemPage.do">
							<img src="resources/images/products/jacket-1-min.jpg" alt="Image" class="img-fluid">
							</a>
							
						<h3 class="title"><a href="newItemPage.do">상품이름</a></h3>
						<div class="price">
							<del>세일전 가격</del> &mdash; <span>세일후 가격</span>
						</div>
					</div>


				</div>
				<div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">

					<div class="product-item">
						<a href="shop-single.jsp" class="product-img">
							<div class="label sale top-right">
								<div class='content'>Sale 라벨</div>
							</div>
					
						<!-- 신규상품 클릭시 -->
							<a href="newItemPage.do">
							<img src="resources/images/products/jacket-1-min.jpg" alt="Image" class="img-fluid">
							</a>
							
						</a>
						<h3 class="title"><a href="newItemPage.do">상품이름</a></h3>
						<div class="price">
							<del>세일전가격</del> &mdash; <span>세일후 가격</span>
						</div>
					</div>


				</div>
			</div>
		</div>
	</div> <!-- /.untree_co-section -->
<!--  new 상품종료 -->


<!--  스타일샷 게시판 -->
	<div class="container">


		<div class="deal-hero overlay" style="background-image: url('resources/images/스타일게시판.gif')"> 
			<div class="deal-contents">
				<span class="subtitle">빈티지의류 착샷을 올려주세요</span>
				<h2 class="title mb-4"><a href="#">스타일샷 게시판</a></h2>
				<p class="mb-5">여러분들의 개성~~~~~ 빈티지의류를 뽐내보자!!.</p>
				<a href="styleReview.do" class="btn btn-black">STYLE REVIEW</a>
			</div>
		</div> <!-- /.deal-hero -->

	</div>
<!--  스타일샷 게시판 종료 -->


<!-- 베스트 상품 -->
	<div class="untree_co-section">
		<div class="container">
			<div class="row mb-5 align-items-center">
				<div class="col-md-6">
					<h2 class="h3">BEST Items</h2>        
				</div>
				<div class="col-sm-6 carousel-nav text-sm-right">
				<!--  왼쪽 으로 이동 버튼 -->
					<a href="#" class="prev js-custom-prev-v2">
						<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-left-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
							<path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
							<path fill-rule="evenodd" d="M8.354 11.354a.5.5 0 0 0 0-.708L5.707 8l2.647-2.646a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708 0z"/>
							<path fill-rule="evenodd" d="M11.5 8a.5.5 0 0 0-.5-.5H6a.5.5 0 0 0 0 1h5a.5.5 0 0 0 .5-.5z"/>
						</svg>
					</a>
					<!--  오른쪽 으로 이동 버튼 -->
					<a href="#" class="next js-custom-next-v2">
						<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-right-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
							<path fill-rule="evenodd" d="M8 15A7 7 0 1 0 8 1a7 7 0 0 0 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
							<path fill-rule="evenodd" d="M7.646 11.354a.5.5 0 0 1 0-.708L10.293 8 7.646 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0z"/>
							<path fill-rule="evenodd" d="M4.5 8a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1H5a.5.5 0 0 1-.5-.5z"/>
						</svg>
					</a>
				</div>
			</div> <!-- /.heading -->
			<!--  상품 이미지 -->
			<div class="owl-3-slider owl-carousel">
				<div class="item">
					<div class="product-item">
						<a href="shop-single.jsp" class="product-img">
							<div class="label sale top-right">
								<div class='content'>Sale 라벨</div>
							</div>
							<!-- 베스트상품숍으로 넘어가게! -->
							<a href="bestItemPage.do">
							<img src="resources/images/products/watch-1-min.jpg" alt="Image" class="img-fluid">
							</a>
							
						</a>
						<h3 class="title"><a href="bestItemPage.do">상품 이름</a></h3>
						<div class="price">
							<del>세일전 가격</del> &mdash; <span>세일후가격</span>
						</div>
					</div>
				</div> <!-- /.item -->


				<div class="item">
					<div class="product-item">
						<a href="shop-single.jsp" class="product-img">

							<div class="label new top-right">
								<div class='content'>New 라벨</div>
							</div>

							<!-- 베스트상품숍으로 넘어가게! -->
							<a href="bestItemPage.do">
							<img src="resources/images/products/watch-1-min.jpg" alt="Image" class="img-fluid">
							</a>
							
							
						</a>
						<h3 class="title"><a href="bestItemPage.do">상품이름</a></h3>
						<div class="price">
							<span>가격</span>
						</div>
					</div>
				</div> <!-- /.item -->


				<div class="item">
					<div class="product-item">
						<a href="shop-single.jsp" class="product-img">
							<div class="label new top-right">
								<div class='content'>New 라벨</div>
							</div>

							<div class="label sale top-right second">
								<div class='content'>Sale 라벨</div>
							</div>
							
							<!-- 베스트상품숍으로 넘어가게! -->
							<a href="bestItemPage.do">
							<img src="resources/images/products/watch-1-min.jpg" alt="Image" class="img-fluid">
							</a>
							
						</a>
						<h3 class="title"><a href="bestItemPage.do">상품 이름</a></h3>
						<div class="price">
							<del>세일전가격</del> &mdash; <span>세일후 가격</span>
						</div>
					</div>
				</div> <!-- /.item -->

				<div class="item">
					<div class="product-item">
						<a href="shop-single.jsp" class="product-img">
						
							<!-- 베스트상품숍으로 넘어가게! -->
							<a href="bestItemPage.do">
							<img src="resources/images/products/watch-1-min.jpg" alt="Image" class="img-fluid">
							</a>
							
						</a>
						<h3 class="title"><a href="bestItemPage.do">상품이름</a></h3>
						<div class="price">
							<span>가격</span>
						</div>
					</div>
				</div> <!-- /.item -->
				
			</div>
		</div> <!-- /.container -->
	</div> <!-- /.untree_co-section -->  
<!--  best 상품 종료 -->




	
	<div class="site-footer">


		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-5">
					<div class="widget mb-4">
						<h3 class="mb-2">Vintagure</h3>
						<p>우리회사 소개 정보 등등등!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
						!!!!!!!!!!!!!!!!!!! 고객센터 시간, 번호, 회사주소, 회사연락처 등등등!!!!!!!!!!!!!!!!!</p>
					</div>

				</div>
				
				



			<div class="row mt-5">
				<div class="col-12 text-center">
					<ul class="list-unstyled social">
						<li><a href="#"><span class="icon-facebook"></span></a></li>
						<li><a href="#"><span class="icon-instagram"></span></a></li>
					</ul>
				</div>
				<div class="col-12 text-center copyright">
					<p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co">Untree.co</a> <!-- License information: https://untree.co/license/ -->
					</p>

				</div>
			</div>
		</div> <!-- /.container -->
	</div> <!-- /.site-footer -->

	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>

	<script src="resources/js/jquery-3.4.1.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.animateNumber.min.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.fancybox.min.js"></script>
	<script src="resources/js/jquery.sticky.js"></script>
	<script src="resources/js/aos.js"></script>
	<script src="resources/js/custom.js"></script>
	
</body>

</html>