<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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



	
<!-- 메인 이름 -->
  <div class="page-heading bg-light">
    <div class="container">
      <div class="row align-items-end text-center">
        <div class="col-lg-7 mx-auto">
          <h1>관리자 QnA게시판</h1>  
          <p class="mb-4"><a href="index.jsp">Home</a> / <strong>QnA</strong></p>        
        </div>
      </div>
    </div>
  </div>
<!-- 게시판 목록 -->
  <div class="untree_co-section pt-3">
    <div class="container">

      <div class="row align-items-center mb-5">
        <div class="col-lg-8">
      <div class="row">
        <div class="col-md-3">
          <ul class="list-unstyled categories">
             <li><a href="insertGoods.do">상품 등록</a></li>
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
            <div class="col-6 col-sm-6 col-md-6 mb-4 col-lg-4">
              <div class="product-item">

			<!-- 게시판 틀 -->
			<form action="">
			<table id = "ins">
			<tr>
				<th bgcolor="white" width="300">번호</th>
				<th bgcolor="white" width="500">제목</th>
				<th bgcolor="white" width="600">작성자</th>
				<th bgcolor="white" width="600">등록일</th>
				<th bgcolor="white" width="300">조회수</th>
			</tr>
			<!-- qna 게시판 목록보기 -->
			<c:forEach items="${qnA}" var="qna">
				<tr>
					<td>${qna.q_id}</td><!-- qna 게시판 번호 -->
					<td align="left"><a href="qnalistadmin.do?q_id=${qna.q_id}">${qna.q_title}</a></td><!-- qna 게시판 제목 -->
					<td>${qna.m_id}</td><!-- qna 게시판 회원 아이디 -->
					<td>"${qna.q_date}</td><!-- qna 게시판 작성 날짜 -->
					<td>${qna.q_cnt}</td><!-- qna 게시판 조회수 -->
				</tr>
			</c:forEach>
		</table>
		</form>
		
		<div class="row mt-5 pb-5">
            <div class="col-lg-12">
              <div class="custom-pagination">
                <ul class="list-unstyled">
                  <li>
                   <c:if test="${pageMaker.prev}">
                    <a href="<%=pjName%>/qnaanswer.do${pageMaker.makeQuery(pageMaker.startPage - 1)}&g_cid =${g_cid}">

                      <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-left" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M5.854 4.646a.5.5 0 0 1 0 .708L3.207 8l2.647 2.646a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 0 1 .708 0z"/>
                        <path fill-rule="evenodd" d="M2.5 8a.5.5 0 0 1 .5-.5h10.5a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
                      </svg>  
                      </c:if>                     
                    </a>
                  </li>
    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    	<li><a href="<%=pjName%>/qnaanswer.do${pageMaker.makeQuery(idx)}&g_cid =${g_cid}">${idx}</a></li>
    </c:forEach>
                  <li>
                     <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                    <a href="<%=pjName%>/qnaanswer.do${pageMaker.makeQuery(pageMaker.endPage + 1)}&g_cid =${g_cid}">
                      <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-arrow-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" d="M10.146 4.646a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L12.793 8l-2.647-2.646a.5.5 0 0 1 0-.708z"/>
                        <path fill-rule="evenodd" d="M2 8a.5.5 0 0 1 .5-.5H13a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 8z"/>
                      </svg>
                      </c:if> 
                    </a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
	

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
    
  </body>

  </html>
