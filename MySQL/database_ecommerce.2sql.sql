create database db_ecommerce2;
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
create table tb_produto(
	id bigint auto_increment,
    nome varchar(100) not null,
    categoria varchar(100) not null,
    valor decimal (10,2),
    
        primary key (id)
);

create table tb_categoria(
		id bigint auto_increment,
        
	

    