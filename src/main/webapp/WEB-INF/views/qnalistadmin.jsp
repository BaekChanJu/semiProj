<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>

<html lang="en">
<% String pjName = "/semiProject1"; %>
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
  <link rel="stylesheet" href="resources/css/mystyle.css">

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
					<a href="index.jsp" class="logo menu-absolute m-0">Vintagere<span class="text-primary"></span></a>

					<!--  메인 헤더 중앙 카테고리  -->
					<ul class="js-clone-nav pl-0 d-none d-lg-inline-block site-menu">
						<!-- Vintagure 카테고리 -->
						<li class="has-children">
							<a href="shop.jsp">Vintagere</a>
							<ul class="dropdown">
								<li><a href="#">OUTER</a></li>
								<li><a href="#">TOP</a></li>
								<li><a href="#">BOTTOM</a></li>
								<li><a href="#">SHOES</a></li>
								<li><a href="#">ACC</a></li>
							</ul>
						</li>
						<!-- PAGES 카테고리 -->
						<li class="has-children">
							<a href="shop.jsp">PAGES</a>
							<ul class="dropdown">
								<li><a href="qnA.do">Q & A</a></li>
								<li><a href="styleReview.do">STYLE REVIEW</a></li>
								<li><a href="free.do">자유 게시판</a></li>
							</ul>
						</li>
						<!-- Pages 카테고리 -->
						<li class="has-children">
							<a href="#">MEN</a>
							<ul class="dropdown">
								<li><a href="#">OUTER</a></li>
								<li><a href="#">TOP</a></li>
								<li><a href="#">BOTTOM</a></li>
								<li><a href="#">SHOES</a></li>
								<li><a href="#">ACC</a></li>
								<!-- Pages 카테고리 안 Menu Two 세부카테고리 -->
								<li class="has-children">
									<a href="#">Menu Two</a>
									<ul class="dropdown">
										<li><a href="#">T-Shirt</a></li>
										<li><a href="#">Underware</a></li>
										<li><a href="#">Clothing</a></li>
										<li><a href="#">Watches</a></li>
										<li><a href="#">Shoes</a></li>

									</ul>
								</li>
							</ul>
						</li>
						<li class="has-children">
							<a href="shop.jsp">WOMEN</a>
							<ul class="dropdown">
								<li><a href="#">OUTER</a></li>
								<li><a href="#">TOP</a></li>
								<li><a href="#">BOTTOM</a></li>
								<li><a href="#">SHOES</a></li>
								<li><a href="#">ACC</a></li>
							</ul>
						</li>		
					</ul>



					<!--  홈 메인상단 우측 아이콘 3개 -->
					<div class="menu-icons">
						<!--  검색 버튼 -->
						<a href="#" class="btn-custom-search" id="btn-search">
							<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
								<path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
							</svg>
						</a>
						<!--  유저 버튼 -->
						<a href="#" class="user-profile">
							<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
							</svg>
						</a>
						<!--  장바구니 버튼 -->
						<a href="cart.jsp" class="cart">
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

<!-- 메인 이름 -->
  <div class="page-heading bg-light">
    <div class="container">
      <div class="row align-items-end text-center">
        <div class="col-lg-7 mx-auto">
          <h1>${qnadetail.q_title}</h1>  
          <p class="mb-4"><a href="index.jsp">Home</a> / <strong>글</strong></p>        
        </div>
      </div>
    </div>
  </div>
<!-- 게시판 목록 -->
  <div class="untree_co-section pt-3">

    <div class="container">

      <div class="row align-items-center mb-5">
        <div class="col-lg-8">
          <h2 class="mb-3 mb-lg-0">게시판</h2><br/>
      <div class="row">
        <div class="col-md-3">
          <ul class="list-unstyled categories">
            <li><a href="insertGoods.do">상품 등록</a></li>
                  <li><a href="goodsList.do">상품 목록</a></li>
                  <li><a href="#">카테고리별 매출</a></li>
                  <li><a href="chart.do">월별 매출</a></li>
                  <li><a href="qnaanswer.do">Q&A 게시판 관리</a></li>
                  <li><a href="#">주문 관리</a></li>
          </ul>
        </div>	
        <div class="col-md-9">
          <div class="row">
          
            <div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">
              <div class="product-item">

			<!-- 게시판 틀 -->
	<form action="qnaadmin.do" id ="qnadmodi" name="qnadmodi" method="post">
   	 <table id="gtext" >
   	  <input type="hidden" name='q_id' id='q_id' value='${qnadetail.q_id}'>
      <tr>
      <td>제목</td>
      
      <td><input type="text" name="q_title" id="q_title" value="${qnadetail.q_title}"/></td>
      </tr>
	  <tr>
	  <td>내용</td>
	  <td><textarea name="q_message" id="q_message" cols="73" rows="10">${qnadetail.q_message}</textarea></td>
	  </tr>
	 <tr>
	 <td>답글</td>
	 <td><input type="text" name="o_message" id="o_message" value="${qnadetail1.o_message}" /></td>
	 </tr>
	 
    </table>
    
    	<input id="modi" type= "submit" value="등록"/>
    		<input id="qnaup" name="qnaup" type= "button" value="수정"/>
    	<a href="qnadelete1.do?q_id=${qnadetail.q_id}">
    	  <input id="modi" type= "button" value="삭제"/>
    	 </a>
</form>

	

	
    <div id="overlayer"></div>
    <div class="loader">
      <div class="spinner-border" role="status">
      
      
       
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
    <script src="resources/js/qna.js"></script>

 
  </body>
  </html>
	