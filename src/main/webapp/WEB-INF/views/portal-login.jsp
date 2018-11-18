<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="/WEB-INF/views/header.jsp" />
<jsp:include page="/WEB-INF/views/header-portal.jsp" />
<div id="loginWindow">
	<div class="page-header">
		<p class="left">
			<span class="fa fa-unlock-alt"></span>
		</p>
		<h1>Login</h1>
	</div>
	<form action="efetuaLogin" method="post">
		<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text" id="basic-addon1">CPF</span>
			</div>
			<%
				if (session.getAttribute("usuarioInvalido") == null) {
			%>

			<input type="text" class="form-control" placeholder="CPF"
				aria-describedby="basic-addon1" name="login">
			<%
				} else {
			%>
			<input type="text" class="form-control" placeholder="CPF Invalido"
				aria-describedby="basic-addon1" name="login" style="color: red;">
			<%
				}
			%>

		</div>
		<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text" id="basic-addon2">Senha</span>
			</div>
			<%
				if (session.getAttribute("usuarioInvalido") == null) {
			%>

			<input type="password" class="form-control" placeholder="Senha"
				aria-describedby="basic-addon2" name="senha">
			<%
				} else {
			%>
			<input type="password" class="form-control"
				placeholder="Senha Invalida" aria-describedby="basic-addon2"
				name="senha" style="color: red;">

			<%
				}
			%>

		</div>
		<input class="btn btn-outline-dark" type="submit" value="Entrar" />
	</form>
</div>
<jsp:include page="/WEB-INF/views/footer-portal.jsp" />
