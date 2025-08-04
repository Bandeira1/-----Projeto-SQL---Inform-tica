use informatica;
desc cliente;

insert into cliente values
    (NULL, 'Marcos','marcos@email.com','1991-01-05',8000.00,NULL,true,2),
    (NULL, 'Carol','carol@email.com','1998-02-26', 5500,NULL,true,1),
    (NULL, 'Ana','ana@email.com','1980-05-28',10000.00,'Revisão de cadastro',true,1),
    (NULL, 'João','joao@email.com','1995-10-14',5500.00,'Inativo',false,null),
    (NULL, 'Thiago','thiago@email.com','2001-08-20',4600,null,true,1);
    
-- Selecionar todas as colunas de uma tabela
select*from cliente;

-- Selecionar colunas especificas
select email, data_nascimento ,nome from cliente;

-- Criar tabela a partir da seleção de dados (Backup*)
create table backup_cliente as select * from cliente;

desc cliente;
desc backup_cliente;

-- Inserir registros a partir da seleção de dados()
truncate backup_cliente;
select * from backup_cliente;
insert into backup_cliente select*from cliente;
select * from backup_cliente;

select * from cliente;

-- Condição

-- Filtrar por campo numerico
select nome, limite_credito from cliente where limite_credito <= 5500;

-- Filtrar por campo texto
select nome, limite_credito from cliente where nome = 'joao';
select nome, limite_credito from cliente where nome like 'j%'; -- filtrando com o coringa

-- Filtrar por campo boleano
select nome, email from cliente where cadastro_ativo = true ; -- 0 false, 1 True

-- Filtrar por campo de data
select nome, data_nascimento from cliente where data_nascimento >= '1990-01-01'; -- AAAA-MM-DD

select nome, data_nascimento from cliente where year (data_nascimento) > 1990; -- year, month, day
select nome, data_nascimento from cliente where month (data_nascimento) >= 01; -- Mes
select nome, data_nascimento from cliente where day (data_nascimento) > 20; -- Dia

select * from cliente;

-- Ordenar por ordem ascendente (alfabetica)
select nome from cliente order by nome asc;

-- Ordenar por ordem decrecente 
select nome, data_nascimento from cliente order by nome desc;

-- Ordenar por mais de um campo,
select nome, limite_credito from cliente order by limite_credito desc, nome asc;

-- Limitação
select *from cliente limit 3;

--  Selecionar os 3 clientes com mais limite de credito
select nome, limite_credito from cliente ORDER BY limite_credito desc limit 3;

-- Pular os 3 primeiros registros e selecionar os proximos 2
select nome from cliente order by nome limit 2 offset 3;