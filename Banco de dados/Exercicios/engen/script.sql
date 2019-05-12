create database engen;
use engen ;

create table  Engenheiro (
  idEngenheiro int not null,
  CREA int null,
  nome varchar(45) null,
  salario decimal null,
  sexo char(1) null,
  primary key (idEngenheiro)
  );


create table  Obra (
  idObra int auto_increment,
  nome varchar(45) null,
  local varchar(45) null,
  primary key (idObra)
  ) auto_increment = 1000;


create table  Engenheiro_has_Obra (
  Engenheiro_idEngenheiro int not null,
  Obra_idObra int not null,
  horas int null,
  primary key (Engenheiro_idEngenheiro, Obra_idObra),
  
    foreign key (Engenheiro_idEngenheiro)
    references Engenheiro (idEngenheiro),
  
    foreign key (Obra_idObra)
    references Obra (idObra)
);

create table  Dependente (
  nome varchar(45) null,
  data_nascimento date null,
  relacao varchar(45) null,
  Engenheiro_idEngenheiro int not null,
  primary key (Engenheiro_idEngenheiro),
    foreign key (Engenheiro_idEngenheiro)
    references Engenheiro (idEngenheiro)
);