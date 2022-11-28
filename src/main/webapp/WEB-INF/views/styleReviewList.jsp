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
  <link rel="stylesheet" href="<%=pjName%>/resources/css/mystyle.css">
  
  <link rel="stylesheet" href="<%=pjName%>/resources/css/mdRecommend상세.css">
  
  

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
    <div class="site-mobile-menu-body" ></div>
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
                        <li><a href="<%=pjName%>/main/mainOuter.do">OUTER</a></li>
                        <li><a href="<%=pjName%>/main/mainTop.do">TOP</a></li>
                        <li><a href="<%=pjName%>/main/mainBottom.do">BOTTOM</a></li>
                        <li><a href="<%=pjName%>/main/mainShoes.do">SHOES</a></li>
                        <li><a href="<%=pjName%>/main/mainAcc.do">ACC</a></li>
                     </ul>
                  </li>
                  
                  <!-- PAGES 카테고리 -->
                  <li class="has-children">
                     <a href="qnA.do">PAGES</a>
                     <ul class="dropdown">
                        <li><a href="<%=pjName%>/qnA.do">Q & A</a></li>
                        <li><a href="<%=pjName%>/styleReview.do">STYLE REVIEW</a></li>
                        <li><a href="<%=pjName%>/free.do">자유 게시판</a></li>
                     </ul>
                  </li>
                  
                  <!-- MEN 카테고리 -->
                  <li class="has-children">
                     <a href="manOuter.do">MAN</a>
                     <ul class="dropdown">
                        <li><a href="<%=pjName%>/man/manOuter.do">OUTER</a></li>
                        <li><a href="<%=pjName%>/man/manTop.do">TOP</a></li>
                        <li><a href="<%=pjName%>/man/manBottom.do">BOTTOM</a></li>
                        <li><a href="<%=pjName%>/man/manShoes.do">SHOES</a></li>
                        <li><a href="<%=pjName%>/man/manAcc.do">ACC</a></li>
                     </ul>
                  </li>
                  
                  <!-- WOMEN 카테고리 -->
                  <li class="has-children">
                     <a href="womanOuter.do">WOMAN</a>
                     <ul class="dropdown">
                        <li><a href="<%=pjName%>/woman/womanOuter.do">OUTER</a></li>
                        <li><a href="<%=pjName%>/woman/womanTop.do">TOP</a></li>
                        <li><a href="<%=pjName%>/woman/womanBottom.do">BOTTOM</a></li>
                        <li><a href="<%=pjName%>/woman/womanShoes.do">SHOES</a></li>
                        <li><a href="<%=pjName%>/woman/womanAcc.do">ACC</a></li>
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
           <h1>StyleReview</h1>  
          <p class="mb-4"><a href="index.jsp">Home</a> / <strong>StyleReview</strong></p>        
        </div>
      </div>
    </div>
  </div>

  <div class="untree_co-section pt-3">
    <div class="container">

      <div class="row">


        
        <!-- 사진예시용 하나넣어둠 -->
        <div class="eximg" id = "mdcssimg">
        <form action="styleUpdate" id ="style" name="style" method="post">
        <input type="hidden" name='s_id' value='${style.s_id}'>
          
          <input  type="text" id="s_title" name="s_title" value='${style.s_title}' >
        
         <img src="<%=pjName %>/resources/images/upload/${style.s_img}"  width="580" height="650">
      
  		<input  type="text" id="s_message" class="form-control" name="s_message" value='${style.s_message}'>
    
    	<input id="modi" type= "submit" value="수정"/>
    	<a href="styledelete.do?s_id=${style.s_id}">
    	  <input id="modi" type= "button" value="삭제"/>
    	 </a>
</form>
  
</div>
</div>
</div>
   


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