<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-LEARNING PLATEFORM</title>
</head>
<body>

	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary"
			style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->


	<!-- Navbar Start -->
	<nav
		class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
		<a href="/user/home"
			class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h2 class="m-0 text-primary">
				<i class="fa fa-book me-3"></i>E-Learning
			</h2>
		</a>
		<button type="button" class="navbar-toggler me-4"
			data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0">
				<a href="/user/home" class="nav-item nav-link">Home</a> <a
					href="/user/about" class="nav-item nav-link">About</a> <a
					href="/user/course" class="nav-item nav-link">Courses</a> <a
					href="/user/contact" class="nav-item nav-link">Contact</a>


				<div class="nav-item dropdown">
					<a href="/user/login" class="nav-item nav-link">Login</a>

				</div>


				
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown">Logout</a>
					<div class="dropdown-menu fade-down m-0">
						<a href="logout" class="dropdown-item">User Logout</a> <a
							href="logout" class="dropdown-item">Admin Logout</a>
						<!-- <a href="404" class="dropdown-item">404 Page</a> -->
					</div>
				</div>


				<a href="/user/register" class="nav-item nav-link">Register</a>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle"
						data-bs-toggle="dropdown">Pages</a>
					<div class="dropdown-menu fade-down m-0">
						<a href="/user/team" class="dropdown-item">Our Team</a> <a
							href="/user/testimonial" class="dropdown-item">Testimonial</a>
						<!-- <a href="404" class="dropdown-item">404 Page</a> -->
					</div>
				</div>

			</div>
			<a href="register"
				class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Join Now<i
				class="fa fa-arrow-right ms-3"></i></a>
		</div>
	</nav>
	<!-- Navbar End -->


	<!-- Header Start -->
	<div class="container-fluid bg-primary py-5 mb-5 page-header">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h1 class="display-3 text-white animated slideInDown">About Us</h1>
					<p class="text-white ">At E-Learning, we’re revolutionizing the
						way people learn, grow, and achieve their dreams. Whether you're a
						student, professional, or lifelong learner, our platform offers
						innovative tools and resources to help you excel.</p>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb justify-content-center">
							<li class="breadcrumb-item "><a class="text-white active"
								href="home">Home</a></li>
							<!-- <li class="breadcrumb-item"><a class="text-white" href="pages">Pages</a></li> -->
							<li class="breadcrumb-item"><a class="text-white active"
								href="about">About</a></li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->


</body>
</html>