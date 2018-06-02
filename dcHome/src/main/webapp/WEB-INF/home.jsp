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
		<!-- font-awesome -->
		<link href="<c:url value="/resources/dcHome/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
		<!-- bootstrap -->
		<link href="<c:url value="/resources/dcHome/css/bootstrap/bootstrap.css" />" rel="stylesheet">
		<!-- main stylesheet -->		
		<link href="<c:url value="/resources/dcHome/css/style.css" />" rel="stylesheet">
		
		<title>DC Home</title>
	</head>
	<body>
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
	
	
	<!-- temp space -->
    <section>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
    </section>
	
 		<h1>Registration</h1>
 		<c:if test="${errors !=null}">
 				<p>${ error }</p>
 		</c:if>
 		<form action="/users/new" method="post">
 			<p>
	 			<label>First Name</label>
	 			<input type="text" name="firstname">
 			</p>
 			<p>
	 			<label>Last Name</label>
	 			<input type="text" name="lastname">
 			</p>
 			<p>
	 			<label>Username</label>
	 			<input type="text" name="username">
 			</p>
 			<p>
	 			<label>E-mail</label>
	 			<input type="text" name="email">
 			</p>
 			<p>
	 			<label>Password</label>
	 			<input type="password" name="password">
 			</p>
 			<p>
	 			<label>Option</label>
	 			<select name="realtor">
	 				<option value="true">Realtor</option>
	 				<option value="false">Buyer</option>
	 			</select>
 			</p>
 			<input type="submit" value="Register"/>
 		</form>
 		
 		<c:if test="${error !=null}">
 				<p>${ error }</p>
 		</c:if>
 		
 		
 		<h1>Log In</h1>
 		
 		<form action="/users/login" method="post">
 			<p>
 				<label>Email
 					<input type="text" name="email"/>
 				</label>		
 			</p>
 			<p>
 				<label>Password	
 					<input type="password" name="password"/>
 				</label>		
 			</p>
 			<input type="submit" value="Login"/>
 		</form> 
 		
 		<h1>Properties for sale</h1>
 		

 		
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
 		<!-- jquery -->
 		<script src="<c:url value="/resources/dcHome/js/jquery.js" />"></script>
 		<!-- bootstrap js -->
 		<script src="<c:url value="/resources/dcHome/js/bootstrap/bootstrap.js" />"></script>
 		<!-- custom js -->
 		
	</body>
</html>