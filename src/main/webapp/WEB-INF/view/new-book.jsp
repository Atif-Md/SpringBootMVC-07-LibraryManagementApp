<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Library</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
</head>
<body>
	<div class="col-5 mx-auto mt-3">
		<div class="container">
			<div class="card">
				<div class="card-header bg-info text-center text-white">
					<h2>Add New Book</h2>
				</div>
				<div class="card-body mx-auto" >
					<form:form action="/add" modelAttribute="book" method="post">
						<div class="row">
							<div class="col-2">
								<form:label path="author">Author</form:label>
							</div>
							<div class="col-10">
								<form:input path="author" class="form-control"/>
							</div>
						</div><br>
						<div class="row">
							<div class="col-2">
								<form:label path="name">Name</form:label>
							</div>
							<div class="col-10">
								<form:input path="name" class="form-control"/>
							</div>
						</div>
						<br>
						<div>
							<div>
								<button type="submit" class="btn btn-success">Add Book <i class="fa fa-plus-square" aria-hidden="true"></i></button>
								<!-- <input type="submit" value="Add User" class="btn btn-success"> -->
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>