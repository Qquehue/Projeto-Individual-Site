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