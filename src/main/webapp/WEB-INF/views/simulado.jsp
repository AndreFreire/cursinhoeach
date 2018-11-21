<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<p>Para subir as notas dos alunos em um simulado, baixe o arquivo
	"modelo.txt" que contém o nome de todos os alunos. Nesse arquivo também
	contém as disciplinas que geralmente são cobradas nos simulados, caso
	queira adicionar ou remover alguma disciplina basta remover ou adcionar
	o nome da disciplina da primeira linha.</p>
<p>Abra o excel e importe os dados contido no arquivo "modelo.txt",
	selecione a vírgula como delimitador e encoding UTF-8. Após modificar o arquivo excel,
	salve o mesmo com a extensão .csv UTF	-8 separado por virgulas.</p>
<p>Download:
<form action="downloadFile" method="GET">
	<input class="btn btn-outline-dark" type="submit" value="Download Modelo" />
	<!-- <img
		src="/resources/images/csv.png" title="csv file to download" type="submit"/> -->
</form>
</p>

<form action="uploadFile" method="POST" enctype="multipart/form-data">
	<p>
		Arquivo .csv com as notas dos alunos:<input type="file"
			name="fileupload" id="fileupload" required=""> <input
			type="submit" value="Upload">
	</p>
</form>


