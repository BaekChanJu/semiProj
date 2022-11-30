<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('m_Num').value = data.zonecode;
            document.getElementById("m_Addr").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("m_SubAddr").focus();
        }
    }).open();
}
</script>    
    
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



	<!--  상단 헤더 -->
	<nav class="site-nav mb-5">
		<div class="sticky-nav js-sticky-header">

			<!--  메인 헤더 우측 상표 홈버튼 -->
			<div class="container position-relative">
				<div class="site-navigation text-center dark">
					<a href="index.do" class="logo menu-absolute m-0">Vintagere<span
						class="text-primary">.</span></a>

					<!--  메인 헤더 중앙 카테고리  -->
					<ul class="js-clone-nav pl-0 d-none d-lg-inline-block site-menu">

						<!-- Vintagure 카테고리  -->
						<!-- 맨위 메인이 되는 Vintagere,PAGES 같은 메인카테고리 누르면 맨처음 페이지 나오게합니다!-->
						<li class="has-children" ><a
							href="main/productList.do?sc_Id=11">Vintagere</a>
							<ul class="dropdown">
								<li><a href="main/productList.do?sc_Id=11">OUTER</a></li>
								<li><a href="main/productList.do?sc_Id=15">TOP</a></li>
								<li><a href="main/productList.do?sc_Id=13">BOTTOM</a></li>
								<li><a href="main/productList.do?sc_Id=14">SHOES</a></li>
								<li><a href="main/productList.do?sc_Id=12">ACC</a></li>
							</ul></li>

						<!-- PAGES 카테고리 -->
						<li class="has-children" ><a href="qnA.do">PAGES</a>
							<ul class="dropdown">
								<li><a href="qnA.do">Q & A</a></li>
								<li><a href="styleReview.do">STYLE REVIEW</a></li>
								<li><a href="free.do">자유 게시판</a></li>
							</ul></li>

						<!-- MEN 카테고리 -->
						<li class="has-children" ><a
							href="main/productList.do?sc_Id=11&ct_Id=20">MAN</a>
							<ul class="dropdown">
								<li><a href="main/productList.do?sc_Id=11&ct_Id=20">OUTER</a></li>
								<li><a href="main/productList.do?sc_Id=15&ct_Id=20">TOP</a></li>
								<li><a href="main/productList.do?sc_Id=13&ct_Id=20">BOTTOM</a></li>
								<li><a href="main/productList.do?sc_Id=14&ct_Id=20">SHOES</a></li>
								<li><a href="main/productList.do?sc_Id=12&ct_Id=20">ACC</a></li>
							</ul></li>

						<!-- WOMEN 카테고리 --> 
						<li class="has-children" ><a
							href="main/productList.do?sc_Id=11&ct_Id=30">WOMAN</a>
							<ul class="dropdown">
								<li><a href="main/productList.do?sc_Id=11&ct_Id=30">OUTER</a></li>
								<li><a href="main/productList.do?sc_Id=15&ct_Id=30">TOP</a></li>
								<li><a href="main/productList.do?sc_Id=13&ct_Id=30">BOTTOM</a></li>
								<li><a href="main/productList.do?sc_Id=14&ct_Id=30">SHOES</a></li>
								<li><a href="main/productList.do?sc_Id=12&ct_Id=30">ACC</a></li>
							</ul></li>
					</ul>



					<!--  홈 메인상단 우측 아이콘 3개 -->
					<div class="menu-icons">
					
					
						<!--  검색 버튼 -->
					
						<a href="" class="btn-custom-search" id="btn-search">
							<svg  width="1em" height="1em" viewBox="0 0 16 16" id='searchKeyWord'class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z" />
								<path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z" />
							</svg>
						</a>
						
						
						
						
						 <!-- 로그아웃 시 출력할 헤더 -->
                     <c:if test="${empty sessionScope.login}">
                        <a href="login.do" class="user-profile"> <svg width="1em"
								height="1em" viewBox="0 0 16 16" class="bi bi-person"
								fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
							</svg>
						</a>
					</c:if>
						
                     <!-- 로그인 시 출력할 헤더 -->
                     <c:if test="${not empty sessionScope.login}">
                        <a href="cart.do?cater=mypage&m_Id=${sessionScope.login}" class="user-profile"> <svg width="1em"
								height="1em" viewBox="0 0 16 16" class="bi bi-person"
								fill="currentColor" xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd" d="M13 14s1 0 1-1-1-4-6-4-6 3-6 4 1 1 1 1h10zm-9.995-.944v-.002.002zM3.022 13h9.956a.274.274 0 0 0 .014-.002l.008-.002c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664a1.05 1.05 0 0 0 .022.004zm9.974.056v-.002.002zM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
							</svg>
						</a>
                     </c:if>
                     
						<!--  장바구니 버튼 -->
						<a href="cart.do?m_Id=${sessionScope.login}" class="cart" > <span class="item-in-cart">2</span>
							<svg width="1em" height="1em" viewBox="0 0 16 16"
								class="bi bi-cart" fill="currentColor"
								xmlns="http://www.w3.org/2000/svg">
								<path fill-rule="evenodd"
									d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm7 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z" />
							</svg>
						</a>

					</div>



					<a href="#"
						class="burger ml-auto float-right site-menu-toggle js-menu-toggle d-inline-block d-lg-none"
						data-toggle="collapse" data-target="#main-navbar"> <span></span>
					</a>

				</div>
			</div>
		</div>
	</nav>


  <div class="page-heading bg-light">
    <div class="container">
      <div class="row align-items-end text-center">
        <div class="col-lg-7 mx-auto">
          <h1>Checkout</h1>  
          <p class="mb-4"><a href="index.do">Home</a> / <strong>Checkout</strong></p>        
        </div>
      </div>
    </div>
  </div>

  

  <div class="untree_co-section">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12">
          <div class="border p-4 rounded" role="alert">
            Returning customer? <a href="#">Click here</a> to login
          </div>
        </div>
      </div>
      
      <form name='BuyInfo' method='post'>
      <div class="row">
      	<input type="hidden" name='m_Id' id='m_Id' value='${sessionScope.login}'>
      	<input type="hidden" id='hiddenTotalPrice' name='totalPrice'>
        <div class="col-md-6 mb-5 mb-md-0">
          <h2 class="h3 mb-3 text-black">Billing Details</h2>
          <div class="p-3 p-lg-5 border">
            <div class="form-group row">
              <div class="col-md-12">
                <label for="c_fname" class="text-black">Name <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="m_Name" name="m_Name" placeholder="Name" value="${memberInfo.m_Name}">
              </div>

            </div>

            <div class="form-group row">
              <div class="col-md-12">
                <label for="c_email" class="text-black">E - Mail </label>
                <input type="email" class="form-control" id="m_Email" name="m_Email" placeholder="E - Mail" value='${memberInfo.m_Email}'>
              </div>
            </div>

            <div class="form-group row">
              <div class="col-md-12">
                <label for="c_address" class="text-black">Phone Number <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="m_Tell" name="m_Tell" placeholder="Phone Number" value='${memberInfo.m_Tell}'>
              </div>
            </div>
          


            <div class="form-group row">
              <div class="col-md-6">
                <label for="sample6_postcode" class="text-black" > <span class="text-danger"></span></label>
                <input type="text" class="form-control" id="m_Num" name="m_Num" placeholder="우편번호" value='${memberInfo.m_Num}'>
              </div>
              
            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>  
            </div>
            
			
            <div class="form-group row mb-5">
              <div class="col-md-12">
                <label for="sample6_address" class="text-black"><span class="text-danger"></span></label>
                <input type="text" class="form-control" id="m_Addr" name="m_Addr" placeholder="주소" value='${memberInfo.m_Addr}' >
              </div>
              <div class="col-md-12">
                <label for="sample6_detailAddress" class="text-black"><span class="text-danger"></span></label>
                <input type="text" class="form-control" id="m_SubAddr" name="m_SubAddr" placeholder="상세주소" value='${memberInfo.m_SubAddr}'>
              </div>
            </div>


	<!--  다른 주소로 배송 -->
            <div class="form-group">
              <label for="c_ship_different_address" class="text-black" data-toggle="collapse" href="#ship_different_address" role="button" aria-expanded="false" aria-controls="ship_different_address"><input type="checkbox" value="1" id="c_ship_different_address"> 다른 배송지로 </label>
              <div class="collapse" id="ship_different_address">
                <div class="py-2">

 			<div class="form-group row">
              <div class="col-md-12">
                <label for="c_fname" class="text-black">Name <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="c_fname" name="c_fname" placeholder="Name">
              </div>

            </div>

            <div class="form-group row">
              <div class="col-md-12">
                <label for="c_email" class="text-black">E - Mail </label>
                <input type="email" class="form-control" id="c_email" name="c_email" placeholder="E - Mail">
              </div>
            </div>

            <div class="form-group row">
              <div class="col-md-12">
                <label for="c_address" class="text-black">Phone Number <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="c_tel" name="c_tel" placeholder="Phone Number">
              </div>
            </div>
          


            <div class="form-group row">
              <div class="col-md-6">
                <label for="sample6_postcode" class="text-black" > <span class="text-danger"></span></label>
                <input type="text" class="form-control" id="sample6_postcode" name="sample6_postcode" placeholder="우편번호">
              </div>
              
            <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>  
            </div>
            
			
            <div class="form-group row mb-5">
              <div class="col-md-12">
                <label for="sample6_address" class="text-black"><span class="text-danger"></span></label>
                <input type="text" class="form-control" id="sample6_address" name="sample6_address" placeholder="주소" >
              </div>
              <div class="col-md-12">
                <label for="sample6_detailAddress" class="text-black"><span class="text-danger"></span></label>
                <input type="text" class="form-control" id="sample6_detailAddress" name="sample6_detailAddress" placeholder="상세주소">
              </div>
            </div>
                </div>

              </div>
            </div>
          </div>
        </div>

        
        
        <div class="col-md-6">
          <div class="row mb-5">
            <div class="col-md-12">
              <h2 class="h3 mb-3 text-black">Your Order</h2>
              <div class="p-3 p-lg-5 border">
              
             
                <table class="table site-block-order-table mb-5">
                  <thead>
                    <th>Product</th>
                    <th>Total</th>
                  </thead>
                   <c:forEach items="${goodsList}" var="goods">
                  <tbody>

                    <tr>
                      <td>${goods.g_Name}<strong class="mx-2">x</strong> ${goods.c_Cnt}</td>
                      <td class='totalPrice'>${goods.g_Price * goods.c_Cnt}</td>
                    </tr>
                  </c:forEach>
                    <tr>
                      <td class="text-black font-weight-bold"><strong>Order Total</strong></td>
                      <td class="text-black font-weight-bold"  id='totalPrices'><strong></strong></td>
                    </tr>
                  </tbody>
                  
                </table>

                 

                <div class="border p-3 mb-3">
                  <h3 class="h6 mb-0"><a href="thankyou.do" class="d-block" role="button" aria-expanded="false" aria-controls="collapsebank">카드결제</a></h3>
                </div>

                <div class="border p-3 mb-3">
                <a href="thankyou.do">
                  <h3 class="h6 mb-0"><a href="thankyou.do"class="d-block" role="button" aria-expanded="false" aria-controls="collapsecheque">계좌이체</a></h3>
                </a>
                </div>

                <div class="border p-3 mb-5">
                  <h3 class="h6 mb-0"><a href="thankyou.do" class="d-block"  role="button" aria-expanded="false" aria-controls="collapsepaypal">휴대폰결제</a></h3>
                </div>

                <div class="form-group">
                  <input type="submit" class="btn btn-black btn-lg py-3 btn-block" value='결제 하기'>
                </div>

              </div>
            </div>
          </div>

        </div>
      </div>
      </form>

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
</body>

</html>
