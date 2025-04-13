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
    
    <style>
        /* body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        } */
        .table-container {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 80%;
            max-width: 800px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 15px;
            text-align: left;
        }
        th {
            background: #007bff;
            color: #ffffff;
            font-size: 18px;
        }
        td {
            font-size: 16px;
            color: #333333;
        }
        tr:nth-child(even) {
            background: #f9f9f9;
        }
        h1 {
            font-size: 18px;
            margin: 0;
        }
        @media (max-width: 600px) {
            th, td {
                padding: 10px;
                font-size: 14px;
            }
        }
       .btnn{
       
       color : black;
       background-color: gray;
       padding :10px;
       }
    </style>
    
</head>


<body>

<jsp:include page="header.jsp"></jsp:include>
       <% List <Registration> ls = (List)session.getAttribute("ls"); %>
                <% Registration r = ls.get(0); %>
                  
	<a href = "db"><button class="btnn">Back</button></a>
	<a href = "changepassword"><button class="btnn">Change password </button></a>
	<a href = "logout"><button class="btnn">Logout</button></a>
	<center><div class="table-container">
        <table>
            <tr>
                <th colspan="2">User Details</th>
            </tr>
            <tfoot>
            	<tr>
            		<td colspan="2"><a href = "edit"><button class="btnn">Edit your profile</button></a></td>
            	</tr>
            </tfoot>
            <tr>
                <td><h1>Username</h1></td>
                <td><h1><%= r.getUsername() %></h1></td>
            <tr>
                <td><h1>Your Full Name</h1></td>
                <td><h1><%= r.getFullname() %></h1></td>
            </tr>
            <tr>
                <td><h1>Email</h1></td>
                <td><h1><%= r.getEmail() %></h1></td>
            </tr>
            <tr>
                <td><h1>Gender</h1></td>
                <td><h1><%= r.getGender() %></h1></td>
            </tr>
            <tr>
                <td><h1>Your Number</h1></td>
                <td><h1><%= r.getPhonenumber() %></h1></td>
            </tr>
            <tr>
                <td><h1>Address</h1></td>
                <td><h1><%= r.getAddress() %></h1></td>
            </tr>
            </tr>
        </table>
    </div></center>
    <jsp:include page="footer.jsp"></jsp:include>
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