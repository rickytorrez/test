<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Admin Dashboard</title>
	</head>
	<body>
		<form action="/users/logout" method="get">
 			<p>
 				<input type="submit" value="logout" />
 			</p>
 		</form>
 		<h2>Users</h2>
 		<table border="1px">
 			<tr>
 				<th>Id</th>
 				<th>First Name</th>
 				<th>Last Name</th>
 				<th>Email</th>
 			</tr>
 		<c:forEach items="${users}" var="user">
 			<tr>
 				<td>${ user.id }</td>
 				<td>${ user.firstname }</td>
 				<td>${ user.lastname }</td>
 				<td>${ user.email }</td>
 			</tr>
 		</c:forEach>
 		</table>
		
		<h2>Listings</h2>
		<table border="1px">
 			<tr>
 				<th>Address</th>
 				<th>Description</th>
 				<th>Type</th>
 				<th>Year Built</th>
 				<th>Property Size</th>
 				<th>Property Cost</th>
 				<th>Details</th>
 			</tr>
		<c:forEach items="${listings}" var="listing">
 			<tr>
	 			<td>${ listing.address }</td>
	 			<td>${ listing.description }</td>
	 			<td>${ listing.type }</td>
	 			<td>${ listing.yearbuilt }</td>
	 			<td>${ listing.size }</td>
	 			<td>${ listing.cost }</td> 
	 			<td><a href="#"><button>View</button></a></td>			
 			</tr>
 		</c:forEach>
		</table>
		
		
	</body>
</html>