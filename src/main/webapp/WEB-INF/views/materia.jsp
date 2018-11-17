<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/WEB-INF/views/header.jsp" />

<section class="padrao materia">
	<h3>${title}</h3>
	<hr />
	<div class="container materia">
		<div class="row ">
			<div class="col-6 subject-description">
				<p class="text-left">${description}</p>
			</div>
			<div class="col-6 subject-figure">
				<img src="/resources/images/subjects/${image}" class="subject-image">
			</div>
		</div>
		<div class="row list-subjects">
			<div class="col-12">
				<ul class="list-group" id="list-group-accordion">
					<c:forEach var="subjectTitle" items="${model.getSubjectsTitle()}" varStatus="loop">
						<li class="list-group-item">
							<h5 class="list-group-heading" data-toggle="collapse"
								data-target="#item-${loop.index}"
								data-parent="#list-group-accordion">
								${subjectTitle}<i class="fa fa-chevron-right pull-right"></i>
							</h5>
							<div id="item-${loop.index}" class="collapse">
								<ul class="list-group">
									<c:forEach var="subjectSet"
										items="${model.getSubjectContent(subjectTitle)}">
										<li class="list-group-item">
										<a href="${subjectSet.getValue()}">
										${subjectSet.getKey()}
										</a>
										</li>
									</c:forEach>
								</ul>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</section>
<jsp:include page="/WEB-INF/views/footer.jsp" />
