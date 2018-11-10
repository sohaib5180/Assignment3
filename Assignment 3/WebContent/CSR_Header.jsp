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
<title>Header Include</title>

<style>
	a:link, a:visited {
		color: white;
	}
	
	a:hover {
		color: blue;
	}
	
</style>

</head>

<body style="margin: 0px; padding: 0px;">
	
	<%-- Header Background --%>
	<div style="background-image: url('Images/Header_Background.jpg'); height: 100px;
		margin: 0px; width: 100%; ">
	
	<%-- Logo linking to the product page --%>
	<div style="height: 100px; margin-left: 10px; width: 250px;">
		<a href="#">
			<img style=" margin-top: -34px; position: relative; top: 50%;" 
				src="Images/Shoetopia_Logo.png" alt="Shoe-topia Logo" />
		</a>
	</div>
	
	<%-- Navigation links --%>
	<div style="left: 62%; height: 30px; margin-top: -25px; position: relative; 
		top: -50%; width: 390px; ">
		<nav>
			<ul style="list-style-type: none; padding: 0px;">
				
				<li style="border-right: 2px solid white; display: inline;">
					<a href="#" style="margin: 0px 10px;">Edit Customers</a>
				</li>
				
				<li style="border-right: 2px solid white; display: inline;">
					<a href="#" style="margin: 0px 10px;">Edit Orders</a>
				</li>
				
				<li style="border-right: 2px solid white; display: inline;">
					<a href="#" style="margin: 0px 10px;">Add Item</a>
				</li>
				
				<li style="display: inline;">
					<a href="index.jsp" style="margin: 0px 10px;">Log Out</a>
				</li>
			</ul>
		</nav>
	</div>
	
</div>

</body>
</html>