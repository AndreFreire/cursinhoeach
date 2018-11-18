<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="subject-teacher">
	<h4>${materia}</h4>
	
	<div class="row list-subjects ">
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