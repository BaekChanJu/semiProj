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
  
  
  

  <title>UntreeStore Free HTML Template by Untree.co</title>
</head>

<body>

  <div class="search-form" id="search-form">
    <form action=".do">
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
    <div class="site-mobile-menu-body" ></div>
  </div>



  <!--  상단 헤더 -->

	<nav class="site-nav mb-5"  >
		<div class="sticky-nav js-sticky-header" >
		
			<!--  메인 헤더 우측 상표 홈버튼 -->
			
			<div class="container position-relative" >
			
				<div class="site-navigation text-center dark">
					<a href="index.do" class="logo menu-absolute m-0" >Vintagere<span class="text-primary">.</span></a>

					<!--  메인 헤더 중앙 카테고리  -->
					<ul class="js-clone-nav pl-0 d-none d-lg-inline-block site-menu"  style="background-image: url('<%=pjName%>/resources/images/MD추천맨윗단.gif')" >> >
					
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


  <div class="page-heading bg-light">
    <div class="container">
      <div class="row align-items-end text-center">
        <div class="col-lg-7 mx-auto">
          <!-- 이름대신 배너 넣음 -->
           <img src="<%=pjName%>/resources/images/MD추천배너1.jpg" alt="Image" class="md_img">
          <p class="mb-4"><a href="index.do">Home</a> / <strong>이달의 이벤트 MD추천 특별기획</strong></p>        
        </div>
      </div>
    </div>
  </div>

  <div class="untree_co-section pt-3">
    <div class="container">

      <div class="row align-items-center mb-5">
        <div class="col-lg-8">
          <h2 class="mb-3 mb-lg-0">카테고리</h2>
        </div>
        <div class="col-lg-4">

          <div class="d-flex sort align-items-center justify-content-lg-end">
            <strong class="mr-3">Sort by:</strong>
            <form action="#">
              <select class="" required>
              <!-- 1118일 가격높은순 낮은순만 남겨놓음 -->
                <option value="1">Price: Ascending</option>
                <option value="2">Price: Descending</option>
              </select>
            </form>
          </div>
        </div>
      </div>

      <div class="row">

        <div class="col-md-3">
          <ul class="list-unstyled categories">
          
          
          <!-- 1118링크 수정과 이름까지 수정 ! -->
            <li><a href="mainOuter.do">OUTER <span>2,919</span></a></li>
            <li><a href="mainTop.do">TOP <span>5,381</span></a></li>
            <li><a href="mainBottm.do">BOTTM <span>7,119</span></a></li>
            <li><a href="mainShoes.do">SHOES <span>1,012</span></a></li>
            <li><a href="mainAcc.do">ACC <span>919</span></a></li>
          </ul>
        </div>
        <div class="col-md-9">
          <div class="row">
            <div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">
              <div class="product-item">
                <a href="mdRecommend상세.do" class="product-img">
                  <a href="mdRecommend상세.do"><img src="<%=pjName%>/resources/images/베스트메인2.png" alt="Image" class="img-fluid"></a>
                </a>
                <h3 class="title"><a href="mdRecommend상세.do">Dark Jacket</a></h3>
                <div class="price">
                  <span>£69.00</span>
                </div>
              </div>
            </div>

            <div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">
              <div class="product-item">
                <a href="mdRecommend상세.do" class="product-img">
                  <a href="mdRecommend상세.do"><img src="<%=pjName%>/resources/images/베스트메인2.png" alt="Image" class="img-fluid"></a>
                </a>
                <h3 class="title"><a href="mdRecommend상세.do">Chino Bottoms</a></h3>
                <div class="price">
                  <del>£99.00</del> &mdash; <span>£69.00</span>
                </div>
              </div>
            </div>

            <div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">
              <div class="product-item">
                <a href="mdRecommend상세.do" class="product-img">  <!-- shop-single.jsp 상세페이지 이동 이름변경 가능  -->
                     <a href="mdRecommend상세.do"><img src="<%=pjName%>/resources/images/베스트메인2.png" alt="Image" class="img-fluid"></a>
                </a>
                <h3 class="title"><a href="mdRecommend상세.do">Brown Shoe</a></h3>
                <div class="price">
                  <span>£29.00</span>
                </div>
              </div>
            </div>

            <div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">
              <div class="product-item">
                <a href="mdRecommend상세.do" class="product-img">
                  <a href="mdRecommend상세.do"><img src="<%=pjName%>/resources/images/베스트메인2.png" alt="Image" class="img-fluid"></a>
                </a>
                <h3 class="title"><a href="mdRecommend상세.do">The Modern Sock</a></h3>
                <div class="price">
                  <span>£29.00</span>
                </div>
              </div>
            </div>

            <div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">
              <div class="product-item">
                <a href="mdRecommend상세.do" class="product-img">
                     <a href="mdRecommend상세.do"><img src="<%=pjName%>/resources/images/베스트메인2.png" alt="Image" class="img-fluid"></a>
                </a>
                <h3 class="title"><a href="mdRecommend상세.do">Double Knit Sweater</a></h3>
                <div class="price">
                  <del>£99.00</del> &mdash; <span>£69.00</span>
                </div>
              </div>
            </div>

            <div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">
              <div class="product-item">
                <a href="mdRecommend상세.do" class="product-img">
                 <a href="mdRecommend상세.do"><img src="<%=pjName%>/resources/images/베스트메인2.png" alt="Image" class="img-fluid"></a>
                </a>
                <h3 class="title"><a href="mdRecommend상세.do">The Murray</a></h3>
                <div class="price">
                  <del>£99.00</del> &mdash; <span>£69.00</span>
                </div>
              </div>
            </div>
          </div>

          <div class="row mt-5 pb-5">
            <div class="col-lg-12">
              <div class="custom-pagination">
                <ul class="list-unstyled">
                  <li>
                    <a href="#">
                      <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-left" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M5.854 4.646a.5.5 0 0 1 0 .708L3.207 8l2.647 2.646a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 0 1 .708 0z"/>
                        <path fill-rule="evenodd" d="M2.5 8a.5.5 0 0 1 .5-.5h10.5a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                      </svg>                      
                    </a>
                  </li>
                  <li class="active"><span>1</span></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li>
                    <a href="#">
                      <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M10.146 4.646a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L12.793 8l-2.647-2.646a.5.5 0 0 1 0-.708z"/>
                        <path fill-rule="evenodd" d="M2 8a.5.5 0 0 1 .5-.5H13a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 8z"/>
                      </svg>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>


        </div>
      </div>
    </div> <!-- /.untree_co-section -->

   


    <div id="overlayer"></div>
    <div class="loader">
      <div class="spinner-border" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    </div>

    <script src="<%=pjName%>/resources/js/jquery-3.4.1.min.js"></script>
    <script src="<%=pjName%>/resources/js/popper.min.js"></script>
    <script src="<%=pjName%>/resources/js/bootstrap.min.js"></script>
    <script src="<%=pjName%>/resources/js/owl.carousel.min.js"></script>
    <script src="<%=pjName%>/resources/js/jquery.animateNumber.min.js"></script>
    <script src="<%=pjName%>/resources/js/jquery.waypoints.min.js"></script>
    <script src="<%=pjName%>/resources/js/jquery.fancybox.min.js"></script>
    <script src="<%=pjName%>/resources/js/jquery.sticky.js"></script>
    <script src="<%=pjName%>/resources/js/aos.js"></script>
    <script src="<%=pjName%>/resources/js/custom.js"></script>
    
  </body>

  </html>
