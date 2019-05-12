create database ex01;
use ex01;
create table empresas(
	id int primary key,
    nome varchar(255),
    representante varchar(255)
);
create table inst_origin(
	id int primary key,
    nome varchar(255),
    bairro varchar(255)
);
create table aluno(
	ra int primary key,
    nome varchar(255),
    phone int,
    email varchar(255),
    hobby varchar(255),
    empresa int,
    inst int,
    foreign key(empresa)  references empresas(id),
    foreign key(inst)  references inst_origin(id)
);
insert into empresas values 
(1, 'Tivit', 'Ricardo'),
(2, 'TOTVS	', 'Alexandre'),
(3, 'Easynvest', 'Ana'),
(4, 'Digital Systems', 'Marcelo');
insert into inst_origin values
(1, 'SENAI', 'Bras'),
(2, 'ETEC', 'Liberdade'),
(3, 'IF', 'Consolação');

insert into aluno values
(078, 'Aluno 1', '999999999', 'email@email.com', 'hobby', 1, 3),
(079, 'Aluno 2', '999999999', 'email@email.com', 'hobby', 2, 2),
(077, 'Aluno 3', '999999999', 'email@email.com', 'hobby', 3, 1);

select * from empresas;
select * from inst_origin;

select * from aluno as a, empresas as e, inst_origin as i
	where a.empresa = e.id and a.inst = i.id;
    
select * from aluno as a, empresas as e, inst_origin as i
	where a.empresa = e.id and a.inst = i.id and
			a.empresa = 1;
            
select * from aluno as a, empresas as e, inst_origin as i
	where a.empresa = e.id and a.inst = i.id and
			a.inst = 1;

# Tipo decimal: decimal(Quantidade de digitos antes da virgula, quantidade de dígitos após a virgula)
alter table aluno add column nota decimal(4, 2);
update aluno set nota = 7.5 where ra = 78;
update aluno set nota = 9.5 where ra = 77;

alter table aluno change nota nota_continuada decimal(4, 2);