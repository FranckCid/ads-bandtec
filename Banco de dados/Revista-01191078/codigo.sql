create database jogador;
use jogador;

create table revista(
	idRevista int primary key auto_increment,    
    titulo varchar(40),
    editora varchar(20),
    assunto varchar(30)    
);

insert into revista (titulo, editora, assunto) values 
('Especial #3', 'Veja', 'Natureza'),
('Animais #34', 'Epoca', 'Natureza'),
('Cozinha #12', 'Quatro Rodas', 'Receitas'),
('Lar doce lar #55', 'Claudia', 'Casa'),
('Games #1', 'Folha', 'Entretenimento'),
('Arquitetura #2', 'Jump', 'Estudo'),
('Batata Palha #455', 'Folha', 'Entretenimento');

#1) Exibir todos os dados da tabela.
select * from revista;

#2) Exibir apenas os títulos e os assuntos das revistas.
select titulo, assunto from revista;

#3) Exibir apenas os dados das revistas de uma determinada editora.
select * from revista where editora = 'Veja';

#4) Exibir apenas os dados das revistas de um determinado assunto.
select * from revista where assunto = 'Entretenimento';

#5) Exibir os dados da tabela ordenados pela editora.
select * from revista order by editora;

#6) Exibir os dados da tabela ordenados pelo título em ordem decrescente.
select * from revista order by titulo desc;

#7) Exibir os dados da tabela, das revistas cujo título termine com uma determinada letra.
select * from revista where titulo like '%5';

#8) Exibir os dados da tabela, das revistas cujo assunto comece com uma determinada letra.
select * from revista where assunto like 'E%';

#9) Exibir os dados da tabela, das revistas cuja editora tenha como segunda letra uma determinada letra.
select * from revista where editora like '%c_';

#10) Exibir os dados da tabela, das revistas cujo título tenha como penúltima letra uma determinada letra.
select * from revista where titulo like '%3_';

#11) Atualize a editora de alguma revista. Exiba novamente os dados da tabela após a atualização.
update revista set editora = 'Shounen Jump' where idRevista=6;
select * from revista;

#12) Exclua alguma revista da tabela. Exiba novamente os dados da tabela após a exclusão.
delete from revista where idRevista=7;
select * from revista;

#13) Elimine a tabela.
drop table revista;
