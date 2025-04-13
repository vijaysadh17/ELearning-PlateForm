<%@page import="com.vj.entites.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Details</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Poppins', sans-serif;
            padding: 20px;
        }
        .container {
            margin-top: 20px;
        }
        .table {
            background-color: #ffffff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        }
        .table thead {
            background-color: #343a40;
            color: white;
            font-weight: bold;
            text-transform: uppercase;
        }
        .table thead th {
            background-color: #495057;
            color: #ffffff;
            padding: 12px;
            text-align: center;
        }
        .table tbody tr:nth-child(odd) {
            background-color: #e9ecef;
        }
        .table tbody tr:nth-child(even) {
            background-color: #dee2e6;
        }
        .table tbody tr:hover {
            background-color: #ced4da;
        }
        .table td {
            color: #212529;
            font-weight: 500;
            text-align: center;
        }
        h1 {
            color: #343a40;
            font-weight: bold;
            text-align: center;
            text-transform: uppercase;
            margin-bottom: 20px;
        }
        .btn-action {
            padding: 5px 10px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Course Details</h1>
        <div class="table-responsive">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Product Id</th>
                        <th>Name</th>
                        <th>Category</th>
                        <th>Duration</th>
                        <th>Price</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% List<Product> ls1 = (List<Product>) session.getAttribute("ls1");
                    if (ls1 == null) {
                        response.sendRedirect("/user/login");
                        return;
                    }
                    for (Product pd : ls1) { %>
                    <tr>
                        <td><%= pd.getCourse_id() %></td>
                        <td><%= pd.getName() %></td>
                        <td><%= pd.getCategory() %></td>
                        <td><%= pd.getDuration() %></td>
                        <td><%= pd.getPrice() %></td>
                        <td>
                            <a href="/admin/addproduct" class="btn btn-success btn-action">Add</a>
                            <a href="/admin/updateproduct?id=<%= pd.getCourse_id() %>" class="btn btn-primary btn-action">Update</a>
 <a href="/admin/DeleteProductTask?id=<%= pd.getCourse_id() %>" class="btn btn-danger btn-action" onclick="return confirm('Are you sure you want to delete this course?');">Delete</a>
                        </td>
                        
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
