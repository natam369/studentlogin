<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome - SITAMS Student</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.css">
<style>
.container {
	/* border: 1px solid black; */
	
}

.jumbo {
	margin-top: 1%;
	height: 380px;
	/* background-color: #000839; */
}

.welcometitle {
	margin-top: -30px;
	/* color: #f7f7f7; */
	color: #000839;
	font-family: DauphinPlain;
	text-align: center;
}

.welcometitle>span {
	/* background-color: #222831; */
	
}

.title {
	/* color: #faf4ff; */
	color: #000839;
	font-size: 40px;
	text-align: center;
	font-family: Alike Angular;
}

.formdiv {
	width: 500px;
	margin: 0 auto;
}

label {
	/* color: #f7f7f7; */
	color: #000839;
	font-weight: bold;
}

.btnsignin {
	display: flex;
	justify-content: center;
	background-color: #000839;
	border: 1px solid #f7f7f7;
	width: 100px;
	color: #f7f7f7;
	font-family: DauphinPlain;
	margin: 0 auto;
}

.btnsignin:hover {
	display: flex;
	justify-content: center;
	background-color: #f7f7f7;
	border: 1px solid #000839;
	width: 100px;
	color: #000839;
	/* transition-duration: 500ms; */
	font-family: DauphinPlain;
}

.btnsignin:focus {
	display: flex;
	justify-content: center;
	background-color: #f7f7f7;
	border: 1px solid #000839;
	width: 100px;
	color: #000839;
	/* transition-duration: 500ms; */
	font-family: DauphinPlain;
}

.username>input {
	border: 1px solid #000839;
}

.password>input {
	border: 1px solid #000839;
}

.username>input:focus {
	border: 1px solid #000839;
}

.password>input:focus {
	border: 1px solid #000839;
}

.not-a-member {
	margin-top: 20px;
	text-align: center;
}

.sitams {
	color: #c70039;
	text-decoration: underline;
}

.footerimg {
	width: 100%;
	height: 100px;
	margin-top: -50px;
}

.footer-text {
	font-size: 15px;
}
</style>
</head>
<body>

	<div class="container">

		<div class="jumbotron jumbo">
			<h1 class="welcometitle">
				<span>Welcome</span>
			</h1>
			<p class="title">Student Login!</p>

			<form action="/details" id="form" class="formdiv" method="post">
				<div class="form-group username"
					style="display: flex; flex-direction: row;">
					<label class="col-md-4" for="name">Username:</label> <input
						type="text" class="form-control" placeholder="Enter Username"
						name="name" id="name">
				</div>
				<div class="form-group password"
					style="display: flex; flex-direction: row;">
					<label class="col-md-4" for="password">Password:</label> <input
						type="password" class="form-control" placeholder="Enter Password"
						 name="password" id="password">
				</div>

				<button class="btn btn-primary btnsignin">Sign In</button>

			</form>
			<p class="not-a-member">
				If you are new to this page please contact <span class="sitams"><a href=http://www.sitams.org/>sitams.org</a></span>
				for help
			</p>
</div>
</div>
			<!-- jQuery library -->
			<script
				src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>

			<!-- Popper JS -->
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.js"></script>

			<!-- Latest compiled JavaScript -->
			<script
				src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.js"></script>
</body>
</html>