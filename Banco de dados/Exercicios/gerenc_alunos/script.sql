create database geren_alun;
use geren_alun;

create table projeto(
	idProjeto int auto_increment primary key,
    nome varchar(255) not null,
    descricao varchar(255) not null
);

create table aluno(
	ra int auto_increment primary key,
    nome varchar(255) not null,
    telefone varchar(255) not null,
    fkRepresentante int not null,
    fkProjeto int not null,
    foreign key(fkRepresentante) references aluno(ra),
    foreign key(fkProjeto) references projeto(idProjeto)
);

create table acompanhante(
	idAcompanhante int,
    nome varchar(255) not null,
    relacao varchar(255) not null,
    fkAluno int not null,
    foreign key(fkAluno) references aluno(ra)
);


insert into projeto values
(null, 'Impressora 3D', 'É uma impressora que imprime em 3D'),
(null, 'Heat Watch', 'Monitoramento e alerta de temperatura, umidade, CO2 e batimento cardiaco');

insert into aluno values
(null, 'Rodrigo', '99999999', 1, 1),
(null, 'Alemão', '99999999', 1, 1),
(null, 'Juerma', '99999999', 3, 2),
(null, 'Joyce', '99999999', 2, 2);

insert into acompanhante values
(null, 'Alberto', 'Pai', 4),
(null, 'Fernando', 'Mãe', 2),
(null, 'Henrique', 'Pai', 3),
(null, 'José', 'Pai', 3),
(null, 'Jilia', 'Namorada', 3);

select * from projeto;
select * from aluno;
select * from acompanhante;

select * from aluno, projeto where fkProjeto = idProjeto;
select * from aluno as a, aluno as r where r.ra = a.fkRepresentante;


select * from aluno, projeto where fkProjeto = idProjeto and projeto.nome = 'Impressora 3D';

select * from aluno, projeto, acompanhante where ra = fkAluno and fkProjeto = idProjeto;