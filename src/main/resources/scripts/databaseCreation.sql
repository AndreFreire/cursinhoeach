create database Cursinho;
use Cursinho;

create table pessoa (
     nome varchar(25) not null,
     sobrenome varchar(25) not null,
     id varchar(50) not null,
     tipo varchar(1) not null,
     senha varchar(25) not null,
     disciplina varchar(255),
     constraint PK_id primary key (id));



create table nota(
	simulado varchar(25) not null,
    pessoaid varchar(15) not null,
    materia varchar(25) not null,
    nota varchar(4) not null,
    CONSTRAINT PK_nota PRIMARY KEY (simulado,pessoaid,materia),
    foreign key (pessoaid) references pessoa(id)
);


create table disciplina(
	id int not null,
    nomedisciplina varchar(25) not null,
    grupoconteudo varchar(255) not null,
    conteudo varchar(255) not null,
    link varchar(2555) not null,
    CONSTRAINT UC_Disciplina UNIQUE (grupoConteudo,conteudo,nomeDisciplina),
    CONSTRAINT PK_disciplina PRIMARY KEY (id)
);

update pessoa set disciplina =null where id = "123";

select * from pessoa;
