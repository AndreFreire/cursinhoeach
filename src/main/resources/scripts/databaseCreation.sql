create database Cursinho;
use Cursinho;

create table pessoa (
     nome varchar(25) not null,
     sobrenome varchar(25) not null,
     id varchar(15) not null,
     tipo varchar(1) not null,
     senha varchar(25) not null,
     constraint PK_id primary key (id));

create table nota(
	simulado varchar(25) not null,
    pessoaid varchar(15) not null,
    materia varchar(25) not null,
    nota varchar(4) not null,
    CONSTRAINT PK_nota PRIMARY KEY (simulado,pessoaid,materia),
    foreign key (pessoaid) references pessoa(id),
    foreign key (simulado,materia) references simulado(nome,materia)
);


create table simulado(
	nome varchar(25) not null,
    materia varchar(25) not null,
    notamax varchar(4) not null,
    CONSTRAINT PK_simulado PRIMARY KEY (nome,materia)
);


create table disciplina(
	id int not null,
	idpessoa varchar(15) not null,
    nomedisciplina varchar(25) not null,
    grupoconteudo varchar(255) not null,
    conteudo varchar(255) not null,
    link varchar(2555) not null,
    CONSTRAINT UC_Disciplina UNIQUE (grupoConteudo,conteudo,nomeDisciplina),
    foreign key (idPessoa) references pessoa(id),
    CONSTRAINT PK_disciplina PRIMARY KEY (id)
);

drop table nota;

