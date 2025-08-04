use informatica;

-- Filtros condicionias
-- NULL E NOT NULL

select * from cliente;

select *  from cliente where info_adicionais is null; -- Se é nulo, tudo que tiv
select *  from cliente where info_adicionais is not null; -- Tudo que nao é nulo

select * from cliente
where limite_credito > 5000 and (info_adicionais is null or id_produto is null);

select nome,limite_credito, ifnull(limite_credito,0) as limite_credito_tratado from cliente;
select nome,info_adicionais, ifnull(info_adicionais,'nada consta') as info_adicionais_tratadas from cliente; -- Se o campo de informação adc for nulo vai me mostrar no resultado como nada consta

select nome,info_adicionais, nullif(info_adicionais,'inativo') as info_adicionais_tratada from cliente;	 -- Se o campo for igual 'inativo' ele vai me retornar nulo

select nome, ifnull(nullif(info_adicionais,' '),'Nada consta') as info_adicionais from cliente;

select nome, coalesce(info_adicionais, 'nada consta') from cliente;

select nome, coalesce(info_adicionais, limite_credito, id_produto, 'cadastro nulo') from cliente;

select nome, info_adicionais, coalesce(info_adicionais, 'Não consta') as info from cliente;

-- tratar espaço em branco

select '        remover espaços        ', TRIM('      remover espaços       ');
select nome, info_adicionais from cliente where info_adicionais <>  trim(info_adicionais);
select * from cliente
where nullif(info_adicionais, ' ') is null;


