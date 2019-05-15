create database Engenheiro;
use Engenheiro;

create table engenheiro(
	idEngenheiro int primary key not null,
    CREA int,
    enome varchar(45),
    salario decimal,
    sexo enum('m', 'f','o')
);

-- drop table engenheiros;

insert into engenheiro values
	(1, 892, 'Cidade', 13000.00, 'o'),
    (2, 832, 'Hessel', 12500.00, 'f'),
    (3, 666, 'William', 1500.00, 'm'),
    (4, 242, 'Regino', 17000.00, 'm');
    
create table obra(
	idObra int primary key auto_increment,
    onome varchar (45), 
    local varchar (45)
)auto_increment=1000;

insert into obra values
	(null, 'de Deus', 'na minha casa'),
    (null, 'monalisa', 'italia'), 
    (null, 'masp', 'paulista'),
    (null, 'prédio do batmá', 'centro'); 
    

create table dependente(
	idDependente int,
    dnome varchar (45),
    dataNasc date,
    relacao varchar (20),
    fkEngenheiro int,
    foreign key (fkEngenheiro) references engenheiro(idEngenheiro),
    primary key (idDependente, fkEngenheiro)
);

create table trabalha (
	idEngenheiro int,
    foreign key (idEngenheiro) references engenheiro(idEngenheiro),
    idObra int,
    foreign key (idObra) references obra(idObra),
    primary key (idEngenheiro, idObra),
    hora int
);

-- desc engenheiro;
-- desc obra;
-- desc dependente;
-- desc trabalha;

insert into dependente values
(1, 'Flávia', '2010-02-19', 'filha', 4),
(2, 'Reinaldo', '2014-05-30', 'filho', 4),
(1, 'Hessel', '2000-02-07', 'esposa', 1),
(2, 'Malu', '2019-04-12', 'filho', 1),
(1, 'Cidade', '2000-09-11', 'marido', 2),
(1, 'Mini Drácula', '2019-01-01', 'filho', 3);

-- a
select * from dependente;
select * from engenheiro;
select * from obra;
select * from trabalha;

insert into trabalha values
(1, 1000, 150),
(2, 1001, 200),
(3, 1002, 100),
(4, 1003, 230);

-- b
select * from engenheiro 
	inner join dependente on fkengenheiro = idEngenheiro;

-- c    
select * from engenheiro 
	inner join dependente on fkEngenheiro = idEngenheiro 
			where idEngenheiro = 2;

-- d
select * from engenheiro
	inner join dependente on fkEngenheiro = idEngenheiro 
			where relacao = 'filho';

-- e		
select * from trabalha as t
	inner join engenheiro as e on e.idEngenheiro = t.idEngenheiro
    inner join obra as o on o.idObra = t.idObra;
    
-- f
select * from trabalha as t
	inner join engenheiro as e on e.idEngenheiro = t.idEngenheiro
    inner join obra as o on o.idObra = t.idObra
    where o.idObra = 1003;
    
-- g

select * from trabalha as t
	inner join engenheiro as e on e.idEngenheiro = t.idEngenheiro
    inner join obra as o on o.idObra = t.idObra 
    inner join dependente as d on d.fkEngenheiro = e.idEngenheiro;
    
-- h

select * from trabalha as t
	inner join engenheiro as e on e.idEngenheiro = t.idEngenheiro
    inner join obra as o on o.idObra = t.idObra 
    inner join dependente as d on d.fkEngenheiro = e.idEngenheiro
		where e.idEngenheiro = 3;
        
-- i 

select * from trabalha as t
	inner join engenheiro as e on e.idEngenheiro = t.idEngenheiro
    inner join obra as o on o.idObra = t.idObra 
    inner join dependente as d on d.fkEngenheiro = e.idEngenheiro
		where o.idObra = 1003;
        
 -- j       
select sum(salario) from engenheiro;

-- k
select avg(salario) from engenheiro;

-- l 
select min(salario), max(salario) from engenheiro;

-- m
select distinct salario from engenheiro;

-- n
select count(distinct salario) from engenheiro;    
    
    
-- inicia transação
start transaction;
delete from dependente where idDependente=1;
select * from dependente;
-- desfaz
rollback;
-- confirma
commit;
select * from dependente;