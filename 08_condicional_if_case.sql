-- IF E CASE

use informatica;

select * from cliente;

select nome,limite_credito, if(limite_credito >6000, 'Alto','Baixo') as categoria_limite from cliente;

select nome, limite_credito, 
  case 
   when limite_credito >6000 then 'Alto' -- Mesma consulta da linha de cima, porem de forma diferente
   else 'Baixo'
  end as categoria_limite 
from cliente;

select id_cliente, nome,limite_credito,
   if (limite_credito > 9000,'Premium',
   if (limite_credito between 5000 and 9000,'gold','baixo')) 
   as categoria_limite
from cliente;

select id_cliente, nome, limite_credito,
   case 
     when limite_credito > 9000 then 'Premium'
     when limite_credito between 5000 and 9000 then 'Gold'
     when limite_credito between 2000 and 4999 then 'Silver'
     else 'Bronze'
   end as categoria_cliente
from cliente;



