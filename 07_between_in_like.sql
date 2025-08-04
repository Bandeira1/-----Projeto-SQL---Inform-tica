use informatica;	
-- IN realiza buscas isoladas
select  * from cliente;

select * from cliente where id_cliente in (1,2,4,6);

select * from  cliente where year(data_nascimento) in (1991,1995);

-- Between 

select * from cliente where data_nascimento  between '1990-01-01' and '2000-12-31'; -- Data sempre em ''
select *  from cliente where limite_credito  between 6000 and 10000;

-- Like

select * from cliente where info_adicionais like 'revisao%'; -- Forma mais e
select * from cliente where info_adicionais like '%cadastro'; -- Utiliza muito da memoria computacional, não viavel
select * from cliente where email like'%@%.com';


