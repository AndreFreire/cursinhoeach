create database Cursinho;
use Cursinho;

create table pessoa (
     nome varchar(25) not null,
     sobrenome varchar(25) not null,
     cpf varchar(15) not null,
     tipo varchar(1) not null,
     senha varchar(25) not null,
     constraint pk_cpf primary key (cpf));

create table nota(
	simulado varchar(25) not null,
    pessoaId varchar(15) not null,
    materia varchar(25) not null,
    nota varchar(4) not null,
    CONSTRAINT PK_nota PRIMARY KEY (simulado,pessoaId,materia),
    foreign key (pessoaId) references pessoa(CPF),
    foreign key (simulado) references simulado(nome)
);


create table simulado(
	nome varchar(25) not null,
    materia varchar(25) not null,
    notaMax varchar(4) not null,
    CONSTRAINT PK_simulado PRIMARY KEY (nome,materia)
);


create table disciplina(
	cpf varchar(15) not null,
    disciplina varchar(25) not null,
    link varchar(2555) not null,
    conteudo varchar(255) not null,
    grupo varchar(255) not null,
    CONSTRAINT PK_disciplina PRIMARY KEY (cpf,disciplina,grupo,conteudo)
);
