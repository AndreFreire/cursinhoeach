<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/WEB-INF/views/header.jsp" />
<jsp:include page="/WEB-INF/views/header-portal.jsp" />

<div class="apresentacao">
	<h3>Ol�, ${pessoa.getNome()} ${pessoa.getSobrenome()}!</h3>
	<form action="logout" method="post">
	<button type="submit" class="logout" title="logout" >
		<i class="fa fa-power-off"></i>
	</button>
	</form>
</div>

<c:set var="val" value="${pessoa.getTipo()}" />
<c:choose>
	<c:when test="${val == '0'}">
		<jsp:include page="/WEB-INF/views/portal-aluno.jsp" />
	</c:when>
	<c:when test="${val == '1'}">
		<jsp:include page="/WEB-INF/views/portal-professor.jsp" />
	</c:when>
	<c:when test="${val == '2'}">
		<jsp:include page="/WEB-INF/views/portal-admin.jsp" />
	</c:when>
</c:choose>

<jsp:include page="/WEB-INF/views/footer-portal.jsp" />
