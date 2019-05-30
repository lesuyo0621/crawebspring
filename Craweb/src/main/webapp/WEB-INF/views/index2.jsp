<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Title -->
<title>Craweb</title>

<!-- Favicon -->
<link rel="icon" href="./img/core-img/favicon.ico">

<!-- Stylesheet -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css_main/style.css">


</head>

<body>
	<!-- Preloader -->
	<div id="preloader">
		<div>
			<div class="spinner">
				<div class="double-bounce1"></div>
				<div class="double-bounce2"></div>
			</div>
			<span>Wait, please...</span>
		</div>
	</div>
	<!-- /Preloader -->

	<!-- Top Search Area Start -->
	<div class="top-search-area">
		<div class="modal fade" id="searchModal" tabindex="-1" role="dialog"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-body">
						<!-- Close Button -->
						<button type="button" class="btn close-btn" data-dismiss="modal">
							<i class="fa fa-times"></i>
						</button>
						<!-- Form -->
						<form action="index.html" method="post">
							<input type="search" name="top-search-bar" class="form-control"
								placeholder="Type keywords and hit enter...">
							<button type="submit">Search</button>
						</form>
						<!-- Search Button -->
						<div class="search-btn">
							<i class="icon_search"></i>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Top Search Area End -->

	<!-- Social Share Area Start -->
	<div class="razo-social-share-area">
		<a href="#" class="facebook"><i class="fa fa-facebook"></i></a> <a
			href="#" class="twitter"><i class="fa fa-twitter"></i></a> <a
			href="#" class="pinterest"><i class="fa fa-pinterest"></i></a> <a
			href="#" class="instagram"><i class="fa fa-instagram"></i></a> <a
			href="#" class="youtube"><i class="fa fa-youtube-play"></i></a> <a
			href="#" class="ss-close-btn"><i class="arrow_right"></i></a>
	</div>
	<!-- Social Share Area End -->
	<!-- Header Area Start -->
	<header class="header-area">
		<!-- Main Header Start -->
		<div class="main-header-area">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- Classy Menu -->
					<nav class="classy-navbar justify-content-between" id="razoNav">

						<!-- Logo -->
						<a class="nav-brand" href="index.html"><img
							src="${pageContext.request.contextPath}/resources/img/core-img/logo5.png"
							alt=""></a>

						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>

						<!-- Menu -->
						<div class="classy-menu">
							<!-- Menu Close Button -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- Nav Start -->
							<div class="classynav">
								<ul id="nav">
									<li><a href="./index.html">Home</a></li>
									<li><a href="#">Pages</a>
										<ul class="dropdown">
											<li><a href="./index.html">- Home</a></li>
											<li><a href="./charts.html">- Charts</a></li>
											<li><a href="./single-charts.html">- Charts Details</a></li>
											<li><a href="./podcast.html">- Podcast</a></li>
											<li><a href="./single-podcast.html">- Podcast
													Details</a></li>
											<li><a href="./show.html">- Show</a></li>
											<li><a href="./events.html">- Event</a></li>
											<li><a href="./blog.html">- Blog</a></li>
											<li><a href="./single-blog.html">- Blog Details</a></li>
											<li><a href="#">- Dropdown</a>
												<ul class="dropdown">
													<li><a href="#">- Dropdown Item</a></li>
													<li><a href="#">- Dropdown Item</a></li>
													<li><a href="#">- Dropdown Item</a></li>
													<li><a href="#">- Dropdown Item</a></li>
												</ul></li>
										</ul></li>
									<li><a href="./show.html">Shows</a></li>
									<li><a href="./charts.html">Charts</a></li>
									<li><a href="./podcast.html">Podcasts</a></li>
									<li><a href="#">Mega</a>
										<div class="megamenu">
											<ul class="single-mega cn-col-4">
												<li><a href="./index.html">- Home</a></li>
												<li><a href="./charts.html">- Charts</a></li>
												<li><a href="./single-charts.html">- Charts Details</a></li>
												<li><a href="./podcast.html">- Podcast</a></li>
												<li><a href="./single-podcast.html">- Podcast
														Details</a></li>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="./show.html">- Show</a></li>
												<li><a href="./events.html">- Event</a></li>
												<li><a href="./blog.html">- Blog</a></li>
												<li><a href="./single-blog.html">- Blog Details</a></li>
												<li><a href="./index.html">- Home</a></li>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="./charts.html">- Charts</a></li>
												<li><a href="./single-charts.html">- Charts Details</a></li>
												<li><a href="./podcast.html">- Podcast</a></li>
												<li><a href="./single-podcast.html">- Podcast
														Details</a></li>
												<li><a href="./show.html">- Show</a></li>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="./show.html">- Show</a></li>
												<li><a href="./events.html">- Event</a></li>
												<li><a href="./blog.html">- Blog</a></li>
												<li><a href="./single-blog.html">- Blog Details</a></li>
												<li><a href="./index.html">- Home</a></li>
											</ul>
										</div></li>
									<li><a href="./events.html">Events</a></li>
									<li><a href="./blog.html">Blog</a></li>
								</ul>
								<!-- SearchBar -->
								<form id="content">
									<input type="text" name="input" class="input" id="search-input">
									<button type="reset" class="search" id="search-btn"></button>
								</form>

								<!-- Share Icon -->
								<div class="social-share-icon">
									<i class="social_share"></i>
								</div>

								<!-- Search Icon -->
								<div class="search-icon" data-toggle="modal"
									data-target="#searchModal">
									<i class="icon_search"></i>
								</div>
							</div>
							<!-- Nav End -->
						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- Header Area End -->

	<!-- Latest News Area Start -->
	<section
		class="razo-latest-news-area section-padding-80 bg-overlay bg-img jarallax"
		style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/32.jpg);">
		<div class="container">
			<div class="row align-items-end">
				<!-- Section Heading -->
				<div class="col-sm-6">
					<div class="section-heading white">
						<h2>Latest News</h2>
					</div>
				</div>
				<!-- Show All Button -->
				<div class="col-sm-6">
					<div class="show-all-button mb-50 text-right">
						<a href="#" class="btn show-all-btn">Show All Blog</a>
					</div>
				</div>
			</div>
		</div>

		<!-- Razo Latest News Slide -->
		<div class="razo-latest-news-slide owl-carousel">

			<!-- Single Latest News Area -->
			<div class="razo-single-latest-news-area bg-overlay bg-img"
				style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/22.jpg);">
				<!-- Post Content -->
				<div class="post-content">
					<a href="#" class="post-title">The light and music exposition
						hits los angeles</a>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam.</p>
				</div>
				<!-- Post Date -->
				<div class="post-date">
					<h2>24</h2>
					<p>March</p>
				</div>
				<!-- Read More -->
				<div class="read-more-btn">
					<a href="#" class="btn">Read More <i
						class="fa fa-angle-double-right" aria-hidden="true"></i></a>
				</div>
			</div>

			<!-- Single Latest News Area -->
			<div class="razo-single-latest-news-area bg-overlay˛r bg-img"
				style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/23.jpg);">
				<!-- Post Content -->
				<div class="post-content">
					<a href="#" class="post-title">The light and music exposition
						hits los angeles</a>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam.</p>
				</div>
				<!-- Post Date -->
				<div class="post-date">
					<h2>24</h2>
					<p>March</p>
				</div>
				<!-- Read More -->
				<div class="read-more-btn">
					<a href="#" class="btn">Read More <i
						class="fa fa-angle-double-right" aria-hidden="true"></i></a>
				</div>
			</div>

			<!-- Single Latest News Area -->
			<div class="razo-single-latest-news-area bg-overlay bg-img"
				style="background-image: url(${pageContext.request.contextPath}/resources/img/bg-img/24.jpg);">
				<!-- Post Content -->
				<div class="post-content">
					<a href="#" class="post-title">The light and music exposition
						hits los angeles</a>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam.</p>
				</div>
				<!-- Post Date -->
				<div class="post-date">
					<h2>24</h2>
					<p>March</p>
				</div>
				<!-- Read More -->
				<div class="read-more-btn">
					<a href="#" class="btn">Read More <i
						class="fa fa-angle-double-right" aria-hidden="true"></i></a>
				</div>
			</div>

		</div>
	</section>
	<!-- Latest News Area End -->



	<!-- Latest Podcast Area Start -->
	<section class="razo-latest-podcast-area section-padding-80">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<!-- Section Heading -->
					<div class="section-heading">
						<h2></h2>
					</div>
				</div>
			</div>

			<div class="row">

				<!-- Single Podcast Area -->
				<div class="col-12 col-md-6 col-xl-3">
					<div class="single-podcast-area mb-30 wow fadeInUp"
						data-wow-delay="300ms">
						<!-- Thumbnail -->
						<div class="podcast-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/bg-img/71.jpg"
								alt="">
							<div class="like-comment">
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i>
									2.1k</a> <a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									3.6k</a>
							</div>
						</div>
						<!-- Content -->

						<div class="podcast-content">
							<div class="podcast-meta">
								<a href="#"><i class="icon_calendar"></i> July 23, 2014</a> <a
									href="#"><i class="icon_clock_alt"></i> 36 min</a>
							</div>
							<h6>In the medical journal The Lancet</h6>
							<div class="border-line"></div>
						</div>
					</div>
				</div>
				<!-- Single Podcast Area -->
				<div class="col-12 col-md-6 col-xl-3">
					<div class="single-podcast-area mb-30 wow fadeInUp"
						data-wow-delay="300ms">
						<!-- Thumbnail -->
						<div class="podcast-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/bg-img/71.jpg"
								alt="">
							<div class="like-comment">
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i>
									2.1k</a> <a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									3.6k</a>
							</div>
						</div>
						<!-- Content -->

						<div class="podcast-content">
							<div class="podcast-meta">
								<a href="#"><i class="icon_calendar"></i> July 23, 2014</a> <a
									href="#"><i class="icon_clock_alt"></i> 36 min</a>
							</div>
							<h6>In the medical journal The Lancet</h6>
							<div class="border-line"></div>
						</div>
					</div>
				</div>
				<!-- Single Podcast Area -->
				<div class="col-12 col-md-6 col-xl-3">
					<div class="single-podcast-area mb-30 wow fadeInUp"
						data-wow-delay="300ms">
						<!-- Thumbnail -->
						<div class="podcast-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/bg-img/71.jpg"
								alt="">
							<div class="like-comment">
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i>
									2.1k</a> <a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									3.6k</a>
							</div>
						</div>
						<!-- Content -->

						<div class="podcast-content">
							<div class="podcast-meta">
								<a href="#"><i class="icon_calendar"></i> July 23, 2014</a> <a
									href="#"><i class="icon_clock_alt"></i> 36 min</a>
							</div>
							<h6>In the medical journal The Lancet</h6>
							<div class="border-line"></div>
						</div>
					</div>
				</div>
				<!-- Single Podcast Area -->
				<div class="col-12 col-md-6 col-xl-3">
					<div class="single-podcast-area mb-30 wow fadeInUp"
						data-wow-delay="300ms">
						<!-- Thumbnail -->
						<div class="podcast-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/bg-img/71.jpg"
								alt="">
							<div class="like-comment">
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i>
									2.1k</a> <a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									3.6k</a>
							</div>
						</div>
						<!-- Content -->

						<div class="podcast-content">
							<div class="podcast-meta">
								<a href="#"><i class="icon_calendar"></i> July 23, 2014</a> <a
									href="#"><i class="icon_clock_alt"></i> 36 min</a>
							</div>
							<h6>In the medical journal The Lancet</h6>
							<div class="border-line"></div>
						</div>
					</div>
				</div>
				<!-- Single Podcast Area -->
				<div class="col-12 col-md-6 col-xl-3">
					<div class="single-podcast-area mb-30 wow fadeInUp"
						data-wow-delay="300ms">
						<!-- Thumbnail -->
						<div class="podcast-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/bg-img/71.jpg"
								alt="">
							<div class="like-comment">
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i>
									2.1k</a> <a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									3.6k</a>
							</div>
						</div>
						<!-- Content -->

						<div class="podcast-content">
							<div class="podcast-meta">
								<a href="#"><i class="icon_calendar"></i> July 23, 2014</a> <a
									href="#"><i class="icon_clock_alt"></i> 36 min</a>
							</div>
							<h6>In the medical journal The Lancet</h6>
							<div class="border-line"></div>
						</div>
					</div>
				</div>
				<!-- Single Podcast Area -->
				<div class="col-12 col-md-6 col-xl-3">
					<div class="single-podcast-area mb-30 wow fadeInUp"
						data-wow-delay="300ms">
						<!-- Thumbnail -->
						<div class="podcast-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/bg-img/71.jpg"
								alt="">
							<div class="like-comment">
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i>
									2.1k</a> <a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									3.6k</a>
							</div>
						</div>
						<!-- Content -->

						<div class="podcast-content">
							<div class="podcast-meta">
								<a href="#"><i class="icon_calendar"></i> July 23, 2014</a> <a
									href="#"><i class="icon_clock_alt"></i> 36 min</a>
							</div>
							<h6>In the medical journal The Lancet</h6>
							<div class="border-line"></div>
						</div>
					</div>
				</div>
				<!-- Single Podcast Area -->
				<div class="col-12 col-md-6 col-xl-3">
					<div class="single-podcast-area mb-30 wow fadeInUp"
						data-wow-delay="300ms">
						<!-- Thumbnail -->
						<div class="podcast-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/bg-img/71.jpg"
								alt="">
							<div class="like-comment">
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i>
									2.1k</a> <a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									3.6k</a>
							</div>
						</div>
						<!-- Content -->

						<div class="podcast-content">
							<div class="podcast-meta">
								<a href="#"><i class="icon_calendar"></i> July 23, 2014</a> <a
									href="#"><i class="icon_clock_alt"></i> 36 min</a>
							</div>
							<h6>In the medical journal The Lancet</h6>
							<div class="border-line"></div>
						</div>
					</div>
				</div>
				<!-- Single Podcast Area -->
				<div class="col-12 col-md-6 col-xl-3">
					<div class="single-podcast-area mb-30 wow fadeInUp"
						data-wow-delay="300ms">
						<!-- Thumbnail -->
						<div class="podcast-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/bg-img/71.jpg"
								alt="">
							<div class="like-comment">
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i>
									2.1k</a> <a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									3.6k</a>
							</div>
						</div>
						<!-- Content -->

						<div class="podcast-content">
							<div class="podcast-meta">
								<a href="#"><i class="icon_calendar"></i> July 23, 2014</a> <a
									href="#"><i class="icon_clock_alt"></i> 36 min</a>
							</div>
							<h6>In the medical journal The Lancet</h6>
							<div class="border-line"></div>
						</div>
					</div>
				</div>
				<!-- Single Podcast Area -->
				<div class="col-12 col-md-6 col-xl-3">
					<div class="single-podcast-area mb-30 wow fadeInUp"
						data-wow-delay="300ms">
						<!-- Thumbnail -->
						<div class="podcast-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/bg-img/71.jpg"
								alt="">
							<div class="like-comment">
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i>
									2.1k</a> <a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									3.6k</a>
							</div>
						</div>
						<!-- Content -->

						<div class="podcast-content">
							<div class="podcast-meta">
								<a href="#"><i class="icon_calendar"></i> July 23, 2014</a> <a
									href="#"><i class="icon_clock_alt"></i> 36 min</a>
							</div>
							<h6>In the medical journal The Lancet</h6>
							<div class="border-line"></div>
						</div>
					</div>
				</div>
				<!-- Single Podcast Area -->
				<div class="col-12 col-md-6 col-xl-3">
					<div class="single-podcast-area mb-30 wow fadeInUp"
						data-wow-delay="300ms">
						<!-- Thumbnail -->
						<div class="podcast-thumb">
							<img
								src="${pageContext.request.contextPath}/resources/img/bg-img/71.jpg"
								alt="">
							<div class="like-comment">
								<a href="#"><i class="fa fa-comments-o" aria-hidden="true"></i>
									2.1k</a> <a href="#"><i class="fa fa-eye" aria-hidden="true"></i>
									3.6k</a>
							</div>
						</div>
						<!-- Content -->

						<div class="podcast-content">
							<div class="podcast-meta">
								<a href="#"><i class="icon_calendar"></i> July 23, 2014</a> <a
									href="#"><i class="icon_clock_alt"></i> 36 min</a>
							</div>
							<h6>In the medical journal The Lancet</h6>
							<div class="border-line"></div>
						</div>
					</div>
				</div>


			</div>

			<div class="row">
				<div class="col-12">
					<div class="border-line"></div>
				</div>
			</div>
		</div>

	</section>
	<div class="border-line"></div>
	<!-- Latest Podcast Area End -->




	<!-- Copywrite Text -->
	<div class="copywrite-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<!-- Copywrite Text -->
					<div class="copywrite-text">
						<p>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</footer>
	<!-- Footer Area End -->

	<!-- All JS Files -->

	<!-- jQuery -->

	<script src="<c:url value = "/resources/js/jquery.min.js"/>"></script>
	<!-- Popper -->
	<script src="<c:url value = "/resources/js/popper.min.js"/>"></script>
	<!-- Bootstrap -->
	<script src="<c:url value = "/resources/js/bootstrap.min.js"/>"></script>
	<!-- All Plugins -->
	<script src="<c:url value = "/resources/js/razo.bundle.js"/>"></script>
	<!-- Active -->
	<script src="<c:url value = "/resources/js/default-assets/active.js"/>"></script>

</body>

</html>