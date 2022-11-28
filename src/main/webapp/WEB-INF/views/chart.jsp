<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<% String pjName = "/semiProject"; %>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	 
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
  

	<!-- title -->
	<title>월별매출</title>
	
	<!-- 아래 2개 임포트가 중요함 -->
	<!-- jquery -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- chart -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.6.0/chart.min.js"></script> 
	
	
	<script type="text/javascript">
	
	$(function(){ 
	
		$.getJSON("sales/"+new Date().getFullYear()).done( //use to be year variable
		function(data){ 
			console.log(data); 
			var ctx=$("#ctx").get(0).getContext('2d'); 
			var labels=data.map(obj=>obj.MONTH); 
			var datas=data.map(obj=>obj.SALES); 
			var bgColor=['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)' ]; 
			var borderColor=[ 'rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)' ]; 
			var myChart = new Chart(ctx, { 
				type: 'line', 
				data: { labels: labels , datasets: [{ label: '월별매출그래프', data: datas, backgroundColor:bgColor, borderColor:borderColor, borderWidth: 1 }]
				}
			}); 
		}
		)
		
	}) 
	</script>

</head>
</body>
<body>
							<h2>monthly sales</h2>
						<div id ="chart"> 
							<canvas id="ctx"></canvas> 
						</div> 
						
						<nav class="site-nav mb-5"  >
		<div class="sticky-nav js-sticky-header" >
		
			<!--  메인 헤더 우측 상표 홈버튼 -->
			
			<div class="container position-relative" >
			
				<div class="site-navigation text-center dark">
					<a href="index.do" class="logo menu-absolute m-0" >Vintagere<span class="text-primary">.</span></a>

				<!--  메인 헤더 우측 상표 홈버튼 -->
			<div class="container position-relative">
				<div class="site-navigation text-center dark">
					<a href="<%=pjName%>/index.do" class="logo menu-absolute m-0"></a>

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
								<a href="<%=pjName%>/main/productList.do?sc_Id=11&ct_Id=20">MAN</a>
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
							<a href="<%=pjName%>/main/productList.do?sc_Id=11&ct_Id=30">WOMAN</a>
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
					
					
						
		
	
	
</body>
</html>