<!DOCTYPE html>
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
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/views/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/views/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/views/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/views/css/style.css" rel="stylesheet">
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>
	 <% List <Registration> ls = (List)session.getAttribute("ls"); %>
                <% Registration r = ls.get(0); 
                	String email = r.getEmail();
                %>
                
	<div class="container mt-5" >
	
	<form action="edittask" method="post">
	
  <div class="form-group ">
    <label for="name" class="form-label">Full Name</label>
    <input type="text" placeholder="enter full name" class="form-control" value="<%=r.getFullname()%>" name="fullname" id="fullname" >   
  </div>
  
	
	<div class="form-group ">
    <label for="email" class="form-label">Email address</label>
    <input type="email" value="<%=r.getEmail() %>" name = "email" class="form-control"  id="email" readonly>   
  </div>
	
  <div class="form-group">
    <label for="gender" class="form-label">Gender</label>
  
        <input type="radio" name="gender" id="male" value="Male" <%= "checked".equals(r.getGender()) ? "checked" : "" %> >
        <label for="male">Male</label>
        <input type="radio" name="gender" id="female" value="Female" <%= "Female".equals(r.getGender()) ? "checked" : "" %> >
        <label for="female">Female</label>
</div>

  
</div>

  <div class="form-group ">
    <label for="username" class="form-label">Username</label>
    <input type="text" placeholder="enter username" class="form-control" value="<%= r.getUsername() %>" name="username" id="username" >   
  </div>
  
  <div class="form-group">
    <label for="number" class="form-label">Phone Number</label>
    <input type="number" placeholder="enter phone number" class="form-control" value="<%= r.getPhonenumber() %>" name="phonenumber" id="phonenumber">
  </div>
  
  	
  <div class="form-group">
    <label for="city" class="form-label">Address</label>
    <input type="text" placeholder="enter address" class="form-control" value="<%= r.getAddress() %>" name="address" id="address">
  </div>
  
  <div class="form-group">
    <input type="checkbox"  id="checkbox">
    <label for="checkbox" class="form-label">I accept the terms and conditions </label>
  </div>
  
  <br>
  <div class="container text-center">
  <input type="submit" class="btn btn-primary" value="Update">
  </div>
  
</form>
	
	
	</div>

<jsp:include page="footer.jsp"></jsp:include>

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


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