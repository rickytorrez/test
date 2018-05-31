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
			<h1>Listing</h1>
			<table border="1px">
				<tr>
					<th>Address</th>
					<th>Description</th>
					<th>Type</th>
					<th>Year Built</th>
					<th>Number of Bedrooms</th>
					<th>Number of Bathrooms</th>
					<th>Property Size</th>
					<th>Cost</th>
				</tr>
				<c:forEach items="${listings}" var="listing">
				<tr>
					<td>${ listing.address }</td>
		 			<td>${ listing.description }</td>
		 			<td>${ listing.type }</td>
		 			<td>${ listing.yearbuilt }</td>
		 			<td>${ listing.numberofrooms }</td>
		 			<td>${ listing.numberofbathrooms }</td>
		 			<td>${ listing.size }</td>
		 			<td>${ listing.cost }</td>

				</tr>
				</c:forEach>
				
				<tr></tr>
			</table>
			
		</body>
</html>