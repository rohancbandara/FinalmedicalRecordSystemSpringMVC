<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Docter List</title>
</head>
<body>

<h3>Welcome :${username }        <a href="login">logout</a></h3>

<div align="center">
		<h1>Docter List</h1>
		
		<table border="1">

			<th>Name</th>
			<th>Email</th>
			<th>Address</th>
			<th>Telephone</th>
			<th>Action</th>

			<c:forEach var="docter" items="${listDocter}">
				<tr>

					<td>${docter.dFname}</td>
					<td>${docter.dEmail}</td>
					<td>${docter.dDob}</td>
					<td>${docter.dSpecile}</td>
					<td><a href="editEmployee?id=${docter.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteEmployee?id=${docter.id}">Delete</a></td>

				
					</tr>
			</c:forEach>
		</table>
		<h4>
			New Employee Register <a href="newEmployee">here</a>
		</h4>
	</div>


</body>
</html>