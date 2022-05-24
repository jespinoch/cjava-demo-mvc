<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>Titulo CJAVA</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" />
</head>
<body>

	<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
		<a class="navbar-brand" href="#">Spring Boot CJAVA</a>
		<button class="navbar-toggler" type="button">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Inicio</a></li>
				<li class="nav-item"><a class="nav-link" href="#about">Acerca de</a></li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<h1 class="display-3">
				<c:out value="${titulo}" />
			</h1>
			<h2>${titulo}</h2>
		</div>
	</div>

	<div class="container">
		<hr>
		<footer>
			<p>&copy; Derechos Reservados 2020</p>
		</footer>
	</div>
</body>
</html>