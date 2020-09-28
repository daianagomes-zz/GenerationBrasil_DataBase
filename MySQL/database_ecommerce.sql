-- criando um banco de dados para um ecommerce
create database db_eco;

use db_eco;

-- Criando uma tabela produtos 
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(100) not null,
    valor decimal(10,2) not null,
    marca varchar(100) not null,
    modelo varchar(100) not null,
    -- datafabricação date,
    primary key(id)
);
-- select * from tb_produtos;
-- Populando a tabela 

insert into tb_produtos(nome, valor, marca) values ("Hidratante Facial", 17.00, "Nivea");
insert into tb_produtos(nome, valor, marca) values ("Protetor Solar Facial", 72.90, "Vichy");
insert into tb_produtos(nome, valor, marca) values ("BB Cream", 23.90, "L'Oréal");
insert into tb_produtos(nome, valor, marca) values ("Corretivo", 35.00, "Mary Kay");
insert into tb_produtos(nome, valor, marca) values ("Blush", 21.00, "Ruby Rose");
insert into tb_produtos(nome, valor, marca) values ("Delineador", 40.00, "Ruby Rose");
insert into tb_produtos(nome, valor, marca) values ("Paleta De Maquiagem Take Me Out Make B");
insert into tb_produtos(nome, valor, marca) values ("Penteadeira Maquiagem Profissional", 2286.00, "PazNew");	
-- Faça um select que retorne os funcionários com o salário maior do que 2000
select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;

