<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table table-bordered table-striped table-aluno span12">
	<thead>
		<tr>
			<th scope="col" >Simulado</th>
			<c:forEach var="simulado" items="${model.getSimulados()}">
				<th scope="col" >${simulado}</th>
			</c:forEach>
		</tr>
	</thead>
	<tbody>

		<c:forEach var="linha" items="${model.getRows()}">
			<tr>
				<th scope="row">${linha.getKey()}</th>
				<c:forEach var="simuladoNota" items="${linha.getValue()}">
					<td>${simuladoNota}</td>
				</c:forEach>
			</tr>
		</c:forEach>

	</tbody>

</table>
