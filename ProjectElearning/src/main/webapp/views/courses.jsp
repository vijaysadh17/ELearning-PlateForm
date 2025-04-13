<!DOCTYPE html>
<%@page import="com.vj.entites.Product"%>
<%@page import="java.util.List"%>
<html lang="en">

<head>
<meta charset="utf-8">
<title>E-LEARNING PLATEFORM</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="/views/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/views/lib/animate/animate.min.css" rel="stylesheet">
<link href="/views/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/views/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/views/css/style.css" rel="stylesheet">
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- Categories Start -->
	<div class="container-xxl py-5 category">
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<h6 class="section-title bg-white text-center text-primary px-3">Categories</h6>
				<h1 class="mb-5">Courses Categories</h1>
			</div>
			<div class="row g-3">
				<div class="col-lg-7 col-md-6">
					<div class="row g-3">
						<div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
							<a class="position-relative d-block overflow-hidden" href="">
								<img class="img-fluid" src="/views/img/cat-1.jpg" alt="">
								<div
									class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3"
									style="margin: 1px;">
									<h5 class="m-0">Web Design</h5>
									<small class="text-primary">49 Courses</small>
								</div>
							</a>
						</div>
						<div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s">
							<a class="position-relative d-block overflow-hidden" href="">
								<img class="img-fluid" src="/views/img/cat-2.jpg" alt="">
								<div
									class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3"
									style="margin: 1px;">
									<h5 class="m-0">Graphic Design</h5>
									<small class="text-primary">49 Courses</small>
								</div>
							</a>
						</div>
						<div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.5s">
							<a class="position-relative d-block overflow-hidden" href="">
								<img class="img-fluid" src="/views/img/cat-3.jpg" alt="">
								<div
									class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3"
									style="margin: 1px;">
									<h5 class="m-0">Video Editing</h5>
									<small class="text-primary">49 Courses</small>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s"
					style="min-height: 350px;">
					<a class="position-relative d-block h-100 overflow-hidden" href="">
						<img class="img-fluid position-absolute w-100 h-100"
						src="/views/img/cat-4.jpg" alt="" style="object-fit: cover;">
						<div
							class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3"
							style="margin: 1px;">
							<h5 class="m-0">Online Marketing</h5>
							<small class="text-primary">49 Courses</small>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Categories Start -->


	<!-- Courses Start -->
	<div class="container-xxl py-5">

		 <div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<h6 class="section-title bg-white text-center text-primary px-3">Courses</h6>
				<h1 class="mb-5">Popular Courses</h1>
			</div>
			<div class="row g-4 justify-content-center">
			<!--	<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
					<div class="course-item bg-light">
						<div class="position-relative overflow-hidden">
							<img class="img-fluid" src="/views/img/course-1.jpg" alt="">
							<div
								class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
								<a href="#"
									class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end"
									style="border-radius: 30px 0 0 30px;">Read More</a> <a href="#"
									class="flex-shrink-0 btn btn-sm btn-primary px-3"
									style="border-radius: 0 30px 30px 0;">Join Now</a>
							</div>
						</div>
						<div class="text-center p-4 pb-0">
							<h3 class="mb-0">$149.00</h3>
							<div class="mb-3">
								<small class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small>(123)</small>
							</div>
							<h5 class="mb-4">Web Design & Development Course for
								Beginners</h5>
						</div>
						<div class="d-flex border-top">
							<small class="flex-fill text-center border-end py-2"><i
								class="fa fa-user-tie text-primary me-2"></i>John Doe</small> <small
								class="flex-fill text-center border-end py-2"><i
								class="fa fa-clock text-primary me-2"></i>1.49 Hrs</small> <small
								class="flex-fill text-center py-2"><i
								class="fa fa-user text-primary me-2"></i>30 Students</small>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
					<div class="course-item bg-light">
						<div class="position-relative overflow-hidden">
							<img class="img-fluid" src="/views/img/course-2.jpg" alt="">
							<div
								class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
								<a href="#"
									class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end"
									style="border-radius: 30px 0 0 30px;">Read More</a> <a href="#"
									class="flex-shrink-0 btn btn-sm btn-primary px-3"
									style="border-radius: 0 30px 30px 0;">Join Now</a>
							</div>
						</div>
						<div class="text-center p-4 pb-0">
							<h3 class="mb-0">$149.00</h3>
							<div class="mb-3">
								<small class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small>(123)</small>
							</div>
							<h5 class="mb-4">Web Design & Development Course for
								Beginners</h5>
						</div>
						<div class="d-flex border-top">
							<small class="flex-fill text-center border-end py-2"><i
								class="fa fa-user-tie text-primary me-2"></i>John Doe</small> <small
								class="flex-fill text-center border-end py-2"><i
								class="fa fa-clock text-primary me-2"></i>1.49 Hrs</small> <small
								class="flex-fill text-center py-2"><i
								class="fa fa-user text-primary me-2"></i>30 Students</small>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
					<div class="course-item bg-light">
						<div class="position-relative overflow-hidden">
							<img class="img-fluid" src="/views/img/course-3.jpg" alt="">
							<div
								class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
								<a href="#"
									class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end"
									style="border-radius: 30px 0 0 30px;">Read More</a> <a href="#"
									class="flex-shrink-0 btn btn-sm btn-primary px-3"
									style="border-radius: 0 30px 30px 0;">Join Now</a>
							</div>
						</div>
						<div class="text-center p-4 pb-0">
							<h3 class="mb-0">$149.00</h3>
							<div class="mb-3">
								<small class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small
									class="fa fa-star text-primary"></small> <small>(123)</small>
							</div>
							<h5 class="mb-4">Web Design & Development Course for
								Beginners</h5>
						</div>
						<div class="d-flex border-top">
							<small class="flex-fill text-center border-end py-2"><i
								class="fa fa-user-tie text-primary me-2"></i>John Doe</small> <small
								class="flex-fill text-center border-end py-2"><i
								class="fa fa-clock text-primary me-2"></i>1.49 Hrs</small> <small
								class="flex-fill text-center py-2"><i
								class="fa fa-user text-primary me-2"></i>30 Students</small>
						</div>
</div>
</div> -->
						
						<%
						List<Product> ls = (List<Product>) session.getAttribute("ls");
						if (ls == null) {
							response.sendRedirect("login");
							return;
						}
						for (Product product : ls) {
						%>
						
						<div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
						<form action="showplans" method="post">
							<div class="course-item bg-light">
								<div class="position-relative overflow-hidden">
									<img class="img-fluid" src="/views/img/course-1.jpg" alt="">
									<div
										class="w-100 d-flex justify-content-center position-absolute bottom-0 start-0 mb-4">
										
											<input type="hidden" name="product_id"
												value="<%=product.getCourse_id()%>">
												 <a href="#"
												class="flex-shrink-0 btn btn-sm btn-primary px-3 border-end"
												style="border-radius: 30px 0 0 30px;">Read More</a>
											<button type="submit"
												class="flex-shrink-0 btn btn-sm btn-primary px-3"
												style="border-radius: 0 30px 30px 0;">Join Now</button>
										
									</div>
								</div>
								<div class="text-center p-4 pb-0">
									<h3 class="mb-0">
										$<%=product.getPrice()%></h3>
									<div class="mb-3">
										<small class="fa fa-star text-primary"></small> <small
											class="fa fa-star text-primary"></small> <small
											class="fa fa-star text-primary"></small> <small
											class="fa fa-star text-primary"></small> <small
											class="fa fa-star text-primary"></small> <small>(123)</small>
									</div>
									<h5 class="mb-4"><%=product.getName()%></h5>
								</div>
								<div class="d-flex border-top">
									<small class="flex-fill text-center border-end py-2"><i
										class="fa fa-user-tie text-primary me-2"></i>John Doe</small> <small
										class="flex-fill text-center border-end py-2"><i
										class="fa fa-clock text-primary me-2"></i>1.49 Hrs</small> <small
										class="flex-fill text-center py-2"><i
										class="fa fa-user text-primary me-2"></i>30 Students</small>
								</div>
							</div>
						</form>
						</div>
						<%
						}
						%>




					</div>
			</div>
		</div>
	<!-- Courses End -->



	<!-- Testimonial Start -->
	<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container">
			<div class="text-center">
				<h6 class="section-title bg-white text-center text-primary px-3">FeedBack</h6>
				<h1 class="mb-5">Our Students Say!</h1>
			</div>
			<div class="owl-carousel testimonial-carousel position-relative">
				<div class="testimonial-item text-center">
					<img class="border rounded-circle p-2 mx-auto mb-3"
						src="/views/img/testimonial-1.jpg"
						style="width: 80px; height: 80px;">
					<h5 class="mb-0">Shivani Dangi</h5>
					<p>Profession</p>
					<div class="testimonial-text bg-light text-center p-4">
						<p class="mb-0">This platform has been a game-changer for my
							career.The courses are thorough, easy to follow, and packed with
							practical insights. I appreciated the flexibility to learn on my
							schedule, and the certification gave me an edge in my job
							interviews.</p>
					</div>
				</div>
				<div class="testimonial-item text-center">
					<img class="border rounded-circle p-2 mx-auto mb-3"
						src="/views/img/testimonial-2.jpg"
						style="width: 80px; height: 80px;">
					<h5 class="mb-0">Ajay Sadh</h5>
					<p>Profession</p>
					<div class="testimonial-text bg-light text-center p-4">
						<p class="mb-0">The quality of content on this eLearning
							website is unmatched. The instructors are knowledgeable, and the
							lessons are engaging. I particularly loved the quizzes and
							assignments that helped me solidify my learning. It is a great
							investment for anyone looking to upskill</p>
					</div>
				</div>
				<div class="testimonial-item text-center">
					<img class="border rounded-circle p-2 mx-auto mb-3"
						src="/views/img/testimonial-3.jpg"
						style="width: 80px; height: 80px;">
					<h5 class="mb-0">Vikas Rajput</h5>
					<p>Profession</p>
					<div class="testimonial-text bg-light text-center p-4">
						<p class="mb-0">I have tried other eLearning platforms, but
							this one stands out. The intuitive design, excellent customer
							support, and wide variety of courses make it my top choice. It is
							perfect for learners of all levels, from beginners to advanced.</p>
					</div>
				</div>
				<div class="testimonial-item text-center">
					<img class="border rounded-circle p-2 mx-auto mb-3"
						src="/views/img/testimonial-4.jpg"
						style="width: 80px; height: 80px;">
					<h5 class="mb-0">Rishika Yadav</h5>
					<p>Profession</p>
					<div class="testimonial-text bg-light text-center p-4">
						<p class="mb-0">The best thing about this platform is how easy
							it is to stay motivated. The progress tracker and gamified
							elements made me excited to complete each module. Plus, the
							knowledge I gained is directly applicable to my job</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Testimonial End -->

	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
		class="bi bi-arrow-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="/views/lib/wow/wow.min.js"></script>
	<script src="/views/lib/easing/easing.min.js"></script>
	<script src="/views/lib/waypoints/waypoints.min.js"></script>
	<script src="/views/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="/views/js/main.js"></script>
</body>

</html>