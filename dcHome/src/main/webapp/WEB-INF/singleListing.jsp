<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Listing for ${listing.address}</title>
	</head>
	<body>
		
		<c:if test="${user != null}">
			<a href="/listings">Home</a>
			<a href="/users/new">Logout</a>
		</c:if>
				
		<br><br>
		
		<form action="/listings/${listing.id}/add" method="post">
			<input type="submit" value="Add to Favorites" />
		</form>
		
		
		<p>Address: ${listing.address}</p>
		<p>Property Summary: ${listing.description}</p>
		<p>Property Type: ${listing.type}</p>
		<p>Property Built on: ${listing.yearbuilt}</p>
		<p>Size: ${listing.size} square feet</p>
		<p>Asking price: $${listing.cost}</p>
		<p>Number of Bedrooms: ${listing.numberofrooms}</p>
		<p>Number of Bathrooms: ${listing.numberofbathrooms}</p>
		
		<c:forEach items="${listing.pictures }" var="picture">
			<div><img src="/images/${picture.image }" alt="${picture.image }"/></div>
		</c:forEach>
		
	</body>
</html>