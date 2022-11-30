<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<%
   String pjName = "/semiProject";
%>

<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="favicon.png">

<meta name="description" content="" />
<meta name="keywords" content="" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Mulish:ital,wght@0,300;0,400;0,700;1,700&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap"
   rel="stylesheet">


<link rel="stylesheet"
   href="<%=pjName%>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=pjName%>/resources/css/animate.min.css">
<link rel="stylesheet"
   href="<%=pjName%>/resources/css/owl.carousel.min.css">
<link rel="stylesheet"
   href="<%=pjName%>/resources/css/owl.theme.default.min.css">
<link rel="stylesheet"
   href="<%=pjName%>/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet"
   href="<%=pjName%>/resources/fonts/icomoon/style.css">
<link rel="stylesheet"
   href="<%=pjName%>/resources/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="<%=pjName%>/resources/css/aos.css">
<link rel="stylesheet" href="<%=pjName%>/resources/css/style.css">

<title>UntreeStore Free HTML Template by Untree.co</title>
</head>

<body>

   <div class="search-form" id="search-form">
      <form action="">
         <input type="search" class="form-control"
            placeholder="Enter keyword to search...">
         <button class="button">
            <svg width="1em" height="1em" viewBox="0 0 16 16"
               class="bi bi-search" fill="currentColor"
               xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd"
                  d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z" />
          <path fill-rule="evenodd"
                  d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z" />
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



  


   <div class="page-heading bg-light">
      <div class="container">
         <div class="row align-items-end text-center">
            <div class="col-lg-7 mx-auto">
               <h1>관리자 페이지</h1>

            </div>
         </div>
      </div>
   </div>

   <div class="untree_co-section pt-3">
      <div class="container">



         <div class="row">

            <div class="col-md-3">
               <ul class="list-unstyled categories">
                  <li><a href="insertGoods.do">상품 등록</a></li>
                  <li><a href="goodsList.do">상품 목록</a></li>
                  <li><a href="chart.do">월별 매출</a></li>
                  <li><a href="qnaanswer.do">Q&A 게시판 관리</a></li>
                  <li><a href="managerOrderList.do">주문 관리</a></li>
               </ul>
            </div>
            <div class="col-md-9">
               <div class="row">
                  <div class="col-12 col-sm-12 col-md-12 mb-12 col-lg-12">

                     <form action="saveGoods.do"  role="form" method='post' enctype="multipart/form-data" autocomplete="off">

                        <div class="inputArea">
                           <label>1차 분류</label> <select name=ct_Id class="category1">
                              <option value="20">man</option>
                              <option value="30">woman</option>
                              <option value="40">event</option>
                           </select>
                           <label>2차 분류</label> <select name="sc_Id" class="category1">
                              <option value="11">Outer</option>
                              <option value="15">Top</option>
                              <option value="13">Bottom</option>
                              <option value="14">Shoes</option>
                              <option value="12">Acc</option>
                              <option value="16">New event</option>
                              <option value="17">MD event</option>
                              <option value="18">best event</option>
                           </select>
                        </div>


                        <div class="inputArea">
                           <label for="g_Name"> 상품명 </label> 
                           <input type="text" id="g_Name" name="g_Name"/>
                        </div>
                        <div class="inputArea">

                           <label for="gdsPrice">상품가격</label> 
                           <input type="text"id="g_Price" name="g_Price"/>
                        </div>

                        <div class="inputArea">
                           <label for="g_Stock">상품수량</label> 
                           <input type="text" id="g_Stock" name="g_Stock" />

                        </div>

                        <div class="col-md-12 mb-3 mb-md-0">
                           <td bgcolor="orange" width="70">상품 이미지 첨부</td>
                           <td align="left"><input type="file" id="g_img1" multiple="multiple" name='file1' class="btn btn-outline-black btn-sm btn-block" maxlength="60" size="40"></td>
                           <td align="left"><input type="file" id="g_img1" multiple="multiple" name='file2' class="btn btn-outline-black btn-sm btn-block" maxlength="60" size="40"></td>
                           <td align="left"><input type="file" id="g_img1" multiple="multiple" name='file3' class="btn btn-outline-black btn-sm btn-block" maxlength="60" size="40"></td>
                        </div>


                        <div class="inputArea">
                           <label for="g_Message">상품소개</label>
                           <textarea rows="10" cols="100" id="g_Message" name="g_Message"></textarea>

                        </div>


                        <div class="inputArea">
                           <button type="submit" id="register_Btn" class="btn btn-outline-black">등록</button>
                           <button type="submit" id="register_Btn" class="btn btn-outline-black">취소</button>
                        </div>

                     </form>
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