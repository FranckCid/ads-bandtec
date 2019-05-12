create database pet;
use pet;

create table cliente(
	idCliente int auto_increment primary key,
    nome varchar(255) not null,
    telefone varchar(255) not null,
    bairro varchar(255) not null,
    sexo enum('f', 'm') not null
) auto_increment = 1;

create table pet(
	idPet int auto_increment primary key,
    nome varchar(255) not null,
    raca varchar(255) not null,
    data_de_nasc date not null,
    especie varchar(255) not null,
    fkDono int not null,
    foreign key(fkDono) references cliente(idCliente)
) auto_increment = 101;

insert into cliente values
(null, 'Juca Albuquerque', '9999999999', 'Patriarca', 'm'),
(null, 'Maria Albuquerque', '9999999999', 'Arthur Alvim', 'f'),
(null, 'Rodrigo Malta', '9999999999', 'Guilhermina', 'm'),
(null, 'Lucia Silva', '9999999999', 'Patriarca', 'f');

insert into pet values
(null, 'Nescau', 'Cachorro', '2000-04-23', 'Cachorro', 1),
(null, 'Bola', 'Gato', '2000-04-23', 'Gato', 3),
(null, 'Neve', 'Peixe', '2000-04-23', 'Peixe', 4),
(null, 'Floco', 'Cachorro', '2000-04-23', 'Cachorro', 2),
(null, 'KitKat', 'Dinossauro', '2000-04-23', 'Dinossauro', 1);

select * from cliente;
select * from pet;

alter table cliente modify column nome varchar(256);

select * from pet where especie = 'Cachorro';
select nome, data_de_nasc from pet;

select * from pet order by nome asc;
select * from cliente order by bairro desc;


select * from pet where nome like 'b%';

select * from cliente where nome like '%albuquerque';

update cliente set telefone = '8888888' where idCliente = 1;

select * from cliente where idCliente = 1;
select * from pet, cliente where fkDono = idCliente;
select * from cliente where sexo = 'f';

alter table cliente drop column sexo;
delete from pet where idPet = 3;
select * from pet;
drop table pet, cliente;
