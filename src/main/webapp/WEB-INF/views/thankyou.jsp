<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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



 	<nav class="site-nav mb-5">
		<div class="sticky-nav js-sticky-header">

			<!--  ?????? ?????? ?????? ?????? ????????? -->
			<div class="container position-relative">
				<div class="site-navigation text-center dark">
					<a href="index.jsp" class="logo menu-absolute m-0">Vintagere<span class="text-primary">.</span></a>

					<!--  ?????? ?????? ?????? ????????????  -->
					<ul class="js-clone-nav pl-0 d-none d-lg-inline-block site-menu">
					
						<!-- Vintagure ????????????  -->
							<!-- ?????? ????????? ?????? Vintagere,PAGES ?????? ?????????????????? ????????? ????????? ????????? ??????????????????!-->
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
						
						<!-- PAGES ???????????? -->
						<li class="has-children">
							<a href="qnA.do">PAGES</a>
							<ul class="dropdown">
								<li><a href="qnA.do">Q & A</a></li>
								<li><a href="styleReview.do">STYLE REVIEW</a></li>
								<li><a href="free.do">?????? ?????????</a></li>
							</ul>
						</li>
						
						<!-- MEN ???????????? -->
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
						
						<!-- WOMEN ???????????? -->
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



					<!--  ??? ???????????? ?????? ????????? 3??? -->
					<div class="menu-icons">
						<!--  ?????? ?????? -->
						<a href="select.do" class="btn-custom-search" id="btn-search">
							<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
								<path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
							</svg>
						</a>
						<!--  ?????? ?????? -->
						<a href="login.do" class="user-profile">
							<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
							</svg>
						</a>
						<!--  ???????????? ?????? -->
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
	
	


  <div class="untree_co-section" id = 'thankyou'>
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center pt-5" >
        
          <img src="<%=pjName%>/resources/images/??????.jpg" alt="Image" class="md_img" >
          <p  id = 'thankyouB'><a href="index.do" class="btn btn-sm btn-outline-black">Back to shop</a></p>
        </div>
      </div>
    </div>
  </div>



	<div class="site-footer">


		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-5">
					<div class="widget mb-4">
						<h3 class="mb-2">Vintagure</h3>
						<p>COMPANY: Vintagure ???OWNER: ????????????BUSINESS LICENSE: 258-42-00220???ONLINE BUSINESS: 2020-????????????-2099[?????????????????????]
CS CENTER: 070-5033-8256 Week days 10:00am ~ 5:00pm, lunch time 1:00pm~2:00pm (Weekends, Public holiday off)
ADDRESS: 04355 ??????????????? ????????? ???????????????2??? 123 2???) 4??? 413??? ?????????????????????PERSON IN CHARGE: ????????????E - MAIL: Vintagure@naver.com
BANK ACCOUNT: ?????? 301-8256-4175-61 / ?????????
</p>
					</div>

				</div>
				
				



			<div class="row mt-5">
				<div class="col-12 text-center">
					<ul class="list-unstyled social">
						<li><a href="https://www.instagram.com/vintagure1234/"><span class="icon-instagram"></span></a></li>
						<li><a href="https://www.facebook.com/vintagure"><span class="icon-facebook"></span></a></li>
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
