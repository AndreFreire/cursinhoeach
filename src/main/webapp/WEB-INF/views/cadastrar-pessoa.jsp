<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<form action="cadastrarPessoa" method="post">
	<div class="input-group">
		<div class="input-group-prepend">
			<span class="input-group-text" id="basic-addon1">Nome</span>
		</div>
		<input type="text" class="form-control" placeholder="Nome"
			aria-describedby="basic-addon1" name="nome">
	</div>
	<div class="input-group">
		<div class="input-group-prepend">
			<span class="input-group-text" id="basic-addon1">Sobrenome</span>
		</div>
		<input type="text" class="form-control" placeholder="Sobrenome"
			aria-describedby="basic-addon1" name="sobrenome">
	</div>
	<div class="input-group">
		<div class="input-group-prepend">
			<span class="input-group-text" id="basic-addon1">ID</span>
		</div>
		<input type="text" class="form-control" placeholder="ID"
			aria-describedby="basic-addon1" name="id">
	</div>
	<div class="input-group">
		<div class="input-group-prepend">
			<span class="input-group-text" id="basic-addon1">Senha</span>
		</div>
		<input type="password" class="form-control" placeholder="Senha"
			aria-describedby="basic-addon1" name="senha">
	</div>

	<div class="input-group" id="tipo-pessoa">
		<select class="form-control" name="tipo" id="select-tipo">
			<option value="0" id="tipo-aluno">Aluno</option>
			<option value="1" id="tipo-professor">Professor</option>
		</select>
	</div>
	
	<div class="input-group desactivate" id="disciplina" >
		<select class="form-control" name="disciplina">
			<option value="Biologia">Biologia</option>
			<option value="Filosofia">Filosofia</option>
			<option value="Fisica">Física</option>
			<option value="Geografia">Geografia</option>
			<option value="Historia">História</option>
			<option value="Ingles">Inglês</option>
			<option value="Literatura">Literatura</option>
			<option value="Matematica">Matemática</option>
			<option value="Portugues">Português</option>
			<option value="Quimica">Química</option>
			<option value="Sociologia">Sociologia</option>
		</select>
	</div>
	<input class="btn btn-outline-dark" type="submit" value="Cadastrar" />
</form>
