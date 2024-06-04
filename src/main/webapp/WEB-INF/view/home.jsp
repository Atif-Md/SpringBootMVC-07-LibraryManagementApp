<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<body class="bg-light">
	<div class="col-5 mx-auto mt-3">
		<div class="container">

			<div class="card">
				<div class="card-header bg-info text-center text-white">
					<h3>Welcome to Library Management MVC App</h3>
				</div>
				<div class="card-body">
					<form>
						<a href='/new-book'>
							<button type="button" class="btn btn-success">Add New
								Book <i class="fa fa-plus-square" aria-hidden="true"></i></button>
						</a>
						<a href='/disp'>
							<button type="button" class="btn btn-primary ml-5">Show Book List</button>
						</a> 
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>