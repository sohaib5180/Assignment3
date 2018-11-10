<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Welcome</title>
<style>
	#welcome {
		display: block;
		margin: auto;
		width: 100px;
	}
</style>
</head>

<body>
	<%@include file="Customer_Header.jsp" %>

		<%-- Fill this with the username retrieved from the cookie/session. --%>
		<div id="welcome">
			<h1>Welcome, <% %></h1>
		</div>
		
	<%@include file="Footer.jsp" %>
</body>

</html>