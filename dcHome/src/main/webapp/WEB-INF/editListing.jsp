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
		<title>Realtor Dashboard</title>
	</head>
	<body>
		<!-- Navbar (sit on top) -->
	 	<div class="w3-top">
            	<div class="w3-bar w3-white w3-card" id="myNavbar">
                	<a href="/users/new" class="w3-bar-item w3-button w3-wide">LOGO</a>
                	<!-- Right-sided navbar links -->
                	<div class="w3-right w3-hide-small">
                		<!-- if usre is admin -->
                		<c:if test="${user.isAdmin() == true}">
                    		<a href="/users/dashboard" class="w3-bar-item w3-button"></i> ADMIN</a>
                    	</c:if>
                    	<!-- if user is a buyer show favorites tab -->
                    	<c:if test="${user.isRealtor() == false}">
                    		<a href="/listings/favorites" class="w3-bar-item w3-button"></i> FAVORITES</a>
                    	</c:if>
                    	<!-- listings route -->
                    	<a href="/listings" onclick="w3_close()" class="w3-bar-item w3-button" ></i>LISTINGS</a>
                    	<!-- if user is realtor show realtor tab -->
                    	<c:if test="${user.isRealtor() == true}">
                    		<a href="/listings/realtor" class="w3-bar-item w3-button"></i> REALTOR</a>
                    	</c:if>
                    	<!-- if there's no user in session, show login -->
                    	<c:if test="${user == null}">
	                    	<!-- Modal link for Log In-Reg -->
	                    	<a href="#" class="w3-bar-item w3-button" data-toggle="modal" data-target="#logInUser" ></i> LOG IN</a>
	              	</c:if>
	              	<!-- if there's a user in session, show logout -->
	              	<c:if test="${user != null}">
	              		<a href="/users/new" class="w3-bar-item w3-button"></i> LOG OUT</a>
	              	</c:if>
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
		
		<!-- Edit Listing -->
        	<div class="w3-container" style="padding:100px 16px" id="listings">
            	<h3 class="w3-center">Listing at: <br>${ listing.address }</h3>
            	<p class="w3-center w3-large">Edit or add an Image</p>

            	<div class="w3-row-padding " style="margin-top:64px">
            	
            		<!-- Update a listing form -->
                	<div class="w3-col l6 m6 w3-margin-bottom">
                    	<div class="w3-card">
                    		<div class="w3-container">
                    			<h3>Update Listing</h3>
                            	<form action="/listings/${listing.id}/editListing" method="POST">
								<p> Address:
									<input type="text" name="address" value="${listing.address}">
								</p>
								<p> Description:
									<input type="text" name="description" value="${listing.description}">
								</p>
								<p> Property Type:
									<select name="type">
										<option value="Single-Family-House">Single Family House</option>
										<option value="Town-House">Town House</option>
										<option value="Apartment">Apartment</option>
									</select>
								</p>
								<p> Built in:
									<input type="number" name="yearbuilt" value="${listing.yearbuilt}">
								</p>
								<p>	Number of rooms:
									<input type="number" name="numberofrooms" value="${listing.numberofrooms}">
								</p>
								<p> Number of bathrooms:
									<input type="number" name="numberofbathrooms" value="${listing.numberofbathrooms}">
								</p>
								<p> Size (Square feet):
									<input type="number" name="size" value="${listing.size}">
								</p>
								<p> Cost:
									<input type="number" name="cost" value="${listing.cost}">
								</p>
								<input type="submit" value="Update" class="btn btn-default"/>
							</form>
                            		
                            		
                        	</div>
                    	</div>
                	</div>
                	
                	<!-- Add an image to the listing -->
	                	<div class="w3-col l6 m6 w3-margin-bottom">
	                    	<div class="w3-card">
	                        	<div class="w3-container">
	                        		<h3>Add an Image:</h3>
								<form:form action="/listings/${listing.id}/addImage" method="POST" enctype="multipart/form-data">
									<input id="files" name="file" type="file">
									<input type="submit" value="Submit Image" class="btn btn-default"/>
								</form:form>
	                        	</div>
	                    	</div>
	                	</div>
			</div>
		</div>
		
		<!-- Contact Section -->
        	<div class="w3-container w3-light-grey" style="padding:128px 16px" id="contact">
            	<h3 class="w3-center">CONTACT</h3>
            	<p class="w3-center w3-large">Lets get in touch. Send us a message:</p>
            	<div class="w3-row-padding" style="margin-top:64px">
                	<div class="w3-half">
                    	<p><i class="fa fa-map-marker fa-fw w3-xxlarge w3-margin-right"></i> Washington DC, US</p>
                    	<p><i class="fa fa-phone fa-fw w3-xxlarge w3-margin-right"></i> Phone: 1-800-1HOMEDC</p>
                    	<p><i class="fa fa-envelope fa-fw w3-xxlarge w3-margin-right"> </i> Email: info@dchome.com</p>
                    	<br>
                    	<form action="/message/new" method="POST">
                        	<p>
                            	<input class="w3-input w3-border" type="text" placeholder="Name" required name="name">
                        	</p>
                        	<p>
                            	<input class="w3-input w3-border" type="text" placeholder="Email" required name="email">
                        	</p>
                        	<p>
                            	<input class="w3-input w3-border" type="text" placeholder="Subject" required name="subject">
                        	</p>
                        	<p>
                            	<input class="w3-input w3-border" type="text" placeholder="Message" required name="content">
                        	</p>
                        	<p>
                            	<button class="w3-button w3-black" type="submit">
                                	<i class="fa fa-paper-plane"></i> SEND MESSAGE
                            	</button>
                        	</p>
                    	</form>
                	</div>
                	
                	<div class="w3-half">
                    	<!-- Add Google Maps -->
                    	<div id="googleMap" class="w3-greyscale-max" style="width:100%;height:510px;"></div>
                	</div>
            	</div>
        	</div>

        	<!-- Footer -->
        	<footer class="w3-center w3-black w3-padding-64">
            	<a href="#home" class="w3-button w3-light-grey">
                	<i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
            	<div class="w3-xlarge w3-section">
                	<i class="fa fa-facebook-official w3-hover-opacity"></i>
                	<i class="fa fa-instagram w3-hover-opacity"></i>
                	<i class="fa fa-twitter w3-hover-opacity"></i>
            	</div>
            	<p>Powered by
                	<a href="https://ertorrez.com" title="W3.CSS" target="_blank" class="w3-hover-text-green">E. Ricardo Torrez</a>
            	</p>
        	</footer>
        	
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