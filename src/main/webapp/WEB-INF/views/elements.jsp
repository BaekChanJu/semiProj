<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
						<!-- Vintagure 카테고리 -->
						<li class="has-children">
							<a href="shop.jsp">Vintagere</a>
							<ul class="dropdown">
								<li><a href="#">OUTER</a></li>
								<li><a href="#">TOP</a></li>
								<li><a href="#">BOTTOM</a></li>
								<li><a href="#">SHOES</a></li>
								<li><a href="#">ACC</a></li>
							</ul>
						</li>
						<!-- PAGES 카테고리 -->
						<li class="has-children">
							<a href="shop.jsp">PAGES</a>
							<ul class="dropdown">
								<li><a href="#">Q & A</a></li>
								<li><a href="#">STYLE REVIEW</a></li>
								<li><a href="#">자유 게시판</a></li>
							</ul>
						</li>
						<!-- Pages 카테고리 -->
						<li class="has-children">
							<a href="#">MEN</a>
							<ul class="dropdown">
								<li><a href="#">OUTER</a></li>
								<li><a href="#">TOP</a></li>
								<li><a href="#">BOTTOM</a></li>
								<li><a href="#">SHOES</a></li>
								<li><a href="#">ACC</a></li>
								<!-- Pages 카테고리 안 Menu Two 세부카테고리 -->
								<li class="has-children">
									<a href="#">Menu Two</a>
									<ul class="dropdown">
										<li><a href="#">T-Shirt</a></li>
										<li><a href="#">Underware</a></li>
										<li><a href="#">Clothing</a></li>
										<li><a href="#">Watches</a></li>
										<li><a href="#">Shoes</a></li>

									</ul>
								</li>
							</ul>
						</li>
						<li class="has-children">
							<a href="shop.jsp">WOMEN</a>
							<ul class="dropdown">
								<li><a href="#">OUTER</a></li>
								<li><a href="#">TOP</a></li>
								<li><a href="#">BOTTOM</a></li>
								<li><a href="#">SHOES</a></li>
								<li><a href="#">ACC</a></li>
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
          <h1>Elements</h1>  
          <p class="mb-4"><a href="index.html">Home</a> / <strong>Elements</strong></p>        
        </div>
      </div>
    </div>
  </div>

  

  <div class="untree_co-section">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="custom-block" data-aos="fade-up">
            <h2 class="section-title">Accordion</h2>
            <div class="custom-accordion" id="accordion_1">
              <div class="accordion-item">
                <h2 class="mb-0">
                  <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">How to download and register?</button>
                </h2>

                <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion_1">
                  <div class="accordion-body">
                    Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.
                  </div>
                </div>
              </div> <!-- .accordion-item -->

              <div class="accordion-item">
                <h2 class="mb-0">
                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">How to create your paypal account?</button>
                </h2>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion_1">
                  <div class="accordion-body">
                    A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.
                  </div>
                </div>
              </div> <!-- .accordion-item -->
              <div class="accordion-item">
                <h2 class="mb-0">
                  <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">How to link your paypal and bank account?</button>
                </h2>

                <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion_1">
                  <div class="accordion-body">
                    When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.
                  </div>
                </div>

              </div> <!-- .accordion-item -->

            </div>
          </div> <!-- END .custom-block -->
          <div class="custom-block" data-aos="fade-up">
            <h2 class="section-title">Gallery</h2>
            <div class="row gutter-v2 gallery">
              <div class="col-4">
                <a href="resources/images/gal_1.jpg" class="gal-item" data-fancybox="gal"><img src="images/gal_1.jpg" alt="Image" class="img-fluid"></a>
              </div>
              <div class="col-4">
                <a href="resources/images/gal_2.jpg" class="gal-item" data-fancybox="gal"><img src="images/gal_2.jpg" alt="Image" class="img-fluid"></a>
              </div>
              <div class="col-4">
                <a href="resources/images/gal_3.jpg" class="gal-item" data-fancybox="gal"><img src="images/gal_3.jpg" alt="Image" class="img-fluid"></a>
              </div>
              <div class="col-4">
                <a href="resources/images/gal_4.jpg" class="gal-item" data-fancybox="gal"><img src="images/gal_4.jpg" alt="Image" class="img-fluid"></a>
              </div>
              <div class="col-4">
                <a href="resources/images/gal_5.jpg" class="gal-item" data-fancybox="gal"><img src="images/gal_5.jpg" alt="Image" class="img-fluid"></a>
              </div>
              <div class="col-4">
                <a href="resources/images/gal_6.jpg" class="gal-item" data-fancybox="gal"><img src="images/gal_6.jpg" alt="Image" class="img-fluid"></a>
              </div>
            </div>
          </div> <!-- END .custom-block -->

          <div class="custom-block" data-aos="fade-up">
            <h2 class="section-title">Video</h2>

            <a href="https://vimeo.com/342333493" data-fancybox class="video-wrap">
              <span class="play-wrap"><span class="icon-play"></span></span>
              <img src="images/hero_bg_6.jpg" alt="Image" class="img-fluid rounded">
            </a>
          </div> <!-- END .custom-block -->

          <div class="custom-block" data-aos="fade-up">
            <h2 class="section-title mb-3">Check Unordered List</h2>

            <ul class="list-unstyled ul-check primary">
              <li>Far far away, behind the word</li>
              <li>Far from the countries Vokalia</li>
              <li>Separated they live in Bookmarksgrove</li>
            </ul>

          </div> <!-- END .custom-block -->

        </div> <!-- /.col-lg-6 -->
        <div class="col-lg-6">
          <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
            <h2 class="section-title">Form</h2>
            <form class="contact-form">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="" for="fname">First name</label>
                    <input type="text" class="form-control" id="fname">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="" for="lname">Last name</label>
                    <input type="text" class="form-control" id="lname">
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="" for="email">Email address</label>
                <input type="email" class="form-control" id="email" aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
              </div>
              <div class="form-group">
                <label class="" for="password">Password</label>
                <input type="password" class="form-control" id="password">
              </div>
              <div class="form-group">
                <label class="" for="message">Message</label>
                <textarea name="" class="form-control" id="message" cols="30" rows="5"></textarea>
              </div>
              <div class="form-group">
                <label class="" for="select">Select</label>

                <select name="" id="select" class="custom-select">
                  <option value="">Untree.co</option>
                  <option value="">Offers high quality free template</option>
                </select>

              </div>
              <div class="form-group">
                <label class="control control--checkbox">
                  <span class="caption">Custom checkbox</span>
                  <input type="checkbox" checked="checked" />
                  <div class="control__indicator"></div>
                </label>
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>

          <div class="custom-block" data-aos="fade-up">
            <h2 class="section-title">Social Icons</h2>
            <ul class="list-unstyled social-icons light">
              <li><a href="#"><span class="icon-facebook"></span></a></li>
              <li><a href="#"><span class="icon-twitter"></span></a></li>
              <li><a href="#"><span class="icon-linkedin"></span></a></li>
              <li><a href="#"><span class="icon-google"></span></a></li>
              <li><a href="#"><span class="icon-play"></span></a></li>
            </ul>
          </div> <!-- END .custom-block -->

          <div class="custom-block" data-aos="fade-up" data-aos-delay="100">
            <h2 class="section-title text-center">Slider</h2>
            <div class="owl-single owl-carousel no-nav">
              <div class="testimonial mx-auto">
                <figure class="img-wrap">
                  <img src="resources/images/person_2.jpg" alt="Image" class="img-fluid">
                </figure>
                <h3 class="name text-black">Adam Aderson</h3>
                <blockquote>
                  <p>&ldquo;There live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
                </blockquote>
              </div>

              <div class="testimonial mx-auto">
                <figure class="img-wrap">
                  <img src="resources/images/person_3.jpg" alt="Image" class="img-fluid">
                </figure>
                <h3 class="name text-black">Lukas Devlin</h3>
                <blockquote>
                  <p>&ldquo;There live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
                </blockquote>
              </div>

              <div class="testimonial mx-auto">
                <figure class="img-wrap">
                  <img src="resources/images/person_4.jpg" alt="Image" class="img-fluid">
                </figure>
                <h3 class="name text-black">Kayla Bryant</h3>
                <blockquote>
                  <p>&ldquo;There live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
                </blockquote>
              </div>

            </div>
          </div>
        </div> <!-- /.col-lg-6 -->
      </div> <!-- /.row -->    
    </div> <!-- /.container -->  
  </div> <!-- /.untree_co-section -->

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