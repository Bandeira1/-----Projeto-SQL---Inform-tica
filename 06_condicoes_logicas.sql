use informatica;

-- AND, OR E NOT

select * from cliente;

select * from cliente
where cadastro_ativo = true and limite_credito > 6000;  -- cadastro ativo  e limite  de credito  > 6000
 
select * from cliente
where  cadastro_ativo = true  or limite_credito > 6000;

select * from cliente
where limite_credito > 6000 and year(data_nascimento) > 1980; -- Limite maior que 6000 e idade acima de 1980

select * from cliente
where cadastro_ativo = true or limite_credito > 6000 and year (data_nascimento) > 1980; -- ta errado essa capeta, falta ()

select * from cliente
where (cadastro_ativo = true or limite_credito > 6000) and year (data_nascimento) > 1980; -- Forma certa pois  a prioridade  esta em ()

select * from cliente where not  limite_credito > 6000; -- Where