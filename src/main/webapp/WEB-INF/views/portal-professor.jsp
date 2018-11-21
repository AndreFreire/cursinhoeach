<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="subject-teacher">
	<h4>${model.getMateria()}</h4>
	<div class="row list-subjects ">
		<div class="col-12">
			<ul class="list-group" id="list-group-accordion">
				<c:forEach var="subjectTitle" items="${model.getSubjectsTitle()}"
					varStatus="loop">
					<li class="list-group-item">
						<h5 class="list-group-heading" data-toggle="collapse"
							data-target="#item-${loop.index}"
							data-parent="#list-group-accordion">
							${subjectTitle}<i class="fa fa-chevron-right pull-right"></i>
						</h5>
						<div id="item-${loop.index}" class="collapse">
							<ul class="list-group">
								<c:forEach var="subjectModel"
									items="${model.getSubjectContent(subjectTitle)}">
									<li class="list-group-item">
										<form action="removeSubject" method="post">
											<input type="hidden" name="key" value="${subjectModel.getId()}" />
											<button type="submit" class="remove-subject" title="remover">
												<i class="fa fa-remove" ></i>
											</button>
										</form> <a href="${subjectModel.getLink()}">
											${subjectModel.getConteudo()} </a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</li>
				</c:forEach>
				<li class="list-group-item">
					<h5 class="list-group-heading">
						Inserir nova matéria <i class="fa fa-edit pull-right"></i>
					</h5>
					<div id="item-newGroupItem">
						<ul class="list-group">
							<li class="list-group-item">
								<form action="addSubject" method="post" accept-charset="UTF-8">
									<input  type="text" name="grupoconteudo" placeholder="Grupo" class="input-addSubject input-grupo"/> <input
										type="text" name="conteudo" placeholder="Conteúdo" class="input-addSubject input-conteudo"/> <input
										type="text" name="link" placeholder="Link" class="input-addSubject input-link"/>
									<button type="submit" class="add-subject" title="adcionar">
										<i class="fa fa-check"></i>
									</button>
								</form>
							</li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>