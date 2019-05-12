-- a) Criar um banco de dados chamado Personal.
create database Personal;

-- b) Selecionar esse banco de dados.

use Personal;

-- c) Criar as tabelas correspondentes à sua modelagem.

create table personal (
    idPersonal int primary key auto_increment,
    nome varchar(255) not null,
    telefone char(15) not null,
    area_atuacao varchar(255) not null,
    orientador int,
    foreign key (orientador)
        references personal (idPersonal)
)  auto_increment=1;


create table aluno (
    idAluno int primary key auto_increment,
    nome varchar(255) not null,
    bairro varchar(255) not null,
    data_nasc date not null,
    treinador int not null,
    foreign key (treinador)
        references personal (idPersonal)
)  auto_increment=1000;

-- d) Inserir dados nas tabelas, de forma que exista mais de um aluno para algum personal,
-- e mais de um personal sendo orientado por algum personal mais experiente.

insert into personal values
(null, 'Vinicius', '(11) 99999-9999', 'Musculação', null);

insert into personal values
(null, 'Rodrigo', '(11) 99999-9999', 'Musculação', 2),
(null, 'Marcelo', '(11) 99999-9999', 'Aeróbico', 3),
(null, 'Germânio', '(11) 99999-9999', 'Ginástica', 1),
(null, 'Eduardo', '(11) 99999-9999', 'Luta', 2),
(null, 'Iag', '(11) 99999-9999', 'Dança', 1),
(null, 'Michelle', '(11) 99999-9999', 'Natação', 2);

insert into aluno values
(null, 'Sabrina', 'Carrão', '2000-09-11', 1),
(null, 'Guilherme', 'Carrão', '2000-09-11', 2),
(null, 'Matheus', 'Carrão', '2000-09-11', 2),
(null, 'Larissa', 'Carrão', '2000-09-11', 4),
(null, 'Lucas', 'Carrão', '2000-09-11', 2),
(null, 'Isabela', 'Carrão', '2000-09-11', 6);

-- e) Exibir todos os dados de cada tabela criada, separadamente.

select * from personal;
-- ################################ INSERIR AQUI
select * from aluno;
-- ################################ INSERIR AQUI

select * from
    personal,
    aluno
where
    idPersonal = aluno.treinador;
-- ################################ INSERIR AQUI

select * from
    personal,
    aluno
where
    idPersonal = aluno.treinador
        and idPersonal = 2;
-- ################################ INSERIR AQUI

-- i) Exibir os dados dos personals e os dados dos respectivos personals orientadores.
select * from
    personal as p,
    personal as o
where
    o.idPersonal = p.orientador;
-- ################################ INSERIR AQUI

-- j) Exibir os dados dos personals e os dados dos respectivos personals orientadores, 
-- porém somente de um determinado personal orientador (informar o nome do personal na consulta).
select * from
    personal as p,
    personal as o
where
    o.idPersonal = p.orientador
        and p.nome = 'Germânio';
-- ################################ INSERIR AQUI

-- l) Exibir os dados dos personals, os dados dos respectivos alunos e os dados dos respectivos personals orientadores.
select * from
    aluno,
    personal as p,
    personal as o
where
    o.idPersonal = p.orientador
        and treinador = o.idPersonal;
-- ################################ INSERIR AQUI

-- m) Exibir os dados de um personal (informar o seu nome na consulta), os dados dos respectivos alunos e os dados do seu personal orientador.
select * from
    aluno,
    personal as p,
    personal as o
where
    o.idPersonal = p.orientador
        and treinador = o.idPersonal
        and p.nome = 'Rodrigo';
-- ################################ INSERIR AQUI
        
-- n) Excluir as tabelas.
 -- drop table aluno, personal;
 -- drop database personal