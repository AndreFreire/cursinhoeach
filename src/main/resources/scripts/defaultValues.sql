insert into pessoa(nome,sobrenome,id,tipo,senha) values ('Samuel','Silva','123','2','123');
insert into pessoa(nome,sobrenome,id,tipo,senha) values ('Daniel','Romão','456','1','456');
insert into pessoa(nome,sobrenome,id,tipo,senha) values ('Ricardo','Oliveira','789','0','789');

insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("1","456","Biologia","Citologia", "Composição Química e Bioquímica - Metabolismo", "https://www.10emtudo.com.br/aula/vestibular/composicao_quimica_e_bioquimica_metabolismo/");
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("2","456","Biologia","Citologia", "Composição Química - Modelos; Funções; especializações", "https://www.10emtudo.com.br/aula/vestibular/composicao_quimica_modelos_funcoes_especializacoes/");
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("3","456","Biologia","Citologia", "Permeabilidade", "https://www.10emtudo.com.br/aula/vestibular/permeabilidade/");
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("4","456","Biologia","Citologia", "Funções Metabólicas", "https://www.10emtudo.com.br/aula/vestibular/funcoes_metabolicas/");
	
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("5","456","Biologia","Embriologia Animal", "Tipos de óvulos (ovos): classificação e ocorrência", "https://www.10emtudo.com.br/aula/vestibular/tipos_de_ovulos_ovos_classificacao_e_ocorrencia/");
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("6","456","Biologia","Embriologia Animal", "Segmentação (clivagem): tipos", "https://www.10emtudo.com.br/aula/vestibular/segmentacao_clivagem_tipos/");
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("7","456","Biologia","Embriologia Animal", "Desenvolvimento Embrionário do Anfioxo", "https://www.10emtudo.com.br/aula/vestibular/desenvolvimento_embrionario_do_anfioxo/");
insert into disciplina(id,idPessoa,nomeDisciplina, grupoConteudo, conteudo, link) values("8","456","Biologia","Embriologia Animal", "Folhetos Embrionários: tipos e funções", "https://www.10emtudo.com.br/aula/vestibular/folhetos_embrionarios_tipos_e_funcoes/");

insert into simulado(nome, materia,notamax) values("Enem","Português","10");
insert into simulado(nome, materia,notamax) values("Enem","Matemática","10");
insert into simulado(nome, materia,notamax) values("Enem","História","10");
insert into simulado(nome, materia,notamax) values("Enem","Geografia","10");
insert into simulado(nome, materia,notamax) values("Enem","Biologia","10");
insert into simulado(nome, materia,notamax) values("Enem","Filosofia","5");
insert into simulado(nome, materia,notamax) values("Enem","Sociologia","5");
insert into simulado(nome, materia,notamax) values("Enem","Literatura","10");
insert into simulado(nome, materia,notamax) values("Enem","Química","10");
insert into simulado(nome, materia,notamax) values("Enem","Física","10");
insert into simulado(nome, materia,notamax) values("Enem","Inglês","5");

insert into simulado(nome, materia,notamax) values("Fuvest","Português","10");
insert into simulado(nome, materia,notamax) values("Fuvest","Matemática","10");
insert into simulado(nome, materia,notamax) values("Fuvest","História","10");
insert into simulado(nome, materia,notamax) values("Fuvest","Geografia","10");
insert into simulado(nome, materia,notamax) values("Fuvest","Biologia","10");
insert into simulado(nome, materia,notamax) values("Fuvest","Filosofia","5");
insert into simulado(nome, materia,notamax) values("Fuvest","Sociologia","5");
insert into simulado(nome, materia,notamax) values("Fuvest","Literatura","10");
insert into simulado(nome, materia,notamax) values("Fuvest","Química","10");
insert into simulado(nome, materia,notamax) values("Fuvest","Física","10");
insert into simulado(nome, materia,notamax) values("Fuvest","Inglês","5");

insert into simulado(nome, materia,notamax) values("Ita","Português","10");
insert into simulado(nome, materia,notamax) values("Ita","Matemática","10");
insert into simulado(nome, materia,notamax) values("Ita","Literatura","10");
insert into simulado(nome, materia,notamax) values("Ita","Química","10");
insert into simulado(nome, materia,notamax) values("Ita","Física","10");
insert into simulado(nome, materia,notamax) values("Ita","Inglês","5");


insert into nota(simulado, materia,nota,pessoaid) values("Ita","Português","9","789");
insert into nota(simulado, materia,nota,pessoaid) values("Ita","Matemática","6","789");
insert into nota(simulado, materia,nota,pessoaid) values("Ita","Literatura","7","789");
insert into nota(simulado, materia,nota,pessoaid) values("Ita","Química","8","789");
insert into nota(simulado, materia,nota,pessoaid) values("Ita","Física","5","789");
insert into nota(simulado, materia,nota,pessoaid) values("Ita","Inglês","4","789");


insert into nota(simulado, materia,nota,pessoaid) values("Fuvest","Português","9","789");
insert into nota(simulado, materia,nota,pessoaid) values("Fuvest","Matemática","7","789");
insert into nota(simulado, materia,nota,pessoaid) values("Fuvest","História","6","789");
insert into nota(simulado, materia,nota,pessoaid) values("Fuvest","Geografia","5","789");
insert into nota(simulado, materia,nota,pessoaid) values("Fuvest","Biologia","4","789");
insert into nota(simulado, materia,nota,pessoaid) values("Fuvest","Filosofia","3","789");
insert into nota(simulado, materia,nota,pessoaid) values("Fuvest","Sociologia","2","789");
insert into nota(simulado, materia,nota,pessoaid) values("Fuvest","Literatura","1","789");
insert into nota(simulado, materia,nota,pessoaid) values("Fuvest","Química","10","789");
insert into nota(simulado, materia,nota,pessoaid) values("Fuvest","Física","5","789");
insert into nota(simulado, materia,nota,pessoaid) values("Fuvest","Inglês","5","789");

