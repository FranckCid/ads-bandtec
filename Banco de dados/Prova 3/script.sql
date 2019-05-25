-- 1

create database provaiii;
use provaiii;

create table area(
	idArea int primary key auto_increment,
	nome varchar(45) not null
) auto_increment = 1000;

create table professor(
	idProfessor int primary key auto_increment,
	nome varchar(255) not null,
	dataNasc date not null,
	fkArea int not null,
    foreign key(fkArea) references area(idArea)
);

create table faculdade(
	idFaculdade int primary key auto_increment,
	nome varchar(255) not null,
	bairro varchar(45) not null    
) auto_increment = 100;

create table leciona(
	fkProfessor int,
	fkFaculdade int,
    horas int not null,
    foreign key (fkProfessor) references professor(idProfessor),
    foreign key (fkFaculdade) references faculdade(idFaculdade),
    primary key(fkProfessor, fkFaculdade)
);

-- 2

insert into area values 
(null, 'tecnologia da informação'),
(null, 'banco de dados'),
(null, 'algorítimos'),
(null, 'arquitetura computacional'),
(null, 'socioemocional');

insert into professor values
(null, 'yoshi', '1980-02-23', 1003),
(null, 'diego', '1980-02-23', 1003),
(null, 'celia', '1980-02-23', 1004),
(null, 'marise', '1980-02-23', 1001),
(null, 'kaline', '1980-02-23', 1002);

insert into faculdade values
(null, 'bandtec', 'consolação'),
(null, 'fiap', 'sé'),
(null, 'senai', 'brás'),
(null, 'unicamp', 'campinas'),
(null, 'usp', 'butantã');

insert into leciona values
(1, 101, 50),
(3, 101, 50),
(2, 103, 25),
(4, 104, 75),
(4, 103, 75);

-- 4

select * from area;
select * from professor;
select * from faculdade;
select * from leciona;

-- 5
select * from area
	join professor on fkArea = idArea;
    
-- 6
select * from area
	join professor on fkArea = idArea
    where idArea = 1003;

-- 7
select avg(horas) as 'Média de Horas', sum(horas) as 'Total de Horas' from leciona;

-- 8
select min(horas) as 'Menor', max(horas) as 'Maior' from leciona;

-- 9
select * from leciona 
	join professor on fkProfessor = idProfessor
    join faculdade on fkFaculdade = idFaculdade;
    
-- 10    
select * from leciona 
	join professor on fkProfessor = idProfessor
    join faculdade on fkFaculdade = idFaculdade
    where idProfessor = 2;
    
-- 11
select * from leciona 
	join professor on fkProfessor = idProfessor
    join faculdade on fkFaculdade = idFaculdade
    join area on fkArea = idArea;

-- 12
select fkProfessor, avg(horas) as 'Média', sum(horas) as 'Total' from leciona group by fkProfessor;


-- 13
select fkFaculdade, avg(horas) as 'Média', sum(horas) as 'Total' from leciona group by fkFaculdade;

-- 14
select fkProfessor, min(horas) as 'Menor', max(horas) as 'Maior' from leciona group by fkProfessor;

-- 15
select fkFaculdade, min(horas) as 'Menor', max(horas) as 'Maior' from leciona group by fkFaculdade;
