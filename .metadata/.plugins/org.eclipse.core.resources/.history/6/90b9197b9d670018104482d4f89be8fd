<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Test route</title>
	</head>
	<body>
		<h1>TEST</h1>
		
		<h1>REGISTRATION ERRORS</h1>
		
		 		<h1>Registration</h1>
 		<c:if test="${errors !=null}">
 				<p>${ error }</p>
 		</c:if>
 		
 		
 		<c:if test="${error !=null}">
 				<p>${ error }</p>
 		</c:if>
 		
		
		
		 		<h1>SEARCH BAR AND LISTINGS</h1>
 		
<!-- home section -->
		<section id="home">
			<div id="home-bg-picture"></div>
			<div id="home-overlay"></div>
			<div id="home-content">
				<div id="home-content-inner">
					<div id="home-header">
						<h1 id="home-heading">Your new home is a click away:</h1>
					</div>
					<div id="search-bar">
						 <form method="GET" action="/users/search" >
							<input type="text" name="search" />
							<input type="submit" value="Search" />
						</form>
					</div>
				</div>	
			</div>	
		</section>
 		
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

				</tr>
				</c:forEach>
				
				<tr></tr>
			</table>
	</body>
</html>