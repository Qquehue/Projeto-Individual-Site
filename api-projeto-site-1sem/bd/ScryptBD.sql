<<<<<<< HEAD
create database ConstellarYGO;
use ConstellarYGO;
=======
create database Constellar;
use Constellar;
>>>>>>> 5f950f6e602d264f402c77f2af07db0f2cb139b6

create table Usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
<<<<<<< HEAD
tipo varchar(11),
=======
tipo varchar(45),
>>>>>>> 5f950f6e602d264f402c77f2af07db0f2cb139b6
email varchar(45),
senha varchar(32)
);

<<<<<<< HEAD
=======
	
>>>>>>> 5f950f6e602d264f402c77f2af07db0f2cb139b6
create table Base(
idBase int primary key auto_increment,
titulo varchar (45),
fkUsuario int,
foreign key (fkUsuario) references Usuario(idUsuario)
);
<<<<<<< HEAD
create table Itens (
idIten int auto_increment,
=======

create table Itens (
idItem int auto_increment,
>>>>>>> 5f950f6e602d264f402c77f2af07db0f2cb139b6
fkBase int,
foreign key (fkBase) references Base (idBase),
primary key (idIten, fkBase),
URL varchar(100),
registro datetime default current_timestamp,
descricao text
);


insert into Usuario values
(null,'DarkNight','marquinhos@email.com','Casual','Jogador Casual, Rogue Decks'),
(null,'YugiGuy','souza123@email.com','fã do anime','O Mago definitivo em termos de ataque e defesa'),
(null,'bestDino','SilvaVictor@email.com','competitivo','Eu amo ler cartinhas');

insert into forum (titulo,discussao,statusDisc,tipo,URL,fkUsuario)values
('odeio pendulum summon', 'Acho que o fato deu eu odiar a pendulum summon é evidente, só quero saber que compartilha dessa ideia','aberto',
'texto','none',1);
insert into forum (titulo,discussao,statusDisc,tipo,URL,fkUsuario)values
('duvida sobre prioridade', 'queria saber sobre como funciona a questão da prioridade no jogo','aberto',
'texto','none',1),
('amo dark magician', 'alguém poderia me mandar um deck build de Mago Negro por favor?','aberto','texto','none',2),
('missprint', 'olha a missprint que eu tirei hahahaha','fechado','imagem','arquivos/imagens/missprint',3);

insert into respostas (fkUsuario, fkForum, descricao) values
(1,2,'gente queria deixar claro que me refiro mais em casos de negações de summon'),
(2,2,'oi tudo bem? a prioridade acontece uma vez que você cumpre uma ação, se a summon for negada,você nem chega a cumprir a condição para poder ativar o efeito em questão'),
(3,3,'segue esse link https//:decklist.com');