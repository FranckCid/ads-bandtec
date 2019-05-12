create database clinica;
use clinica;
create table dentista(
	idDentista int primary key auto_increment,
    nome varchar(90),
    especialidade varchar(90)
);
create table paciente(
	idPaciente int primary key auto_increment,
    nome varchar(90),
    problema varchar(90),
    idade int,
    fkDentista int,
    foreign key (fkDentista) references dentista(idDentista)
);

insert into dentista values 
(null, 'Roberto', 'Cáries');
insert into dentista values 
(null, 'Thiago', 'Bacterias');

insert into paciente values
(null, 'Rodrigo', 'Cáries', 18, 1);
insert into paciente values
(null, 'Iago', 'Bacterias', 18, 2);
select * from dentista;
select * from paciente;
select * from dentista where especialidade='Cáries';
select * from paciente where nome like '%o%';
select * from dentista, paciente where idDentista = idPaciente; 
select * from dentista, paciente where idDentista = idPaciente; 
update dentista set nome = 'Marcelo' where idDentista=1;
delete from dentista where idDentista=2;