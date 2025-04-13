<%@page import="com.vj.entites.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<center>
		<h2>Delete Product</h2>
	</center>
	<div class="container mt-5">

		<form action="DeleteProductTask" method="post">
			<%
				Product p=(Product) session.getAttribute("pd");
		
			%>

			<div class="form-group ">

				<label for="id" class="form-label">ID</label> <input type="text"
					placeholder="enter Id" class="form-control" name="id"
					id="id">
			</div>
			
			<br>
			<div class="container text-center">
				<input type="submit" class="btn btn-primary" value="Delete">
			</div>

		</form>


	</div>

</body>
</html>