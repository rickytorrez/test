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
		<title>Insert title here</title>
	</head>
	<body>
<%-- 	    <c:if test="${errors != null}">
	    		<c:forEach items="${errors}" var="err">
	    			<p>${err.defaultMessage}</p>
	    		</c:forEach>
	    </c:if>
 		
  		<form:form action="/users/new" method="post" modelAttribute="user">
 			<p>
 				<form:label path="firstname">First Name
 					<form:errors path="firstname"></form:errors>
 					<form:input type="text" path="firstname"></form:input>
 				</form:label>
 			</p>
 			<p>
 				<form:label path="lastname">Last Name
 					<form:errors path="lastname"></form:errors>
 					<form:input type="text" path="lastname"></form:input>
 				</form:label>
 			</p>
 			<p>
 				<form:label path="username">Username
 					<form:errors path="username"></form:errors>
 					<form:input type="text" path="username"></form:input>
 				</form:label>
 			</p>
 			<p>
 				<form:label path="email">Email
 					<form:errors path="email"></form:errors>
 					<form:input type="text" path="email"></form:input>
 				</form:label>
 			</p>
 			<p>
 				<form:label path="password">Password
 					<form:errors path="password"></form:errors>
 					<form:input type="password" path="password"></form:input>
 				</form:label>
 			</p>
 			<p>
 				<form:label path="realtor">Option:
 					<form:errors path="realtor"></form:errors>
 					<form:select path="realtor">
 						<form:option value="true">Realtor</form:option>
 						<form:option value="false">Buyer</form:option>
 					</form:select>
 				</form:label>
 			</p>
 			<input type="submit" value="Register"/>
 		</form:form>
 		
 		<c:if test="${error !=null}">
 				<p>${ error }</p>
 		</c:if> --%>
 		
 		<form action ="/users/test" method="post">
 			<input type="submit" value="TEST" />
 		</form>
 		
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
 		
 			<form method="GET" action="/users/search" >
				<input type="text" name="search" />
				<input type="submit" value="Search" />
			</form>
 		
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