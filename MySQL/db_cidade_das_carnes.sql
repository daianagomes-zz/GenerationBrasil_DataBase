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


insert into tb_produto(peso_kg, prazo_validade, tipo_carne, codigoProduto_id) values (13.60, '2020/10/21', "bovina", 1);
insert into tb_produto(peso_kg, prazo_validade, tipo_carne, codigoProduto_id) values (11.20, '2020/11/12', "suina", 2);
insert into tb_produto(peso_kg, prazo_validade, tipo_carne, codigoProduto_id) values (10.80, '2020/11/12', "aves", 3);
insert into tb_produto(peso_kg, prazo_validade, tipo_carne, codigoProduto_id) values (9.80, '2020/10/15', "bovina", 1);
insert into tb_produto(peso_kg, prazo_validade, tipo_carne, codigoProduto_id) values (19.60, '2020/11/10', "suina", 2);
insert into tb_produto(peso_kg, prazo_validade, tipo_carne, codigoProduto_id) values (17.50, '2020/10/01', "suina", 2);
insert into tb_produto(peso_kg, prazo_validade, tipo_carne, codigoProduto_id) values (11.10, '2020/11/11', "bovina", 1);
insert into tb_produto(peso_kg, prazo_validade, tipo_carne, codigoProduto_id) values (18.30, '2020/10/27', "aves", 3);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.

select * from tb_categoria where valor > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_categoria where 3 > valor < 60;

	

