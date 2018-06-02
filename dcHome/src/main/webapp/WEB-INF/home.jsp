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
		<!-- w3 -->
		<link href="<c:url value="/resources/dcHome/css/w3/w3.css" />" rel="stylesheet">
		<!-- font -->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
		<!-- main stylesheet -->		
		<link href="<c:url value="/resources/dcHome/css/style.css" />" rel="stylesheet">
		
		<title>DC Home</title>
	</head>
	<body>
	 	<!-- Navbar (sit on top) -->
	 	<div class="w3-top">
            <div class="w3-bar w3-white w3-card" id="myNavbar">
                <a href="#home" class="w3-bar-item w3-button w3-wide">LOGO</a>
                
                <!-- Right-sided navbar links -->
                <div class="w3-right w3-hide-small">
                    <a href="/listings" onclick="w3_close()" class="w3-bar-item w3-button" ></i>LISTINGS</a>
                    <a href="#" class="w3-bar-item w3-button"></i> LOG IN</a>
                </div>
                
                <!-- Hide right-floated links on small screens and replace them with a menu icon -->
                <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
                    <i class="fa fa-bars"></i>
                </a>
            </div>
        </div>
        
    		<!-- Sidebar on small screens when clicking the menu icon -->
        <nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
            <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
            <a href="#listings" onclick="w3_close()" class="w3-bar-item w3-button">LISTINGS</a>
            <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">CONTACT</a>
        </nav>

		<!-- Header with full-height image -->
        <header class="bgimg-1 w3-display-container" id="home">
            <div class="w3-display-left w3-text-white" style="padding:48px">
                <span class="w3-jumbo w3-hide-small">Your home just a click away</span>
                <br>
                <span class="w3-xxlarge w3-hide-large w3-hide-medium">Your next home is a click away</span>
                <br>
                <p>
                    <a href="#listings" class="w3-button w3-white w3-padding-large w3-large w3-margin-top w3-opacity w3-hover-opacity-off">View Listings</a>
                </p>
            </div>

            <div class="w3-display-bottomleft w3-text-grey w3-large" style="padding:24px 48px">
                <i class="fa fa-facebook-official w3-hover-opacity"></i>
                <i class="fa fa-instagram w3-hover-opacity"></i>
            </div>
        </header>

		<!-- Promo Section "Statistics" -->
        <div class="w3-container w3-row w3-center w3-dark-grey w3-padding-64">
            <div class="w3-quarter">
                <span class="w3-xxlarge">1300+</span>
                <br>New Home Owners
            </div>
            <div class="w3-quarter">
                <span class="w3-xxlarge">800+</span>
                <br>Rental Properties
            </div>
            <div class="w3-quarter">
                <span class="w3-xxlarge">100+</span>
                <br>Listings
            </div>
            <div class="w3-quarter">
                <span class="w3-xxlarge">50+</span>
                <br>Realtors Available
            </div>
        </div>

		<!-- Listing Section -->
        <div class="w3-container" style="padding:128px 16px" id="listings">
            <h3 class="w3-center">LISTINGS</h3>
            <p class="w3-center w3-large">Our most recent listings</p>

            <div class="w3-row-padding w3-grayscale" style="margin-top:64px">
                <div class="w3-col l3 m6 w3-margin-bottom">
                    <div class="w3-card">
                        <img src="/w3images/team2.jpg" alt="John" style="width:100%">
                        <div class="w3-container">
                            <h3>John Doe</h3>
                            <p class="w3-opacity">CEO & Founder</p>
                            <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
                            <p>
                                <button class="w3-button w3-light-grey w3-block">
                                    <i class="fa fa-envelope"></i> Contact</button>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>








	
	
		
	
	
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
 		<!-- jquery -->
 		<script src="<c:url value="/resources/dcHome/js/jquery.js" />"></script>
 		<!-- bootstrap js -->
 		<script src="<c:url value="/resources/dcHome/js/bootstrap/bootstrap.js" />"></script>
 		<!-- custom js -->
 		
	</body>
</html>