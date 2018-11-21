<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="/resources/js/portal-admin.js"></script>

<div id="tabs">
	<ul>
		<li class="active" data-target="pessoa">Cadastrar pessoa</li>
		<li data-target="simulado">Provas</li>
	</ul>
</div>
<div class="tab-target targeted" id="pessoa"><jsp:include
		page="/WEB-INF/views/cadastrar-pessoa.jsp" /></div>
<div class="tab-target " id="simulado"><jsp:include
		page="/WEB-INF/views/simulado.jsp" /></div>

