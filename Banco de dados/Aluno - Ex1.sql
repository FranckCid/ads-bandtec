create database ex1;
use ex1;

create table curso(
	id int primary key auto_increment,
    nome varchar(255),
    coordenador varchar(255)
) auto_increment = 100;

insert into curso (nome, coordenador) values 
('ADS', 'Gerson'),
('BD', 'Marise'),
('REDES', 'Alex');

select * from curso;

create table aluno(
	ra int primary key,
    nome varchar(255),
    bairro varchar(255)
);

insert into aluno values
(1191004, 'Luiz Fernando', 'Itaim'),
(1191116, 'Marcos Paulo', 'Vila Primaveira');

select * from aluno;

alter table aluno add column curso int;
desc aluno;
#			referenciadora   ->   coluna			 tabela referenciada e coluna da mesma
alter table aluno add foreign key (curso) references curso(id);

update aluno set curso=100 where ra in (1191004, 1191116);

update aluno set curso=102 where ra=(1191004);

select * from aluno where curso=100;

# Mescla de forma ERRADA
select * from aluno, curso;

# Maneira CORRETA de mesclar as tabelas
select * from aluno, curso where aluno.curso = curso.id;
select * from aluno as a, curso as c where a.curso = c.id;
select * from aluno, curso where curso=id;


select ra, a.nome, bairro, curso, c.nome, coordenador 
	from aluno as a, curso as c where curso=id;
   
select a.*, c.nome, coordenador 
	from aluno as a, curso as c where curso=id;

select a.*, c.nome, coordenador 
	from aluno as a, curso as c where curso=id and c.nome = 'ADS';