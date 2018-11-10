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
<title>Shoe-topia</title>

<style>
	
	 body {
		margin: 0px; 
		padding: 0px; 
		top:0px; 
		left:0px;
		height: 100vh;
	}
	
	form {
		display: inline-block;
	}
	
	table {
		display:inline-block;
		border-spacing: 10px;
	}
	
	td {
		padding: 3px;
		font-size: 1.1em;
	}
	.custSubmit, .CSRSubmit{
		text-align: right;
	}
	th {
		padding: 2px;
		text-align: center;
		font-size: 1.6em;
		padding-bottom: 10px;
	}
	input[type="submit"]{
		text-align: center;
		border: 1px solid black;
		padding: 2px;
		border-radius: 4px;
	}
	input[type="text"], input[type="password"]{
		border: 0.5 px solid grey;
		padding: 2px;
		border-radius: 4px;
		width: 100%;	
	}	
	#divider {
		position: relative;
		border: 2px solid grey;
		display: block;
		margin: auto; 
		height: 30vh;  
		width: 0px;
	}	
	#signin{
		border: 2px solid grey; 
		border-radius: 15px; 
		height:40vh; 
		margin:auto; 
		margin-top: 5%;
		position: relative; 
		width:50%;
		justify-content: center;
		display: flex;
		overflow: hidden;
	}
	.submitBtns {
		display: inline-block;
		margin: auto;
		width: 140px;
	} 
	a:link{
		text-decoration: none;
		color: black;
	}
	a:visited{
		color: black;
	}
</style>

</head>
<body>
<script>
	function openClientForm(){
		var client = document.getElementById("clientform");
		var CSR = document.getElementById("csrform");
		var clientbut = document.getElementById("Client");
		var csrbut = document.getElementById("CSR");
		
		clientbut.style.display="none";
		client.style.display="inherit";
		CSR.style.display="none";
		csrbut.style.display="flex";
	}
	function openCSRForm(){
		var client = document.getElementById("clientform");
		var CSR = document.getElementById("csrform");
		var clientbut = document.getElementById("Client");
		var csrbut = document.getElementById("CSR");
		
		csrbut.style.display="none";
		CSR.style.display="inherit";
		client.style.display="none";
		clientbut.style.display="flex";
	}
</script>
	
	<%-- Template to use the same header across multiple pages. --%>
	<%@include file="Index_Header.jsp" %>
		
		<%-- Sign in form --%>
		<div id="signin">	
			<%-- Login table. --%>
			<%-- set input lengths to lengths in the database. --%>
			<table>
				<tr>
					<td id="clientform" style="display:none;">
						<form action="RedirectionServlet" method="post" >
							<table>
								<tr>
									<th colspan="2">Client Login</th>
								</tr>
								
								<tr>
									<td>
										<label for="userNameCustomer">Username: </label>
									</td>
									
									<td>
										<input type="text" name="CustUserName" 
											id="userNameCustomer" size="15" maxlength="15">
									</td>
								</tr>
								
								<tr>
									<td>
										<label for="userPassword">Password: </label>
									</td>
									
									<td>
										<input type="text" name="userPassword" 
											id="userPassword" size="15" maxlength="15">
									</td>
								</tr>								
								<tr>
									<td class="custSubmit">
										<input type="submit" value="Submit" 
											name="Customerformsub">
									</td>
									<td>
										<input type="submit" value="Register" 
											name="Customerformsub">
									</td>
								</tr>
							</table>	
						</form>
					</td>
					<td id= "Client" class="Client">
						<table>
							<tr>
								<td><a href="javascript:openClientForm()">CLIENT LOGIN</a></td>
							</tr>
						</table>
					</td>
					<td>
						<div id="divider"></div>
					</td>
					<td id= "CSR" class="CSR">
						<table>
							<tr>
								<td><a href="javascript:openCSRForm()">CSR LOGIN</a></td>
							</tr>
						</table>
					</td>
					<td  id="csrform" class="csrform" style="display:none;">
						<form action="RedirectionServlet" method="post" name="CSRLogin">
							<table>
							
								<tr><th colspan="2">CSR Login</th></tr>
								
								<tr>
									<td>
										<label for="userNameCSR">Username: </label>
									</td>
											
									<td>
										<input type="text" name="CSRUserName" 
											id="userNameCSR" size="15" maxlength="15">
									</td>
								</tr>
								
								<tr>
									<td>
										<label for="CSRPassword">Password: </label>
									</td>
									
									<td>
										<input type="text" name="CSRPassword" 
											id="CSRPassword" size="15" maxlength="15">
									</td>
								</tr>
								
								<tr>
									<td class="CSRSubmit">
										<input type="submit" value="Submit" 
											name="CSRformsub">	
									</td>
									<td>
										<input type="submit" value="Register" 
											name="CSRformsub">
									</td>
								</tr>
								
							</table>
						</form>
					</td>
				</tr>
			</table>
		</div>
		
		<%-- in the servlet check to make sure both values on one side are 
			filled in. If not, redirect back and fill this error message from 
			a cookie or seesion object. --%> 
		
		<%-- Template to use the same footer across all pages. --%>
		<div style="position:absolute; bottom:0; left:0; width: 100%;">
			<%@include file="Footer.jsp"%>
		</div>
		
		

</body>
</html>