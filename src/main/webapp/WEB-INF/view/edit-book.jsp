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
<body>
	<div class="col-5 mx-auto mt-3">
		<div class="container">
			<div class="card">
				<div class="card-header bg-primary text-white text-center">
					<h2>Update User</h2>
				</div>
				<div class="card-body mx-auto">
					<form:form method="post" modelAttribute="book"
						action="${book.id }/update ">
						<div class="row mb-3">
							<div class="col-4">Id: ${book.id }</div>
						</div>
						<div class="row mb-3">
							<div class="col-2">
								<form:label path="author">Author</form:label>
							</div>
							<div class="col-10">
								<form:input path="author" type="text" class="form-control" />
							</div>
						</div>
						<div class="row mb-5">
							<div class="col-2">
								<form:label path="name">Name</form:label>
							</div>
							<div class="col-10">
								<form:input path="name" type="text" class="form-control" />
							</div>
						</div>
						<div>
							<input type="submit" value="Update User" class="btn btn-success" />
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>