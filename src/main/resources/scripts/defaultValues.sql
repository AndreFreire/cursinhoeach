insert into pessoa(nome,sobrenome,id,tipo,senha) values ('Samuel','Silva','123','2','123');
insert into pessoa(nome,sobrenome,id,tipo,senha) values ('Daniel','Romão','456','1','456');

insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("1","456","Biologia","Citologia", "Composição Química e Bioquímica - Metabolismo", "https://www.10emtudo.com.br/aula/vestibular/composicao_quimica_e_bioquimica_metabolismo/");
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("2","456","Biologia","Citologia", "Composição Química - Modelos; Funções; especializações", "https://www.10emtudo.com.br/aula/vestibular/composicao_quimica_modelos_funcoes_especializacoes/");
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("3","456","Biologia","Citologia", "Permeabilidade", "https://www.10emtudo.com.br/aula/vestibular/permeabilidade/");
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("4","456","Biologia","Citologia", "Funções Metabólicas", "https://www.10emtudo.com.br/aula/vestibular/funcoes_metabolicas/");
	
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("5","456","Biologia","Embriologia Animal", "Tipos de óvulos (ovos): classificação e ocorrência", "https://www.10emtudo.com.br/aula/vestibular/tipos_de_ovulos_ovos_classificacao_e_ocorrencia/");
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("6","456","Biologia","Embriologia Animal", "Segmentação (clivagem): tipos", "https://www.10emtudo.com.br/aula/vestibular/segmentacao_clivagem_tipos/");
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("7","456","Biologia","Embriologia Animal", "Desenvolvimento Embrionário do Anfioxo", "https://www.10emtudo.com.br/aula/vestibular/desenvolvimento_embrionario_do_anfioxo/");
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("8","456","Biologia","Embriologia Animal", "Folhetos Embrionários: tipos e funções", "https://www.10emtudo.com.br/aula/vestibular/folhetos_embrionarios_tipos_e_funcoes/");

SELECT * FROM disciplina where nomeDisciplina='Biologia'