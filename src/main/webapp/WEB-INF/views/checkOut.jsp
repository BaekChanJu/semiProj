<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

 <% String pjName = "/SemiProject"; %>

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
					<a href="index.jsp" class="logo menu-absolute m-0">Vintagere<span class="text-primary">.</span></a>

					<!--  메인 헤더 중앙 카테고리  -->
					<ul class="js-clone-nav pl-0 d-none d-lg-inline-block site-menu">
					
						<!-- Vintagure 카테고리  -->
							<!-- 맨위 메인이 되는 Vintagere,PAGES 같은 메인카테고리 누르면 맨처음 페이지 나오게합니다!-->
						<li class="has-children">
							<a href="mainOuter.do">Vintagere</a>
							<ul class="dropdown">
								<li><a href="mainOuter.do">OUTER</a></li>
								<li><a href="mainTop.do">TOP</a></li>
								<li><a href="mainBottm.do">BOTTOM</a></li>
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
							<a href="manOuter.do">MEN</a>
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
							<a href="womanOuter.do">WOMEN</a>
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


  <div class="page-heading bg-light">
    <div class="container">
      <div class="row align-items-end text-center">
        <div class="col-lg-7 mx-auto">
          <h1>Checkout</h1>  
          <p class="mb-4"><a href="index.html">Home</a> / <strong>Checkout</strong></p>        
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
      <div class="row">
        <div class="col-md-6 mb-5 mb-md-0">
          <h2 class="h3 mb-3 text-black">Billing Details</h2>
          <div class="p-3 p-lg-5 border">
            <div class="form-group">
              <label for="c_country" class="text-black">Country <span class="text-danger">*</span></label>
              <select id="c_country" class="form-control">
                <option value="1">Select a country</option>    
                <option value="2">bangladesh</option>    
                <option value="3">Algeria</option>    
                <option value="4">Afghanistan</option>    
                <option value="5">Ghana</option>    
                <option value="6">Albania</option>    
                <option value="7">Bahrain</option>    
                <option value="8">Colombia</option>    
                <option value="9">Dominican Republic</option>    
              </select>
            </div>
            <div class="form-group row">
              <div class="col-md-6">
                <label for="c_fname" class="text-black">First Name <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="c_fname" name="c_fname">
              </div>
              <div class="col-md-6">
                <label for="c_lname" class="text-black">Last Name <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="c_lname" name="c_lname">
              </div>
            </div>

            <div class="form-group row">
              <div class="col-md-12">
                <label for="c_companyname" class="text-black">Company Name </label>
                <input type="text" class="form-control" id="c_companyname" name="c_companyname">
              </div>
            </div>

            <div class="form-group row">
              <div class="col-md-12">
                <label for="c_address" class="text-black">Address <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="c_address" name="c_address" placeholder="Street address">
              </div>
            </div>

            <div class="form-group">
              <input type="text" class="form-control" placeholder="Apartment, suite, unit etc. (optional)">
            </div>

            <div class="form-group row">
              <div class="col-md-6">
                <label for="c_state_country" class="text-black">State / Country <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="c_state_country" name="c_state_country">
              </div>
              <div class="col-md-6">
                <label for="c_postal_zip" class="text-black">Posta / Zip <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="c_postal_zip" name="c_postal_zip">
              </div>
            </div>

            <div class="form-group row mb-5">
              <div class="col-md-6">
                <label for="c_email_address" class="text-black">Email Address <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="c_email_address" name="c_email_address">
              </div>
              <div class="col-md-6">
                <label for="c_phone" class="text-black">Phone <span class="text-danger">*</span></label>
                <input type="text" class="form-control" id="c_phone" name="c_phone" placeholder="Phone Number">
              </div>
            </div>

            <div class="form-group">
              <label for="c_create_account" class="text-black" data-toggle="collapse" href="#create_an_account" role="button" aria-expanded="false" aria-controls="create_an_account"><input type="checkbox" value="1" id="c_create_account"> Create an account?</label>
              <div class="collapse" id="create_an_account">
                <div class="py-2">
                  <p class="mb-3">Create an account by entering the information below. If you are a returning customer please login at the top of the page.</p>
                  <div class="form-group">
                    <label for="c_account_password" class="text-black">Account Password</label>
                    <input type="email" class="form-control" id="c_account_password" name="c_account_password" placeholder="">
                  </div>
                </div>
              </div>
            </div>


            <div class="form-group">
              <label for="c_ship_different_address" class="text-black" data-toggle="collapse" href="#ship_different_address" role="button" aria-expanded="false" aria-controls="ship_different_address"><input type="checkbox" value="1" id="c_ship_different_address"> Ship To A Different Address?</label>
              <div class="collapse" id="ship_different_address">
                <div class="py-2">

                  <div class="form-group">
                    <label for="c_diff_country" class="text-black">Country <span class="text-danger">*</span></label>
                    <select id="c_diff_country" class="form-control">
                      <option value="1">Select a country</option>    
                      <option value="2">bangladesh</option>    
                      <option value="3">Algeria</option>    
                      <option value="4">Afghanistan</option>    
                      <option value="5">Ghana</option>    
                      <option value="6">Albania</option>    
                      <option value="7">Bahrain</option>    
                      <option value="8">Colombia</option>    
                      <option value="9">Dominican Republic</option>    
                    </select>
                  </div>


                  <div class="form-group row">
                    <div class="col-md-6">
                      <label for="c_diff_fname" class="text-black">First Name <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" id="c_diff_fname" name="c_diff_fname">
                    </div>
                    <div class="col-md-6">
                      <label for="c_diff_lname" class="text-black">Last Name <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" id="c_diff_lname" name="c_diff_lname">
                    </div>
                  </div>

                  <div class="form-group row">
                    <div class="col-md-12">
                      <label for="c_diff_companyname" class="text-black">Company Name </label>
                      <input type="text" class="form-control" id="c_diff_companyname" name="c_diff_companyname">
                    </div>
                  </div>

                  <div class="form-group row">
                    <div class="col-md-12">
                      <label for="c_diff_address" class="text-black">Address <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" id="c_diff_address" name="c_diff_address" placeholder="Street address">
                    </div>
                  </div>

                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="Apartment, suite, unit etc. (optional)">
                  </div>

                  <div class="form-group row">
                    <div class="col-md-6">
                      <label for="c_diff_state_country" class="text-black">State / Country <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" id="c_diff_state_country" name="c_diff_state_country">
                    </div>
                    <div class="col-md-6">
                      <label for="c_diff_postal_zip" class="text-black">Posta / Zip <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" id="c_diff_postal_zip" name="c_diff_postal_zip">
                    </div>
                  </div>

                  <div class="form-group row mb-5">
                    <div class="col-md-6">
                      <label for="c_diff_email_address" class="text-black">Email Address <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" id="c_diff_email_address" name="c_diff_email_address">
                    </div>
                    <div class="col-md-6">
                      <label for="c_diff_phone" class="text-black">Phone <span class="text-danger">*</span></label>
                      <input type="text" class="form-control" id="c_diff_phone" name="c_diff_phone" placeholder="Phone Number">
                    </div>
                  </div>

                </div>

              </div>
            </div>

            <div class="form-group">
              <label for="c_order_notes" class="text-black">Order Notes</label>
              <textarea name="c_order_notes" id="c_order_notes" cols="30" rows="5" class="form-control" placeholder="Write your notes here..."></textarea>
            </div>

          </div>
        </div>
        <div class="col-md-6">

          <div class="row mb-5">
            <div class="col-md-12">
              <h2 class="h3 mb-3 text-black">Coupon Code</h2>
              <div class="p-3 p-lg-5 border">

                <label for="c_code" class="text-black mb-3">Enter your coupon code if you have one</label>
                <div class="input-group w-75">
                  <input type="text" class="form-control" id="c_code" placeholder="Coupon Code" aria-label="Coupon Code" aria-describedby="button-addon2">
                  <div class="input-group-append">
                    <button class="btn btn-black btn-sm" type="button" id="button-addon2">Apply</button>
                  </div>
                </div>

              </div>
            </div>
          </div>

          <div class="row mb-5">
            <div class="col-md-12">
              <h2 class="h3 mb-3 text-black">Your Order</h2>
              <div class="p-3 p-lg-5 border">
                <table class="table site-block-order-table mb-5">
                  <thead>
                    <th>Product</th>
                    <th>Total</th>
                  </thead>
                  <tbody>
                    <tr>
                      <td>Top Up T-Shirt <strong class="mx-2">x</strong> 1</td>
                      <td>$250.00</td>
                    </tr>
                    <tr>
                      <td>Polo Shirt <strong class="mx-2">x</strong>   1</td>
                      <td>$100.00</td>
                    </tr>
                    <tr>
                      <td class="text-black font-weight-bold"><strong>Cart Subtotal</strong></td>
                      <td class="text-black">$350.00</td>
                    </tr>
                    <tr>
                      <td class="text-black font-weight-bold"><strong>Order Total</strong></td>
                      <td class="text-black font-weight-bold"><strong>$350.00</strong></td>
                    </tr>
                  </tbody>
                </table>

                <div class="border p-3 mb-3">
                  <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsebank" role="button" aria-expanded="false" aria-controls="collapsebank">Direct Bank Transfer</a></h3>

                  <div class="collapse" id="collapsebank">
                    <div class="py-2">
                      <p class="mb-0">Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                    </div>
                  </div>
                </div>

                <div class="border p-3 mb-3">
                  <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsecheque" role="button" aria-expanded="false" aria-controls="collapsecheque">Cheque Payment</a></h3>

                  <div class="collapse" id="collapsecheque">
                    <div class="py-2">
                      <p class="mb-0">Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                    </div>
                  </div>
                </div>

                <div class="border p-3 mb-5">
                  <h3 class="h6 mb-0"><a class="d-block" data-toggle="collapse" href="#collapsepaypal" role="button" aria-expanded="false" aria-controls="collapsepaypal">Paypal</a></h3>

                  <div class="collapse" id="collapsepaypal">
                    <div class="py-2">
                      <p class="mb-0">Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                    </div>
                  </div>
                </div>

                <div class="form-group">
                  <button class="btn btn-black btn-lg py-3 btn-block" onclick="window.location='thankyou.html'">Place Order</button>
                </div>

              </div>
            </div>
          </div>

        </div>
      </div>
      <!-- </form> -->
    </div>
  </div>


  <div class="site-footer">


		<div class="container">
			<div class="row justify-content-between">
				<div class="col-lg-5">
					<div class="widget mb-4">
						<h3 class="mb-2">Vintagure</h3>
						<p>우리회사 소개 정보 등등등!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
						!!!!!!!!!!!!!!!!!!! 고객센터 시간, 번호, 회사주소, 회사연락처 등등등!!!!!!!!!!!!!!!!!</p>
					</div>
					<!-- <div class="widget">
						<h3>Join our mailing list and receive exclusives</h3>
						<form action="#" class="subscribe">
							<div class="d-flex">
								<input type="email" class="form-control" placeholder="Email address">
								<input type="submit" class="btn btn-black" value="Subscribe">
							</div>
						</form>

						
					</div> -->
				</div>
				
				
<!-- 				<div class="col-lg-2">
					<div class="widget">
						<h3>Help</h3> 
						<ul class="list-unstyled">
							<li><a href="#">Contact us</a></li>
							<li><a href="#">Account</a></li>
							<li><a href="#">Shipping</a></li>
							<li><a href="#">Returns</a></li>
							<li><a href="#">FAQ</a></li>   
						</ul>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="widget">
						<h3>About</h3>
						<ul class="list-unstyled">
							<li><a href="#">About us</a></li>
							<li><a href="#">Press</a></li>
							<li><a href="#">Careers</a></li>
							<li><a href="#">Team</a></li>
							<li><a href="#">FAQ</a></li>   
						</ul>
					</div>
				</div>
				<div class="col-lg-2">
					<div class="widget">
						<h3>Shop</h3>
						<ul class="list-unstyled">
							<li><a href="#">Store</a></li>
							<li><a href="#">Gift Cards</a></li>
							<li><a href="#">Student Discount</a></li>
						</ul>
					</div>
				</div>
				
			</div> -->


			<div class="row mt-5">
				<div class="col-12 text-center">
					<ul class="list-unstyled social">
						<li><a href="#"><span class="icon-facebook"></span></a></li>
						<li><a href="#"><span class="icon-instagram"></span></a></li>
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
