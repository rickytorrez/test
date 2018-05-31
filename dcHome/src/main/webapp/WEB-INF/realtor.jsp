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
		<title>Realtor</title>
	</head>
	<body>
		<h1>Create a Listing</h1>
		<form:errors path="listing.errors.*"></form:errors>
		
		<form:form method="POST" action="/listings/createListing" modelAttribute="listing">
			<form:label path="address">Address:
				<form:input path="address"></form:input>
			</form:label><br>
			<form:label path="description">Description:
				<form:input path="description"></form:input>
			</form:label><br>
			<form:label path="type">Type:
				<form:select path="type">
					<form:option value="single-family-home">Single-Family Home</form:option>
					<form:option value="townhome">Town House</form:option>
					<form:option value="apartment">Apartment</form:option>
				</form:select>
			</form:label><br>
			<form:label path="yearbuilt">Built Year:
				<form:input type="number" path="yearbuilt"></form:input>
			</form:label><br>
			<form:label path="numberofrooms">Number of Bedrooms:
				<form:input type="number" path="numberofrooms"></form:input>
			</form:label><br>
			<form:label path="numberofbathrooms">Number of Bathrooms:
				<form:input type="number" path="numberofbathrooms"></form:input>
			</form:label><br>
			<form:label path="size">Size (Square Feet):
				<form:input type="number" path="size"></form:input>
			</form:label><br>
			<form:label path="cost">Asking Price:
				<form:input type="number" path="cost"></form:input>
			</form:label><br>
			<input type="submit" value="Create Listing"/>
		</form:form>
	</body>
</html>