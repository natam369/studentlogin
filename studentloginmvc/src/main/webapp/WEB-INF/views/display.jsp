<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Details</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Oswald">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open Sans">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js"
	integrity="sha256-vb+6VObiUIaoRuSusdLRWtXs/ewuz62LgVXg2f1ZXGo="
	crossorigin="anonymous"></script>
<style>
html, body {
	height: 100%;
}

body {
	margin: 0;
	background: linear-gradient(45deg, #49a09d, #5f2c82);
	font-family: sans-serif;
	font-weight: 100;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	width: 800px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

th, td {
	padding: 15px;
	background-color: rgba(255, 255, 255, 0.2);
	color: #fff;
}

p {
	padding: 15px;
	color: #fff;
	text-align: center;
}

a {
	padding: 15px;
	color: #fff;
	text-align: center;
}

h1 {
	padding: 15px;
	color: #fff;
	text-align: center;
}

th {
	text-align: left;
}

thead {th { background-color:#55608f;
	
}

}
tbody {tr { &:hover {
			background-color : rgba(255, 255, 255, 0.3);
	
}

}
h1, h2, h3, h4, h5, h6 {
	font-family: "Oswald"
}

td {
	position: relative; &: hover { & : before { 
				 content : "";
	position: absolute;
	left: 0;
	right: 0;
	top: -9999px;
	bottom: -9999px;
	background-color: rgba(255, 255, 255, 0.2);
	z-index: -1;
}
}
}
}
</style>
</head>
<body>
	<div class="jumbotron text-center">
		<h1>SITAMS</h1>
	</div>
	<div class="container">
		<p>Personal Details</p>
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>DOB</th>
					<th>Branch</th>
					<th>YearOfPassing</th>
					<th>Branch</th>
					<th>Tution-Fee</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${student.getName()}</td>
					<td>${student.getDateofbirth()}</td>
					<td>${student.getBranch()}</td>
					<td>${student.getYearofcompletion()}</td>
					<td>${student.getBranch()}</td>
					<td>${student.getFee()}</td>
				</tr>
			</tbody>

		</table>
		<p>Marks</p>
		<table>
			<thead>
				<tr>
					<th>1st year</th>
					<th>2nd year</th>
					<th>3th year</th>
					<th>4th year</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${student.getP1()}</td>
					<td>${student.getP2()}</td>
					<td>${student.getP3()}</td>
					<td>${student.getP4()}</td>
				</tr>
			</tbody>
		</table>
		<p>
			<a href="/home">Logout</a>
		</p>
	</div>
</body>
</html>