-- Criação do banco de dados Filme
create database Filme;
-- Seleciona o banco de dados Filme
use Filme;
-- Cria a tabela Filme, com os campos: idFilme, titulo, genero e diretor
-- idFilme é a chave primária da tabela
create table Filme (
  idFilme int primary key,
  titulo varchar(40),
  genero varchar(30),
  diretor varchar(40)
);
-- Exibe os dados da tabela Filme
select * from Filme;

-- Insere os dados de um filme, da maneira como já vimos na aula passada
-- Inserindo desta forma, temos que fornecer os dados de todos os campos
-- da tabela, exatamente na ordem em que os campos foram criados no create table
insert into Filme values
 (1,'Roma','drama','Alfonso Cuarón');
 
-- Insere os dados de um filme, porém apenas os dados do idFilme e do título
insert into Filme (idFilme,titulo) values
  (2,'Nasce uma estrela'); 

-- Insere os dados de um filme, porém apenas os dados do titulo e do idFilme
-- Dessa forma, podemos inserir numa ordem diferente da ordem da criação dos campos
insert into Filme (titulo, idFilme) values
  ('Bohemian Rhapsody',3); 
  
-- Insere os dados de vários filmes, porém apenas o idFilme e o título
insert into Filme (idFilme,titulo) values
  (4, 'Fragmentado'),
  (5, 'Star Wars'),
  (6, 'Avatar'),
  (7, 'A Origem'),
  (8, 'Os Incríveis'),
  (9, 'Sexto Sentido'),
  (10, 'Indiana Jones'),
  (11, 'Titanic');
  

-- Atualiza os dados do diretor para os filmes de idFilme = 5 e idFilme = 10
update Filme set diretor='George Lucas'
     where idFilme = 5 or idFilme = 10; 
     
-- Atualiza os dados do diretor dos filmes de idFilme 6 e 11
update Filme set diretor='James Cameron'
     where idFilme in (6, 11); 
     
-- Atualiza os dados do gênero e diretor dos filmes de idFilme 4 e 9
update Filme set genero='suspense', diretor='M. Night Shyamalan'
     where idFilme in (4, 9);  

-- Atualiza os dados do gênero dos filmes de idFilme 5 e 6
update Filme set genero='ficção científica'  where idFilme in (5, 6);

-- Exibe os dados da tabela Filme
select * from Filme;

-- Atualiza os dados do gênero para os filmes de idFilme 2 e 11
update Filme set genero='romance' where idFilme in (2, 11);

-- Atualiza os dados do diretor do filme de idFilme 2
update Filme set diretor='Bradley Cooper' where idFilme = 2;     

-- Atualiza os dados do gênero e do diretor do filme de idFilme 3
update Filme set genero='biografia', diretor='Bryan Singer'
     where idFilme = 3;
     
-- Atualiza os dados do gênero e do diretor do filme de idFilme 7
update Filme set genero='ficção científica', diretor='Christopher Nolan'
     where idFilme = 7;
     
-- Atualiza os dados do gênero e do diretor do filme de idFilme 8
update Filme set genero='animação', diretor='Brad Bird'
     where idFilme = 8;
     
-- Atualiza os dados do gênero do filme de idFilme 10
update Filme set genero= 'aventura' where idFilme = 10;    

-- Exibe os dados da tabela Filme
select * from Filme;

-- Exclui o registro do filme de idFilme 6
delete from Filme where idFilme = 6;

-- Exclui os registros dos filmes de idFilme 11 e 5
delete from Filme where idFilme in (11, 5);

-- Acrescenta a coluna ano na tabela Filme
-- A palavra column é opcional
alter table Filme add ano int;
alter table Filme add column ano int; 

-- Exibe os dados da tabela Filme para verificar que aumentou uma coluna
select * from Filme;

-- Altera o tamanho da coluna titulo para 50 caracteres
alter table Filme modify titulo varchar(50);

-- Mostra a estrutura da tabela
desc Filme;
describe Filme;

-- Exclui a coluna ano da tabela Filme
-- a palavra column é opcional
alter table Filme drop ano;
alter table Filme drop column ano;

-- Exibe os dados da tabela ordenados pelo título do filme
select * from Filme order by titulo;

-- Exibe os dados da tabela ordenados pelo diretor do filme
select * from Filme order by diretor;

-- Exibe os dados da tabela ordenados em forma descendente pelo diretor
-- e se for do mesmo diretor, ordena de forma descendente pelo título
select * from Filme order by diretor desc,titulo desc;
