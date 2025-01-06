<%@ page language="java" contentType="text/html; charset=UTF-8"
  
  pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>User Management Application</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	integrity="sha384-gg0yR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/LJTQU0hcWr7x9JvoRxT2MZw1T
	crossorigin="anonymous">
 </head>
 <body>
	<div class="container"> 
	<br>

	<h2>User List</h2> 

		<table class="table table-bordered">

			<thead>
				<tr>
					<th>id</th>
					<th>first_name</th>
					<th>email</th>
					<th>phone</th>
					<th>gender</th>
				</tr>
			</thead>
		
		<tbody>
			<c:forEach var="user" items="${userList}">
				<tr>

					<td> <c:out value="${user.id}"/></td>

					<td> <c:out value="${user.name}"/></td>

					<td> <c:out value="${user.email}"/></td>

					<td> <c:out value="${user.country}"/></td>

					<td>

						<a href="view?id=${user.id}" type="button" class="btn btn-secondary">View</a>

						<a href="edit?id=${user.id)" class="btn btn-success">Edit</a>

						<a href="delete?id=${user.id}" class="btn btn-danger">Delete</a>
					</td>
					</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>

			
			







