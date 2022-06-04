-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */
create database Constellar;
use Constellar;

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
tipo varchar(11),
tipo varchar(45),
email varchar(45),
senha varchar(32)
);

create table Base(
idBase int primary key auto_increment,
titulo varchar (45),
fkUsuario int,
foreign key (fkUsuario) references Usuario(idUsuario)
);

create table Items (
idItem int auto_increment,
fkBase int,
foreign key (fkBase) references Base (idBase),
primary key (idIten, fkBase),
URL varchar(100),
registro datetime default current_timestamp,
descricao text
);




/* para sql server - remoto - produção */

-- CREATE TABLE usuario (
-- 	id INT PRIMARY KEY IDENTITY(1,1),
-- 	nome VARCHAR(50),
-- 	email VARCHAR(50),
-- 	senha VARCHAR(50),
-- );

-- CREATE TABLE aviso (
-- 	id INT PRIMARY KEY IDENTITY(1,1),
-- 	titulo VARCHAR(100),
--     descricao VARCHAR(150),
-- 	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
-- ); 

-- CREATE TABLE medida (
-- 	id INT PRIMARY KEY IDENTITY(1,1),
-- 	temperatura DECIMAL,
-- 	umidade DECIMAL,
-- 	momento DATETIME,
-- 	fk_aquario INT
-- );


