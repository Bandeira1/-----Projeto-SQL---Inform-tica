use informatica;

-- selecionar a tabela
select * from cliente;
desc  cliente;

-- Atualizar 1 campo
update cliente set email = 'bandeira@gmail.com' where id_cliente =1;

-- Atualizar multiplos campos
update cliente set data_nascimento = '2001-03-14', limite_credito = 5000.00
where id_cliente =2;

-- Atuaizar com operadores matematicos
update cliente set limite_credito = limite_credito + 5000 where id_cliente =3;

-- Atualizar com condições complexas
update cliente 
set cadastro_ativo = false where limite_credito <= 5500
and data_nascimento <'1998-01-01';
set sql_safe_updates=1;

-- Atualizar todos os regristros de uma coluna
update cliente
set info_adicionais = 'Revisão de cadastro';













drop table cliente;

