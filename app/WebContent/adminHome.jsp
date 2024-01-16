<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.shashi.service.impl.*, com.shashi.service.*,com.shashi.beans.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Admin Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #ffffff;">
	<%
	/* Checking the user credentials */
	String userType = (String) session.getAttribute("usertype");
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	
	%>

	<jsp:include page="header.jsp" />

	<div class="products" style="background-color: #ffffff;">

		<div class="tab" align="center">
			<form>
				<button type="submit" formaction="adminViewProduct.jsp">View
					products</button>
				<br>
				<br>
				<button type="submit" formaction="addProduct.jsp">Add
					products</button>
				<br>
				<br>
				<button type="submit" formaction="removeProduct.jsp">Remove
					Products</button>
				<br>
				<br>
				<button type="submit" formaction="updateProductById.jsp">Update
					Products</button>
				<br>
				<br>
			</form>
		</div>
	</div>

	<%@ include file="footer.html"%>
</body>
</html>