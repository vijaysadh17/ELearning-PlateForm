 <!DOCTYPE html>
<%@page import="com.vj.entites.Registration"%>

<%@page import="java.util.List"%>

<%
response.setHeader("Cache-Control", "No-Cache");
response.setHeader("Cache-Control", "No-Store");
%>

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

    <div class="container py-5">
        <h3 class="mb-4 text-center">Welcome, <b>Admin</b></h3>
        
        <div class="row justify-content-center">
            <div class="col-md-4">
                <div class="card shadow-lg rounded-4 text-center">
                    <div class="card-body py-5">
                        <h4 class="card-title mb-4">Manage Users</h4>
                        <a href="/admin/userview" class="btn btn-primary btn-lg w-75 mb-3">User Details</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card shadow-lg rounded-4 text-center">
                    <div class="card-body py-5">
                        <h4 class="card-title mb-4">Manage Courses</h4>
                        <a href="/admin/productview" class="btn btn-success btn-lg w-75 mb-3">Course Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top">
        <i class="bi bi-arrow-up"></i>
    </a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/views/lib/wow/wow.min.js"></script>
    <script src="/views/lib/easing/easing.min.js"></script>
    <script src="/views/lib/waypoints/waypoints.min.js"></script>
    <script src="/views/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="/views/js/main.js"></script>
</body>


</html> 









