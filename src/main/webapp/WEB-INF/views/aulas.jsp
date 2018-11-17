<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:include page="/WEB-INF/views/header.jsp" />
<section class="padrao aulas">
	<h3>Grade hor�ria</h3>
	<hr />

	<table class="table table-bordered table-striped">
		<thead>
			<tr>
				<th scope="col">Hor�rio</th>
				<th scope="col">Segunda-feira</th>
				<th scope="col">Ter�a-feira</th>
				<th scope="col">Quarta-feira</th>
				<th scope="col">Quinta-feira</th>
				<th scope="col">Sexta-feira</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">13:00 - 13:50</th>
				<td><a href="matematica">Matem�tica</a></td>
				<td><a href="quimica">Qu�mica</a></td>
				<td><a href="portugues">Portugu�s</a></td>
				<td><a href="fisica">F�sica</a></td>
				<td><a href="portugues">Portugu�s</a></td>
			</tr>
			<tr>
				<th scope="row">13:50 - 14:40</th>
				<td><a href="matematica">Matem�tica</a></td>
				<td><a href="quimica">Qu�mica</a></td>
				<td><a href="portugues">Portugu�s</a></td>
				<td><a href="matematica">Matem�tica</a></td>
				<td><a href="portugues">Reda��o</a></td>
			</tr>
			<tr>
				<th scope="row">14:40 - 15:30</th>
				<td><a href="portugues">Reda��o</a></td>
				<td><a href="fisica">F�sica</a></td>
				<td><a href="ingles">Ingl�s</a></td>
				<td><a href="portugues">Portugu�s</a></td>
				<td><a href="fisica">F�sica</a></td>
			</tr>
			<tr>
				<th scope="row">16:00 - 16:50</th>
				<td><a href="quimica">Qu�mica</a></td>
				<td><a href="filosofia">Filo</a>/<a href="sociologia">Socio</a></td>
				<td><a href="biologia">Biologia</a></td>
				<td><a href="historia">Hist�ria</a></td>
				<td><a href="matematica">Matem�tica</a></td>
			</tr>
			<tr>
				<th scope="row">16:50 - 17:40</th>
				<td><a href="literatura">Literatura</a></td>
				<td><a href="historia">Hist�ria</a></td>
				<td><a href="geografia">Geografia</a></td>
				<td><a href="biologia">Biologia</a></td>
				<td><a href="matematica">Matem�tica</a></td>
			</tr>
			<tr>
				<th scope="row">17:40 - 18:30</th>
				<td><a href="literatura">Literatura</a></td>
				<td><a href="biologia">Biologia</a></td>
				<td><a href="matematica">Matem�tica</a></td>
				<td><a href="geografia">Geografia</a></td>
				<td><a href="geografia">Geografia</a></td>
			</tr>
		</tbody>
	</table>
</section>

<jsp:include page="/WEB-INF/views/footer.jsp" />
