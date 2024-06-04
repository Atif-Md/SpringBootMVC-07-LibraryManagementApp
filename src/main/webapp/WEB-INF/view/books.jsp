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
	<div class="col-5 mx-auto mt-3 mb-3">
		<div class="container">
			<div class="card">
				<div class="card-header bg-info text-center text-white">
					<h2>List of Books</h2>
				</div>
				<div class="card-body">
					<table class="table table-hover">
						<tr class="bg-dark text-white">
							<th>ID</th>
							<th>Author</th>
							<th>Name</th>
							<th>Operation</th>
						</tr>
						<c:forEach var="book" items="${books }">
							<tr>
								<td>${book.id }</td>
								<td>${book.author }</td>
								<td>${book.name }</td>
								<td>
									<div class="row">
									<a href='/${book.id }' class="btn btn-warning"> Edit <i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
									<form action='/${book.id }/delete' method='post'>
										<button type="submit" class="btn btn-danger ml-1">Delete <i class="fa fa-trash-o" aria-hidden="true"></i></button>
										<!-- <input type='submit' value='Delete' class="btn btn-danger ml-1"/>
										<i class="fa fa-trash-o" aria-hidden="true"></i> -->
									</form>
									</div>
								</td>
							</tr>
						</c:forEach>
					</table>
					<br> <a href='/new-book'>
						<button type="button" class="btn btn-success">Add New Book <i class="fa fa-plus-square" aria-hidden="true"></i></button>
					</a>
					<a href='/'>
						<button type="button" class="btn btn-primary ml-5">Go To Home</button>
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>