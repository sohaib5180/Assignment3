<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Registration</title>

 <style type="text/css">
 	body{
 		margin:0;
 		padding:0;
 	}
 	table{
 		width:30%;
 		height:60vh;
 		border: 2px solid black;
 		border-radius: 5px;
 		margin:auto;
 		margin-top: 20px;
 		margin-bottom: 20px;
 		padding: 5px;

 	}
 	th{
	 	font-size: 1.5em;
	 	border: 1px dotted grey;
 	}
 	td{
 		display: flex;
 		width:100%;
 		justify-content: center;
 	}
 	input{
 		border: 1px solid lightblue;
 		height: 25px;
 		width: 100%;
 		border-radius: 5px;
 		font-size: 1.2em;
 		padding: 2px;
 	}
 	input[type="submit"]{
 		width: 70%;
 		height: 30px;
 		border-radius: 10px;
 		border: 2px grey;
 		box-shadow: 0px 0px 2px 2px lightgrey;
 		margin-top: 20px;
 	}
 </style>
</head>
<body>
	<%-- Template to use the same header across multiple pages. --%>
	<%@include file="Index_Header.jsp" %>
	
	<form>
		<table>
			<tr>
				<th colspan="2"> Customer Registration </th>
			</tr>
			<tr>
				<td style="margin-top:10px;" colspan="2"><input type="text" maxlength="10" placeholder="First Name" required/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="text" maxlength="10" placeholder="Last Name"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="text" maxlength="25" placeholder="Username" required/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="password" maxlength="15" placeholder="Password" required/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="password" maxlength="15" placeholder="Confirm Password" required/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="text" maxlength="30" placeholder="Street Address" required/></td>
			</tr>
			<tr>
				<td><input type="text" maxlength="30" placeholder="City" required/></td>			
			</tr>
			<tr>
				<td><input type="text" maxlength="7"  placeholder="Postal Code" required/></td>
			</tr>
			<tr>
				<td><input type="Submit" Value="Submit"/></td>
			</tr>
		</table>
	</form>
	
	<div style="position:static; bottom:0; left:0; width: 100%;">
		<%@include file="Footer.jsp"%>
	</div>

</body>
</html>