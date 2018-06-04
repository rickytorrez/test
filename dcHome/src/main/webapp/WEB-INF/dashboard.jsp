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
		<!-- bootstrap -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<!-- w3 -->
		<link href="<c:url value="/resources/dcHome/css/w3/w3.css" />" rel="stylesheet">
		<!-- font -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
		<!-- font-awesome -->
		<link href="<c:url value="/resources/dcHome/css/font-awesome/css/font-awesome.min.css" />" rel="stylesheet">
		<!-- main stylesheet -->		
		<link href="<c:url value="/resources/dcHome/css/style.css" />" rel="stylesheet">
		<title>Admin Dashboard</title>
	</head>
	<body>
		<!-- Navbar (sit on top) -->
	 	<div class="w3-top">
            	<div class="w3-bar w3-white w3-card" id="myNavbar">
                	<a href="/users/new" class="w3-bar-item w3-button w3-wide">LOGO</a>
                
                	<!-- Right-sided navbar links -->
                	<div class="w3-right w3-hide-small">
                	    <!-- if user is admin -->
                		<c:if test="${user.isAdmin() == true}">
                    		<a href="/users/dashboard" class="w3-bar-item w3-button"></i> ADMIN</a>
                    	</c:if>
                		<!-- if user is realtor show realtor tab -->
                    	<c:if test="${user.isRealtor() == true}">
                    		<a href="/listings/realtor" class="w3-bar-item w3-button"></i> REALTOR</a>
                    	</c:if>
                    	<a href="/listings" onclick="w3_close()" class="w3-bar-item w3-button" ></i>LISTINGS</a>
                    	<a href="/users/logout" onclick="w3_close()" class="w3-bar-item w3-button"></i>LOG OUT</a>
                	</div>
                
                	<!-- Hide right-floated links on small screens and replace them with a menu icon -->
                	<a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
                    	<i class="fa fa-bars"></i>
                	</a>
            	</div>
        	</div>
        
        	<!-- Mobile Menu -->
        	<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
            	<a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
            	<!-- if user is realtor show realtor tab -->
			<c:if test="${user.isRealtor() == true}">
         		<a href="/listings/realtor" class="w3-bar-item w3-button"></i> REALTOR</a>
            	</c:if>
            	<!-- if user is a buyer show favorites tab -->
            	<!-- listings -->
           	<a href="/listings" onclick="w3_close()" class="w3-bar-item w3-button">LISTINGS</a>
           	<c:if test="${user.isRealtor() == false}">
            		<a href="/listings/favorites" class="w3-bar-item w3-button"></i> FAVORITES</a>
            	</c:if>
            	<a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">CONTACT</a>
       		<!-- if there's no user in session, show login -->
           	<c:if test="${user == null}">
	       		<a href="#" class="w3-bar-item w3-button" data-toggle="modal" data-target="#logInUser" ></i> LOG IN</a>
	        	</c:if>
	        	<!-- if there's a user in session, show logout -->
	       	<c:if test="${user != null}">
	        		<a href="/users/new" class="w3-bar-item w3-button"></i> LOG OUT</a>
	      	</c:if>
        	</nav>
        	
        	<!-- Admin Dashboard -->
        	<div class="w3-container" style="padding:100px 16px" id="listings">
            	<h3 class="w3-center">Welcome, ${user.firstname}</h3>
            	<p class="w3-center w3-large">Here is your administrator dashboard</p>

            	<div class="w3-row-padding " style="margin-top:64px">
            	
            		<!-- Users in the database -->
                	<div class="w3-col l6 m6 w3-margin-bottom">
                    	<div class="w3-card">
                    		<div class="w3-container">
                    			<h3>Users</h3>
                    			<p class="w3-opacity">Platform users:</p>
                            		<table class="table table-hover">
	                                	<thead>
	                                    	<tr class="bg-info">
	                                        	<th scope="col">Id</th>
	                                        	<th scope="col">Name</th>
	                                        	<th scope="col">Username</th>
	                                        	<th scope="col">E-mail</th>
	                                    	</tr>
	                                	</thead>
	                                	<tbody>
	                                		<c:forEach items="${users}" var="user">
		                                    	<tr>
		                                        	<td scope="row">${user.id}</td>
		                                        	<td>${user.firstname} ${user.lastname}</td>
		                                        	<td>${user.username}</td>
		                                        	<td>${user.email}</td>
		                                    	</tr>
	                                    	</c:forEach>
	                               	</tbody>
	                         	</table>
                        	</div>
                    	</div>
                	</div>
                	
                	<!-- User messages, questions, concerns -->
	           	<div class="w3-col l6 m6 w3-margin-bottom">
	            		<div class="w3-card">
	                		<div class="w3-container">
	                    		<h3>Messages:</h3>
								<p class="w3-opacity">User questions, concerns, messages:</p>
									<table class="table table-hover">
	                                	<thead>
	                                    	<tr class="bg-danger">
	                                        	<th scope="col">Name</th>
	                                        	<th scope="col">E-mail</th>
	                                        	<th scope="col">Subject</th>
	                                        	<th scope="col">Message</th>
	                                    	</tr>
	                                	</thead>
	                                	<tbody>
	                                		<c:forEach items="${messages}" var="message">
											<tr>
												<td scope="row">${message.name}</td>
												<td>${message.email }</td>
												<td>${message.subject }</td>
												<td>${message.content }</td>
											</tr>
										</c:forEach>
	                               	</tbody>
	                         	</table>
	                        	</div>
	                    	</div>
	                	</div>
	                	
                	<!-- Active Listings -->
	           	<div class="w3-col l12 m6 w3-margin-bottom">
	            		<div class="w3-card">
	                		<div class="w3-container">
	                    		<h3>Listings</h3>
								<p class="w3-opacity">Active Listings:</p>
									<table class="table table-hover">
	                                	<thead>
	                                    	<tr class="bg-success">
	                                        	<th scope="col">Address</th>
	                                        	<th scope="col">Type</th>
	                                        	<th scope="col">Year Built</th>
	                                        	<th scope="col">Cost</th>
	                                        	<th scope="col">Size</th>
	                                        	<th scope="col">Details</th>
	                                    	</tr>
	                                	</thead>
	                                	<tbody>
										<c:forEach items="${listings}" var="listing">
								 			<tr>
									 			<td>${ listing.address }</td>
									 			<td>${ listing.type }</td>
									 			<td>${ listing.yearbuilt }</td>
									 			<td>${ listing.cost }</td> 
									 			<td>${ listing.size }</td>
									 			<td><a href="/listings/${listing.id}"><button class="w3-button w3-light-grey w3-block">
	                                    	<i class="fa fa-search"></i>View</button></a></td>			
								 			</tr>
								 		</c:forEach>
	                               	</tbody>
	                         	</table>
	                        	</div>
	                    	</div>
	                	</div>
			</div>
		</div>
		<!-- jquery 3.3.1-->
	    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	    	<!-- bootstrap-->
    		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 		<!-- script js -->
 		<script src="<c:url value="/resources/dcHome/js/script.js" />"></script>
        <!-- google API -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJ-UwG2QhQze8fgx2B4KPAplCRT670Leo&callback=myMap"></script>
	</body>
</html>