use informatica;

create table cliente(
	id_cliente INT,
    nome varchar(255),
    email varchar(100),
    data_nascimento date,
    limite_credito decimal(10,2),
	info_adicionais text,
    cadastro_ativo boolean,
    id_produto int
);

drop table cliente;