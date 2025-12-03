

create database Task_Manager;

use Task_Manager;

create table usuario(
	id int auto_increment primary key,
    nome varchar(250),
    email varchar(150),
    senha varchar(20)
);
create table categoria(
	id int auto_increment primary key,
    nome varchar(100),
    descricao varchar(200)
);
create table tarefas(
	id int auto_increment primary key,
    titulo varchar(100),
    descricao varchar(700),
    dataInicial datetime,
    dataVencimento datetime,
    fk_idUsuario int,
    fk_idCategoria int,
    foreign key (fk_idUsuario) references usuario(id),
    foreign key (fk_idUsuario) references categoria(id)
    
);
