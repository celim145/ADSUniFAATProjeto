create database escola;
Use escola;

create table aluno(
    id_aluno int primary key generated always as identity,
    nome varchar(50) not null,
    data_nascimento date not null,
    id_turma int,
    nome_responsavel varchar(50) not null,
    telefone_responsavel varchar(15) not null,
    email_responsavel varchar(50) not null,
    informacoes_adicionais varchar(255),

    constraint fk_turma foreign key (id_turma) 
    references turma(id_turma)
);

create table turma(
    id_turma int primary key generated always as identity,
    nome_turma varchar(50) not null,
    id_professor int,
    horario varchar(50) not null,

    constraint fk_professor foreign key (id_professor)
    references professor(id_professor)
);

create table professor(
    id_professor int primary key generated always as identity,
    nome varchar(50) not null,
    telefone varchar(15) not null,
    email varchar(50) not null,
);