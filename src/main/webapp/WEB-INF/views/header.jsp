<%@page language="java" contentType="text/plain;charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- https://codepen.io/dhanushbadge/pen/olsvi -->
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/images/logo.png" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Signika"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/home.css">
<link rel="stylesheet" href="/resources/css/body.css">
<link rel="stylesheet" href="/resources/css/materia.css">
<link rel="stylesheet" href="/resources/css/grade.css">
<link rel="stylesheet" href="/resources/css/footer.css">
<link rel="stylesheet" href="/resources/css/aula.css">
<link rel="stylesheet" href="/resources/css/portal.css">
<link rel="stylesheet" href="/resources/css/portal-login.css">
<link rel="stylesheet" href="/resources/css/portal-aluno.css">
<link rel="stylesheet" href="/resources/css/portal-professor.css">
<link rel="stylesheet" href="/resources/css/portal-admin.css">
<link rel="stylesheet" href="/resources/css/cadastrar-pessoa.css">

<title>${title}</title>
</head>
<body>
	<header>
		<a href="home"><img src="resources/images/logo.png"></a>
		<div class="address">
			<h4>Escola de Artes, Ciências e Humanidades</h4>
			<h4>Universidade de São Paulo</h4>
			<h4>Rua Arlindo Béttio, 1000 - Jardim Keralux</h4>
		</div>
		<nav class="navbar navbar-expand-sm navbar-light navbar-custom">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a
						class="nav-link ml-xl-3 ml-lg-2 ml-md-1 px-xl-5 px-lg-5 px-md-3 px-sm-1"
						href="home">Inicio</a></li>
					<li class="nav-item dropdown  "><a
						class="nav-link dropdown-toggle px-xl-5 px-lg-5 px-md-3 px-sm-1 "
						id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Disciplinas </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="biologia">Biologia</a> <a
								class="dropdown-item" href="filosofia">Filosofia</a> <a
								class="dropdown-item" href="fisica">Física</a> <a
								class="dropdown-item" href="geografia">Geografia</a> <a
								class="dropdown-item" href=" 	 	historia">História</a> <a
								class="dropdown-item" href="ingles">Inglês</a> <a
								class="dropdown-item" href="literatura">Literatura</a> <a
								class="dropdown-item" href="matematica">Matemática</a> <a
								class="dropdown-item" href="portugues">Português</a> <a
								class="dropdown-item" href="quimica">Química</a> <a
								class="dropdown-item" href="sociologia">Sociologia</a>
						</div></li>
					<li class="nav-item  "><a
						class="nav-link px-xl-5 px-lg-4 px-md-3 px-sm-1"
						href="professores">Professores</a></li>
					<li class="nav-item "><a
						class="nav-link px-xl-5 px-lg-4 px-md-3 px-sm-1 " href="aulas">Aulas</a></li>
					<li class="nav-item  "><a
						class="nav-link px-xl-5 px-lg-4 px-md-3 px-sm-1" href="portal-login">Portal</a></li>
				</ul>
			</div>
		</nav>

	</header>