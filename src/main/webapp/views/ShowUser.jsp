<%@page import="com.vj.entites.Registration"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
response.setHeader("Cache-Control", "No-Cache");
response.setHeader("Cache-Control", "No-Store");
%>
<html>
<head>
<meta charset="UTF-8">
<title>User</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<style>
body {
	background-color: #e3f2fd;
	padding: 20px;
	font-family: 'Poppins', sans-serif;
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
	background-color: #0099ff;
	color: white;
	font-weight: bold;
	text-transform: uppercase;
}

.table thead th {
	background-color: #ff8c66;
	color: #0d0d0d;
	padding: 12px;
	text-align: center;
}

.table tbody tr:nth-child(odd) {
	background-color: #cce5ff;
}

.table tbody tr:nth-child(even) {
	background-color: #b8daff;
}

.table tbody tr:hover {
	background-color: #99caff;
}

.table td {
	color: #212529;
	font-weight: 500;
	text-align: center;
}

h1 {
	color: #0056b3;
	font-weight: bold;
	text-align: center;
	text-transform: uppercase;
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Users Details</h1>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>Id</th>
						<th>Full Name</th>
						<th>Email</th>
						<th>Username</th>
						<th>Password</th>
						<th>Mobile Number</th>
						<th>Gender</th>
						<th>Address</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<%
					List<Registration> ls1 = (List<Registration>) session.getAttribute("ls1");

					if (ls1 == null) {

						response.sendRedirect("/user/login");
						return;
					}
					for (Registration rs : ls1) {
					%>
					<tr>
						<td><%=rs.getId()%></td>
						<td><%=rs.getFullname()%></td>
						<td><%=rs.getEmail()%></td>
						<td><%=rs.getUsername()%></td>
						<td><%=rs.getPassword()%></td>
						<td><%=rs.getPhonenumber()%></td>
						<td><%=rs.getGender()%></td>
						<td><%=rs.getAddress()%></td>
						<td><a href="/user/register"
							class="btn btn-success btn-action"> Add </a> <a
							href="/admin/updateproduct?id=<%=rs.getId()%>"
							class="btn btn-primary btn-action">Update</a> <a
							href="/admin/DeleteProductTask?id=<%=rs.getId()%>"
							class="btn btn-danger btn-action"
							onclick="return confirm('Are you sure you want to delete this course?');">Delete</a>
							<a href="/admin/block?id=<%=rs.getId()%>"
							class="btn btn-success btn-action"
							onclick="return confirm('Are you sure you want to Block this course?');">Block</a>
						</td>

					</tr>

					<%
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
