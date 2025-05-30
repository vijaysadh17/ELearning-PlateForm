<!DOCTYPE html>
<%@page import="com.vj.entites.Product"%>
<%@page import="com.vj.entites.Registration"%>
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

	<center>
		<h2>Update Product</h2>
	</center>
	<div class="container mt-5">

		<form action="UpdateFormTask" method="post">
			<%
			List<Product> p = (List<Product>)session.getAttribute("ls1");
			 int id = (int)session.getAttribute("id");
					Product p2 = new Product();
			for(Product p1:p)
			{
				if(id==p1.getCourse_id())
				{
					p2 = p1;
					/* return; */
					break;
				}
			} 
			
			
			
			if (p == null) {
				response.sendRedirect("/admin/productview");
				return;
			}
			 System.out.println(p); 
			%>

			<div class="form-group ">

				<label for="id" class="form-label">ID</label> <input type="text"
					placeholder="Enter the Id" class="form-control" name="id"
					id="id" value="<%=p2.getCourse_id() %>"  readonly="readonly" >
			</div>
			<div>
				<label for="name" class="form-label">Name</label> <input type="text"
					placeholder="enter course name" class="form-control" name="name"
					id="name" value="<%=p2.getName() %>" >
			</div>


			<div class="form-group ">
				<label for="category" class="form-label">Category</label> <input
					type="text" placeholder="enter course category" name="category"
					class="form-control" id="category" value="<%=p2.getCategory() %>" >
			</div>

			<div class="form-group">
				<label for="duration" class="form-label">Duration</label> <input
					type="text" placeholder="enter Duration in months " class="form-control"
					name="duration" id="duration" value="<%=p2.getDuration() %>" >
			</div>
			<div class="form-group">
				<label for="price" class="form-label">Price</label> <input
					type="number" placeholder="enter fees " class="form-control"
					name="price" id="price" value="<%=p2.getPrice() %>">
			</div>

			<br>
			<div class="container text-center">
				<input type="submit" class="btn btn-primary" value="Update">
			</div>

		</form>


	</div>

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