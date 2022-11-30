<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="/" rel="stylesheet">
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






  <div class="page-heading bg-light">
    <div class="container">
      <div class="row align-items-end text-center">
        <div class="col-lg-7 mx-auto">
             <h1>관리자 페이지</h1>
        </div>
      </div>
    </div>
  </div>

  
<!--   -->
  <div class="untree_co-section">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12" >
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
               <c:forEach items="${orderView}" var="View" varStatus="status">
               <c:if test="${status.first}">
                <tr>
                  <td class="product-thumbnail">
                   ${View.b_Id}
                  </td>
                  <td class="product-name">
                    <h2 class="h5 text-black">${View.m_Name}</h2>
                  </td>
                  <td>${View.m_Num} ${View.m_Addr} ${View.m_SubAddr}</td>
                   
                  <td class='totalPrice'>${View.totalPrice}</td>
                </tr>
                 <div class="deliveryChange">
                 <form role="form" method="post" class="deliveryForm">
 
  					<input type="hidden" name="orderId" value="${View.b_Id}" />
 					 <input type="hidden" name="delivery" class="delivery" value="" />
   					<button type="button" class="delivery1_btn">배송 중</button>
  					<button type="button" class="delivery2_btn">배송 완료</button><br/><br/>
  					
 				</form></div><br/>
 				<div class="deliveryChange">
 				<a href="managerCancelGoods.do?b_Id=${View.b_Id}&can_Id="><button class="delivery5_btn">취소/반품/교환 승인</button></a>
				</div><br/>
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
               <c:forEach items="${orderView}" var="view">

                <tr>
                <td class="product-thumbnail">
                    <img src="<%=pjName%>/resources/images/upload/${view.gl_Img1}" alt="Image" class="img-fluid">
                  </td>
                  <td class="product-thumbnail">
                   ${view.g_Name}
                  </td>
                  <td class="product-name">
                    <h2 class="h5 text-black">${view.g_Price}</h2>
                  </td>
                  <td>${view.c_Cnt}</td>
                   
                  <td class='totalPrice'>${view.g_Price * view.c_Cnt}</td>
                </tr>

                </c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
        <!--  장바구니 물품 종료 -->


        
        

        <!--   -->
      </div>
    </div>
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
  <script src="<%=pjName%>/resources/js/cartTotalPrice.js"></script>
  <script src="<%=pjName%>/resources/js/orderView.js"></script>
</body>

</html>
		 