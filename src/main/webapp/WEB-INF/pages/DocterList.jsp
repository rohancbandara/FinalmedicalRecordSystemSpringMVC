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
			<th>DID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Date Of Birth</th>
			<th>Email Address</th>
			<th>Specile</th>
			<th>Create Date</th>
			<th>Status</th>
			<th>Action</th>
			
			

			<c:forEach var="docter" items="${listDocter}">
				<tr>
					<td>${docter.dId}</td>
					<td>${docter.dFname} </td>
					<td>${docter.dLname} </td>
					<td>${docter.dDob}</td>
					<td>${docter.dEmail}</td>
					<td>${docter.dSpecile}</td>
					<td>${docter.dCreat}</td>
					<td>${docter.dIsDelete}</td>
					<td><a href="editDocter?id=${docter.dId}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteDocter?id=${docter.dId}">Delete</a></td>
					
					
					
					</tr>
			</c:forEach>
		</table>
		<h4>
			New Docter Register <a href="newDocter">here</a>
		</h4>
	</div>


</body>
</html>