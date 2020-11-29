<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	input:hover {
	background-color: yellow;
}
</style>
</head>
<body style="background-color: #161616">
	<div align="center">
	<h1 style="color: purple; font-size: bold"><ul>Employee Register Form</ul></h1>
	<form action="<%= request.getContextPath() %>/register" method="post">
	<table style="width: 80%; height: 20px;color: grey">
		<tr>
		<td>First name</td>
		<td><input type="text" name="firstName" /></td>
		</tr>
		<tr>
		<td>Last name</td>
		<td><input type="text" name="lastName" /></td>
		</tr>
		<tr>
		<td>User Name</td>
		<td><input type="text" name="username" /></td>
		</tr>
		<tr>
		<td>Password</td>
		<td><input type="password" name="password" /></td>
		</tr>
		<tr>
		<td>Address</td>
		<td><input type="text" name="address" /></td>
		</tr>
		<tr>
		<td>Contact No</td>
		<td><input type="text" name="contact" /></td>
		</tr>
		</table>
		<input type="submit" value="SUBMIT">
		</form>
	</div>
</body>
</html>