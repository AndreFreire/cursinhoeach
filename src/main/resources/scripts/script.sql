-- *********************************************
-- * SQL MySQL generation
-- *--------------------------------------------
-- * DB-MAIN version: 11.0.0
-- * Generator date: Sep  6 2018
-- * Generation date: Wed Oct 24 22:43:38 2018
-- * LUN file: C:\Users\GJMB\Documents\Web-Cursinho.lun
-- * Schema: Cursinho-web/1-1
-- *********************************************


-- Database Section
-- ________________

create database Cursinho;
use Cursinho;


-- Tables Section
-- _____________

create table DISCIPLINA (
     nome varchar(50) not null,
     disciplina_id int not null AUTO_INCREMENT, 
     constraint ID_DISCIPLINA_ID primary key (disciplina_id));

create table GRADE (
     horario varchar(20) not null,
     dia_semana tinyint not null,
     turma_id int not null,
     disciplina_id int not null,
     constraint ID_GRADE_ID primary key (horario, dia_semana));

create table NOTA (
     data varchar(20) not null,
     nota_max tinyint not null,
     nota_id int not null AUTO_INCREMENT,
     simulado_id int not null,
     pessoa_id int not null,
     constraint ID_NOTA_ID primary key (nota_id));

create table PESSOA (
     nome varchar(25) not null,
     sobrenome varchar(25) not null,
     cpf varchar(15) not null,
     tipo tinyint not null,
     pessoa_id int not null AUTO_INCREMENT,
     turma_id int,
     constraint ID_PESSOA_ID primary key (pessoa_id),
     constraint SID_PESSOA_ID unique (cpf));

create table SIMULADO (
     nome varchar(50) not null,
     simulado_id int not null AUTO_INCREMENT,
     constraint ID_SIMULADO_ID primary key (simulado_id));

create table SUB_NOTA (
     disciplina_id int not null,
     nota_id int not null,
     valor tinyint not null,
     valor_max tinyint not null,
     constraint ID_SUB_NOTA_ID primary key (nota_id, disciplina_id));

create table TURMA (
     turma_id int not null AUTO_INCREMENT,
     constraint ID_TURMA_ID primary key (turma_id));


-- Constraints Section
-- ___________________

-- Not implemented
-- alter table DISCIPLINA add constraint ID_DISCIPLINA_CHK
--     check(exists(select * from GRADE
--                  where GRADE.disciplina_id = disciplina_id));

-- Not implemented
-- alter table DISCIPLINA add constraint ID_DISCIPLINA_CHK
--     check(exists(select * from SUB_NOTA
--                  where SUB_NOTA.disciplina_id = disciplina_id));

alter table GRADE add constraint FKGRA_TUR_FK
     foreign key (turma_id)
     references TURMA (turma_id);

alter table GRADE add constraint FKGRA_DIS_FK
     foreign key (disciplina_id)
     references DISCIPLINA (disciplina_id);

-- Not implemented
-- alter table NOTA add constraint ID_NOTA_CHK
--     check(exists(select * from SUB_NOTA
--                  where SUB_NOTA.nota_id = nota_id));

alter table NOTA add constraint FKTIPO_FK
     foreign key (simulado_id)
     references SIMULADO (simulado_id);

alter table NOTA add constraint FKPOSSUI_FK
     foreign key (pessoa_id)
     references PESSOA (pessoa_id);

alter table PESSOA add constraint FKINSCRITA_FK
     foreign key (turma_id)
     references TURMA (turma_id);

alter table SUB_NOTA add constraint FKSUB_NOT
     foreign key (nota_id)
     references NOTA (nota_id);

alter table SUB_NOTA add constraint FKSUB_DIS_FK
     foreign key (disciplina_id)
     references DISCIPLINA (disciplina_id);

-- Not implemented
-- alter table TURMA add constraint ID_TURMA_CHK
--     check(exists(select * from GRADE
--                  where GRADE.turma_id = turma_id));

-- Not implemented
-- alter table TURMA add constraint ID_TURMA_CHK
--     check(exists(select * from PESSOA
--                  where PESSOA.turma_id = turma_id));


-- Index Section
-- _____________

create unique index ID_DISCIPLINA_IND
     on DISCIPLINA (disciplina_id);

create unique index ID_GRADE_IND
     on GRADE (horario, dia_semana);

create index FKGRA_TUR_IND
     on GRADE (turma_id);

create index FKGRA_DIS_IND
     on GRADE (disciplina_id);

create unique index ID_NOTA_IND
     on NOTA (nota_id);

create index FKTIPO_IND
     on NOTA (simulado_id);

create index FKPOSSUI_IND
     on NOTA (pessoa_id);

create unique index ID_PESSOA_IND
     on PESSOA (pessoa_id);

create unique index SID_PESSOA_IND
     on PESSOA (cpf);

create index FKINSCRITA_IND
     on PESSOA (turma_id);

create unique index ID_SIMULADO_IND
     on SIMULADO (simulado_id);

create unique index ID_SUB_NOTA_IND
     on SUB_NOTA (nota_id, disciplina_id);

create index FKSUB_DIS_IND
     on SUB_NOTA (disciplina_id);

create unique index ID_TURMA_IND
     on TURMA (turma_id);
