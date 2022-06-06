create database Constellar;
use Constellar;

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
tipo varchar(45),
email varchar(45),
senha varchar(32)
);

select * from Base;

create table Base(
idBase int primary key auto_increment,
fkUsuario int,
foreign key (fkUsuario) references Usuario(idUsuario)
);

create table Registro (
idRegistro int auto_increment,
fkBase int,
foreign key (fkBase) references Base (idBase),
primary key (idRegistro, fkBase),
Tempo datetime default current_timestamp,
Resultado int
);