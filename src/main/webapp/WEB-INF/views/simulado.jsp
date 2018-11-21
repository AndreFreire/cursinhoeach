<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<p>Para subir as notas dos alunos em um simulado, baixe o arquivo
	.csv que cont�m o nome de todos. Nesse arquivo tamb�m cont�m as
	disciplinas que geralmente s�o cobradas nos simulados, caso queira
	adicionar ou remover alguma disciplina basta remover ou adcionar o nome
	da disciplina da primeira linha.</p>
<p>Ap�s modificar o arquivo .csv, fa�a o upload do mesmo, por�m �
	necess�rio que o nome do arquivo seja o nome do simulado. Ex.: Enem.csv</p>
<p>
	Download:<a href="/resources/images/csv.png" download> <img
		src="/resources/images/csv.png" title="csv file to download" />
	</a>
</p>

<form action="myform.cgi">
	<p>
	Arquivo .csv com as notas dos alunos:<input type="file" name="fileupload" value="fileupload" id="fileupload">
	<input type="submit" value="Upload">
	</p>
</form>


