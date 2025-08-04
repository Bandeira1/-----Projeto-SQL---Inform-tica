use informatica;

create table cliente(
	id_cliente INT auto_increment primary key,
    nome varchar(255) not null,
    email varchar(100),
    data_nascimento date,
    limite_credito decimal(10,2),
	info_adicionais text,
    cadastro_ativo boolean default 1,
    id_produto int,
    unique (email)
  /*foreign key (id_produto) references produto(id_produto)*/
) comment='Tabela de clientes de informatica';

-- selecionar a tabela
select * from cliente;

-- Inserir 1 registro
insert into cliente(nome,email,data_nascimento,limite_credito)values
                   ('Victor','bandeiravitor6@gmai.com','2001-09-10', 8000.00);
insert into cliente(nome)values('Debora');

-- Inserir multiplos registros (mais eficiente)
insert into cliente(nome,email,data_nascimento,limite_credito)values
                   ('ana','ana@email.com','2002-05-01',10000),
                   ('pedro','pedro@email.com','1998-05-01',5500);

-- Inserir registro sem especificar os campos
insert into cliente values( NULL, 'thiago','thiago@email.com','1995-06-23',4600, null, true, 1);















drop table cliente;

