<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <div class="row mb-5">
        <form class="col-md-12" method="post">
          <div class="site-blocks-table">
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th class="product-thumbnail">주문 번호</th>
                  <th class="product-name">수령인</th>
                  <th class="product-price">주소</th>
                  <th class="product-quantity">가격</th>
                </tr>
              </thead>
              <tbody>
               <c:forEach items="${cancelGoods}" var="cancel" varStatus="status">
               <c:if test="${status.first}">
                <tr>
                  <td class="product-thumbnail">
                   ${cancel.b_Id}
                  </td>
                  <td class="product-name">
                    <h2 class="h5 text-black">${cancel.m_Name}</h2>
                  </td>
                  <td>${cancel.m_Num} ${cancel.m_Addr} ${cancel.m_SubAddr}</td>
                   
                  <td class='totalPrice'>${cancel.totalPrice}</td>
                </tr>
                </c:if>
                </c:forEach>
              </tbody>
            </table>
            
            <table class="table table-bordered">
              <thead>
                <tr>
                  <th class="product-thumbnail">Image</th>
                  <th class="product-thumbnail">상품명</th>
                  <th class="product-name">price</th>
                  <th class="product-price">구입 수량</th>
                  <th class="product-quantity">totalPrice</th>
                </tr>
              </thead>
              <tbody>
               <c:forEach items="${cancelGoods}" var="cancel">

                <tr>
                <td class="product-thumbnail">
                    <img src="<%=pjName%>/resources/images/upload/${cancel.gl_Img1}" alt="Image" class="img-fluid">
                  </td>
                  <td class="product-thumbnail">
                   ${cancel.g_Name}
                  </td>
                  <td class="product-name">
                    <h2 class="h5 text-black">${cancel.g_Price}</h2>
                  </td>
                  <td>${cancel.c_Cnt}</td>
                   
                  <td class='totalPrice'>${cancel.g_Price * cancel.c_Cnt}</td>
                </tr>

                </c:forEach>
              </tbody>
            </table>
          </div>
        </form>
      </div>
            <div class="col-md-9">
               <div class="row">
                  <div class="col-12 col-sm-12 col-md-12 mb-12 col-lg-12">

                     
           			<form class='cancelForm' action="delivery.do">
                       <label>취소/교환/반품 사유22</label> <input type="text" name='can_Message1' id='can_Message1' class="category1" value="${selectCancel.can_Message1}">
                             

                        <div class="inputArea">
                           <label for="can_Message2">상세 이유</label>
                           <textarea rows="10" cols="100" id="can_Message2" name="can_Message2">${selectCancel.can_Message2}</textarea>

                        </div>

						<input type="hidden" id="can_Id" name="can_Id" value="${selectCancel.can_Id}">
						<input type="hidden" id="b_Id" name="b_Id" value="${selectCancel.b_Id}">
						
						<div class="deliveryChange ">
  					 <input type="hidden" name="orderId" value="${selectCancel.b_Id}" />
 					 <input type="hidden" name="delivery" class="delivery" value="" />
 					 <button id="register_Btn" class="btn btn-black btn-sm delivery1_btn">승인</button>
 					 <button id="register_Btn2" class="btn btn-black btn-sm delivery1_btn">반려</button>
 						</div><br/>
					
                     </form>
                  </div>

</div></div></div></div>
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
               <script src="<%=pjName%>/resources/js/managerCancel.js"></script>
</body>

</html>