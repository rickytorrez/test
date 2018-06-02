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
		<title>Listings</title>
	</head>
		<body>
			<c:if test="${user != null}">
				<a href="/listings">Home</a>
				<a href="/users/new">Logout</a>
				<h3>Welcome, ${user.firstname }</h1>
			</c:if>
		
			<h1>Listings</h1>
			<table border="1px">
				<tr>
					<th>Address</th>
					<th>Description</th>
					<th>Type</th>
					<th>Year Built</th>

				</tr>
				<c:forEach items="${listings}" var="listing">
				<tr>
					<td>${ listing.address }</td>
		 			<td>${ listing.description }</td>
		 			<td>${ listing.type }</td>
		 			<td><a href="/listings/${listing.id}"><button>View</button></a></td>
		 			<c:if test="${listing.getPictures().size() > 0 }">
			 			<td><img src="/images/${listing.getPictures().get(0).image}" alt="${listing.getPictures().get(0)}"></td>
		 			</c:if>

				</tr>
				</c:forEach>
				
				<tr></tr>
			</table>
			<hr>
				<h1>Your favorites</h1>
				
			<c:forEach items="${user.getFaveListings() }" var="fave">
					<p>${fave.address}</p>
					<p>${fave.description}</p>
				</c:forEach>
			
		</body>
</html>