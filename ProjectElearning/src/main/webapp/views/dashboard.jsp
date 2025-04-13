<!DOCTYPE html>
<%@page import="com.vj.entites.Registration"%>

<%@page import="java.util.List"%>
<html lang="en">

<head>
<meta charset="utf-8">
<title>E-LEARNING DASHBOARD</title>
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

	<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>eLearning Dashboard</title>
    Bootstrap CSS
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>
<body> -->
	<div class="container-fluid">
		<div class="row">
			<!-- Sidebar -->
			<div class="col-md-3 bg-dark text-white p-4 vh-100">
				<div class="text-center mb-4">
					<img
						src="https://th.bing.com/th/id/OIP.3HpR-PD_CqBHzgGtJn7kZwHaH_?w=153&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"
						alt="Profile Picture" class="rounded-circle mb-3" width="80px"
						height="80px">
					<%
					List<Registration> ls = (List) session.getAttribute("ls");
					%>
					<%
					Registration r = ls.get(0);
					%>
					<h4 class="text-muted"><%=r.getFullname()%></h4>
					<p class="text-muted">Learner</p>
				</div>
				<nav>
					<ul class="list-unstyled">
						<!-- <li><a href="#" class="text-white d-block py-2"><i class="bi bi-speedometer2"></i> Dashboard</a></li> -->
						<li><a href="profile" class="text-white d-block py-2"><i
								class="bi bi-speedometer2"></i> profile</a></li>
						<li><a href="course" class="text-white d-block py-2"><i
								class="bi bi-book"></i> My Courses</a></li>
						<li><a href="#" class="text-white d-block py-2"><i
								class="bi bi-graph-up"></i> Progress</a></li>
						<li><a href="#" class="text-white d-block py-2"><i
								class="bi bi-bell"></i> Notifications</a></li>
						<li><a href="#" class="text-white d-block py-2"><i
								class="bi bi-gear"></i> Settings</a></li>
						<li><a href="logout" class="text-white d-block py-2"><i
								class="bi bi-box-arrow-right"></i> Logout</a></li>
					</ul>
				</nav>
			</div>

			<!-- Main Content -->
			<div class="col-md-9 p-4">
				<h1>
					Welcome,
					<%=r.getFullname()%>
				</h1>
				<p class="text-muted">Here is a summary of your learning
					progress.</p>

				<!-- Overview Cards -->
				<div class="row mb-4">
					<div class="col-md-4">
						<div class="card text-center">
							<div class="card-body">
								<h5 class="card-title">Completed Courses</h5>
								<h2 class="text-success">5</h2>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card text-center">
							<div class="card-body">
								<h5 class="card-title">Active Courses</h5>
								<h2 class="text-primary">3</h2>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card text-center">
							<div class="card-body">
								<h5 class="card-title">Hours Studied</h5>
								<h2 class="text-info">12</h2>
							</div>
						</div>
					</div>
				</div>

				<!-- Course Progress -->
				<div class="card mb-4">
					<div class="card-header">
						<h5>Current Courses</h5>
					</div>
					<div class="card-body">
						<div class="mb-3">
							<p>
								HTML and CSS Basics <span class="float-end">80%</span>
							</p>
							<div class="progress">
								<div class="progress-bar" role="progressbar" style="width: 80%;"
									aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
						<div class="mb-3">
							<p>
								JavaScript Fundamentals <span class="float-end">45%</span>
							</p>
							<div class="progress">
								<div class="progress-bar bg-warning" role="progressbar"
									style="width: 45%;" aria-valuenow="45" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
						</div>
						<div>
							<p>
								React Basics <span class="float-end">20%</span>
							</p>
							<div class="progress">
								<div class="progress-bar bg-danger" role="progressbar"
									style="width: 20%;" aria-valuenow="20" aria-valuemin="0"
									aria-valuemax="100"></div>
							</div>
						</div>
					</div>
				</div>

				<!-- Notifications -->
				<div class="card">
					<div class="card-header">
						<h5>Recent Notifications</h5>
					</div>
					<div class="card-body">
						<ul class="list-group">
							<li class="list-group-item">You completed "HTML And CSS
								Basics" course.</li>
							<li class="list-group-item">New assignment added to
								"JavaScript Fundamentals".</li>
							<li class="list-group-item">Your progress in "React Basics"
								has been updated.</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 
    Bootstrap JS and Popper.js
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    Bootstrap Icons
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</body>
</html>

 -->


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