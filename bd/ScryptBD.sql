create database teste;
use teste;

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
tipo varchar(11),
descricao varchar(100)
);
create table Forum(
idDiscussao int primary key auto_increment,
Discussao varchar(800),
statusDisc char(7),
fkUsuario int,
foreign key (fkUsuario) references Usuario(idUsuario)
);
create table respostas (
idResposta int auto_increment,
fkDiscussao int,
foreign key (fkDiscussao) references Forum(idDiscussao),
primary key (idResposta,fkDiscussao),
resposta varchar(800)
);

insert into Usuario values
(null,'GalinhoChickerLittle123', 'competitivo', 'eu gosto de cartinhas maneiras'),
(null, 'DarkGuy1', 'fã do anime', 'yugi moto maior de todos, vai dark magician'),
(null, 'Manito', 'casual', 'devoto ao pendulum summon');

insert into forum values
(null,'Duvida minha sobre a pendulum summon, por que ela existe???','aberto',1),
(null,'Alguém me explica a regra de prioridade por favor?','fechado',2),
(null,'Odiei a Banlist mano','aberto',1);

insert into respostas values
(null, 1, 'Mano eu também não sei velho, gatilho d+, bagulho debalanceado, deve ser pra poder cobrar caro nos cards'),
(null, 2, 'Basicamente se trata de uma ação sua poder se impor em situações espicificas, como um summon, existem monstros que se ativam a tal ação');

select * from usuario;
select * from forum;
select * from respostas;