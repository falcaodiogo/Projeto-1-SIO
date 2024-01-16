<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #ffffff;">

	<%@ include file="header.jsp"%>

	<%
	String message = request.getParameter("message");
	%>
	<br>
	<br>
	<div class="container">
		<div class="row"
			style="margin-top: 5px; margin-left: 2px; margin-right: 2px;">
			<form action="./LoginSrv" method="post"
				class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2"
				style="border: 2px solid rgb(218, 218, 218); border-radius: 18px; background-color: #ffffff; padding: 10px;">
				<div style="font-weight: bold;" class="text-center">
					<h2 style="color: rgb(0, 0, 0);">Login Form</h2>
					<%
					if (message != null) {
					%>
					<p style="color: rgb(74, 121, 74);">
						<%=message%>
					</p>
					<%
					}
					%>
				</div>
				<div></div>
				<div class="row">
				    <div class="col-md-12 form-group">
				        <label for="last_name">E-mail</label>
				        <input type="text" placeholder="e-mail" name="username" class="form-control" id="last_name">
				    </div>
				</div>
				<div class="row">
				    <div class="col-md-12 form-group">
				        <label for="last_name">Password</label>
				        <input type="text" placeholder="Enter Password" name="password" class="form-control" id="last_name">
				    </div>
				</div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="userrole">Login As</label> <select name="usertype"
							id="userrole" class="form-control">
							<option value="customer" selected>CUSTOMER</option>
							<option value="admin">ADMIN</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<button type="submit" class="btn btn-success">Login</button>
					</div>
				</div>
			</form>

		</div>
	</div>

	<%@ include file="footer.html"%>

</body>
</html>