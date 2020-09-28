-- Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o
-- seguinte nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos
-- produtos desta empresa
create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(100) not null,
    marca varchar(100) not null,
    valor decimal (10,2),
    
    primary key (id)
);
insert into tb_categoria(nome, marca, valor) values ("Linguiça Calabresa ","Friboi", 15.00 );
insert into tb_categoria(nome, marca, valor) values ("Picanha ","Seara" , 40.00 );
insert into tb_categoria(nome, marca, valor) values ("Peito de frango ", "Kifrango", 28.50 );
insert into tb_categoria(nome, marca, valor) values ("Acém ", "Bassi" , 23.75);
insert into tb_categoria(nome, marca, valor) values ("Bacon ","Seara" , 17.90 );

select * from tb_categoria;

create table tb_produto(
		id bigint auto_increment,
	peso decimal(10,2) not null,
    data_validade date,
	prazo_validade date,
    tipo_carne varchar(100) not null,
    codigoProduto_id bigint not null,
    
	primary key (id),
	foreign key (codigoProduto_id) references tb_categoria(id)
);


ALTER TABLE tb_produto CHANGE peso peso_kg decimal(10,2)  unsigned;
select * from tb_produto;

	

