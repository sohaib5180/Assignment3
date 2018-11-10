<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--  
Name: Michael Van Klik & Sohaib Hussain
Assignment: Java Assignment 3
Date: December 2, 2018
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Profile</title>
<style>

	table {
		border-collapse: collapse;
		margin: 10px auto;
		position: relative;
	}
	
	th {
		border: 2px solid grey;
		width: 100px;
	}
	
	form {
		margin: 10px auto;
		width: 25px;
	}
</style>
</head>

<body>

	<%@include file="Customer_Header.jsp" %>
		
		<%-- This is where the customer information table is shown. --%>
		<table>
			
			<tr>
				<th>Customer ID</th>
				<th>User Name</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Address</th>
				<th>City</th>
				<th>Postal Code</th>
			</tr>
			
			<tr>
			<%--Enter values using jsp tags and get from database. --%>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>
			
		</table>
		
		<%-- Button to go to the edit customers information page. --%>
		<form action="CustomerWelcome.jsp" method="get" name="editProfile">
			<input type="submit" value="Edit Profile">
		</form>
		
	<%@include file="Footer.jsp" %>

</body>


</html>