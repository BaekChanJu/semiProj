<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

	<!-- eventSale1 은 크리스마스 할인상품 입니다!! -->
<% String pjName = "/semiProject"; %>

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


  <link rel="stylesheet" href="<%=pjName%>/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="<%=pjName%>/resources/css/animate.min.css">
  <link rel="stylesheet" href="<%=pjName%>/resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="<%=pjName%>/resources/css/owl.theme.default.min.css">
  <link rel="stylesheet" href="<%=pjName%>/resources/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="<%=pjName%>/resources/fonts/icomoon/style.css">
  <link rel="stylesheet" href="<%=pjName%>/resources/fonts/flaticon/font/flaticon.css">
  <link rel="stylesheet" href="<%=pjName%>/resources/css/aos.css">
  <link rel="stylesheet" href="<%=pjName%>/resources/css/style.css">
   <link rel="stylesheet" href="<%=pjName%>/resources/css/mdRecommend상세.css">
   <link rel="stylesheet" href="<%=pjName%>/resources/css/font.css">

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
					<a href="<%=pjName%>/index.do" class="logo menu-absolute m-0">Vintagere<span class="text-primary">.</span></a>

					<!--  메인 헤더 중앙 카테고리  -->
					<ul class="js-clone-nav pl-0 d-none d-lg-inline-block site-menu">
					
						<!-- Vintagure 카테고리  -->
							<!-- 맨위 메인이 되는 Vintagere,PAGES 같은 메인카테고리 누르면 맨처음 페이지 나오게합니다!-->
						<li class="has-children">
							<a href="<%=pjName%>/main/productList.do?sc_Id=11&ct_Id=">Vintagere</a>
							<ul class="dropdown">
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=11&ct_Id=">OUTER</a></li>
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=15&ct_Id=">TOP</a></li>
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=13&ct_Id=">BOTTOM</a></li>
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=14&ct_Id=">SHOES</a></li>
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=12&ct_Id=">ACC</a></li>
							</ul>
						</li>
						
						<!-- PAGES 카테고리 -->
						<li class="has-children">
							<a href="<%=pjName%>/qnA.do">PAGES</a>
							<ul class="dropdown">
								<li><a href="<%=pjName%>/qnA.do">Q & A</a></li>
								<li><a href="<%=pjName%>/styleReview.do">STYLE REVIEW</a></li>
								<li><a href="<%=pjName%>/free.do">자유 게시판</a></li>
							</ul>
						</li>
						
						<!-- MEN 카테고리 -->
						<li class="has-children">
							<a href="<%=pjName%>/productList.do?sc_Id=11&ct_Id=20">MAN</a>
							<ul class="dropdown">
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=11&ct_Id=20">OUTER</a></li>
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=15&ct_Id=20">TOP</a></li>
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=13&ct_Id=20">BOTTOM</a></li>
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=14&ct_Id=20">SHOES</a></li>
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=12&ct_Id=20">ACC</a></li>
							</ul>
						</li>
						
						<!-- WOMEN 카테고리 -->
						<li class="has-children">
							<a href="<%=pjName%>/productList.do?sc_Id=11&ct_Id=23">WOMAN</a>
							<ul class="dropdown">
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=11&ct_Id=30">OUTER</a></li>
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=15&ct_Id=30">TOP</a></li>
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=13&ct_Id=30">BOTTOM</a></li>
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=14&ct_Id=30">SHOES</a></li>
								<li><a href="<%=pjName%>/main/productList.do?sc_Id=12&ct_Id=30">ACC</a></li>
							</ul>
						</li>		
					</ul>



					<!--  홈 메인상단 우측 아이콘 3개 -->
					<div class="menu-icons">
						<!--  검색 버튼 -->
						<a href="<%=pjName%>/select.do" class="btn-custom-search" id="btn-search">
							<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
								<path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
							</svg>
						</a>
						<!--  유저 버튼 -->
						<a href="<%=pjName%>/login.do" class="user-profile">
							<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
							</svg>
						</a>
						<!--  장바구니 버튼 -->
						<a href="<%=pjName%>/cart.do" class="cart">
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

		
		
		<!-- 이벤트 배너 -->
		
		
		
		<div id='event1'>
		<img src="<%=pjName%>/resources/images/에러페이지용.gif" alt="Image" class="img-fluid">
		</div>
		
		
		<div id='eventFont'>
			죄송합니다 고객님! 금방 도와드리겠습니다! 02)4597-2741
			
		</div>
		
		
	<div class="site-footer">


		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-5">
					<div class="widget mb-4">
						<h3 class="mb-2">Vintagure</h3>
						<p>COMPANY: Vintagure OWNER: 세즈카 BUSINESS LICENSE:
							258-42-00220 ONLINE BUSINESS: 2020-서울금천-2099[사업자번호확인] CS CENTER:
							070-5033-8256 Week days 10:00am ~ 5:00pm, lunch time
							1:00pm~2:00pm (Weekends, Public holiday off) ADDRESS: 04355 서울특별시
							금천구 가산디지털2로 123 2차) 4층 413호 월드메르디앙 PERSON IN CHARGE: 세즈카 E -
							MAIL: Vintagure@naver.com BANK ACCOUNT: 농협 301-8256-4175-61 / 세즈카
						</p>
					</div>

				</div>





				<div class="row mt-5">
					<div class="col-12 text-center">
						<ul class="list-unstyled social">
							<li><a href="https://www.instagram.com/vintagure1234/"><span
									class="icon-instagram"></span></a></li>
							<li><a href="https://www.facebook.com/vintagure"><span
									class="icon-facebook"></span></a></li>
						</ul>
					</div>
					<div class="col-12 text-center copyright">
						<p>
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script>
							. All Rights Reserved. &mdash; Designed with love by <a
								href="https://untree.co">Untree.co</a>
							<!-- License information: https://untree.co/license/ -->
						</p>

					</div>
				</div>
			</div>
			<!-- /.container -->
		</div>
		<!-- /.site-footer -->

		
