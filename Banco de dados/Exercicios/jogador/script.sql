create database praticajogador;
use praticajogador;

create table time_fut(
	id int primary key auto_increment,
    nome varchar(255) not null,
    nome_tecnico varchar(255) not null,
    data_formacao date not null
);

create table jogador (
	id int primary key auto_increment,
    nome varchar(255) not null,
	posicao varchar(255) not null,
    conselheiro int not null,
    foreign key (conselheiro) references jogador(id)
);

insert into time_fut values
(null, 'Corinthians', 'Titi', '1910-09-01'),
(null, 'SP', 'Santos', '1910-09-01'),
(null, 'Santos', 'Titi', '1910-09-01'),
(null, 'Pal', 'Rodrigo', '1910-09-01'),
(null, 'Fluflu', 'Titi', '1910-09-01'),
(null, 'Porto', 'Rodrigo', '1910-09-01'),
(null, 'Barça', 'Titi', '1910-09-01'),
(null, 'Betinho', 'Betinho', '1910-09-01'),
(null, 'Rodrigo', 'Titi', '1910-09-01'),
(null, 'Cavacalsten', 'Titi', '1910-09-01');

insert into jogador values
(null, 'Jogador 1', 'Nsei', 1),
(null, 'Jogador 2', 'Sim', 2),
(null, 'Jogador 3', 'É', 3),
(null, 'Jogador 4', 'Nsei', 4),
(null, 'Jogador 5', 'Atacante', 5),
(null, 'Jogador 6', 'Nsei', 6),
(null, 'Jogador 7', 'Desconheço', 7),
(null, 'Jogador 8', 'Nsei', 8);

select * from time_fut;
select * from jogador;

select (nome, nome_tecnico) from time_fut where nome like 't%';

select * from jogador order by posicao desc;

