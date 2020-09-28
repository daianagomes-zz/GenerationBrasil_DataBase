-- Crie um banco de dados para um serviço de RH de uma empresa, o nome do banco deverá
-- ter o seguinte nome db_RH2, onde o sistema trabalhará com as informações dos
-- funcionários desta empresa.
-- O sistema trabalhará com 2 tabelas tb_funcionário e tb_cargo.
-- Crie uma tabela tb_cargo utilizando a habilidade de abstração e determine 3 atributos
-- relevantes do Cargos para se trabalhar com o serviço deste RH.
-- Crie uma tabela tb_funcionário e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionários para se trabalhar com o serviço deste RH (não
-- esqueça de criar a foreign key de tb_cargo nesta tabela).
create database db_RH2;
use db_RH2;

create table tb_cargo(
	id bigint auto_increment,
    nome_cargo varchar(100) not null,
    nivel varchar(100) not null,
    salario decimal(10,2) not null,
    
    primary key (id)
);
   select * from tb_cargo; 
   
   create table tb_funcionario(
	id bigint auto_increment,
    nome varchar(100) not null,
    cidade varchar(100) not null,
    data_admissão date,
    numero_pis int not null,
	cargo_id bigint not null,

    primary key (id),
    foreign key (cargo_id) references tb_cargo(id)
    );
     select * from tb_funcionario; 
     
insert into tb_funcionario(nome, cidade, data_admissão, numero_pis,cargo_id) values ("Giovanna ", "São Paulo", '2020/05/21', 783582653,1);
insert into tb_funcionario(nome, cidade, data_admissão, numero_pis, cargo_id) values ("Marisol", "Rio de Janeiro",'2020/08/15', 006720627, 2);
insert into tb_funcionario(nome, cidade, data_admissão, numero_pis, cargo_id) values ("Hélder",  "São Paulo", '2019/04/28', 49079992, 3);
insert into tb_funcionario(nome, cidade, data_admissão, numero_pis, cargo_id) values ("William ", "Campinas", '2020/03/28', 452988983, 4);
insert into tb_funcionario(nome, cidade, data_admissão, numero_pis, cargo_id) values ("Estela ", "Campinas", '2020/02/24', 135023737, 5); 
insert into tb_funcionario(nome, cidade, data_admissão, numero_pis, cargo_id) values ("Anaísa ", "São Paulo", '2019/10/04', 238815914, 6);
insert into tb_funcionario(nome, cidade, data_admissão, numero_pis, cargo_id) values ("Abraão ", "Rio de Janeiro", '2019/04/28', 537375735, 7);
insert into tb_funcionario(nome, cidade, data_admissão, numero_pis, cargo_id) values ("Juliana ", "Campinas", '2020/07/21', 052487162, 8);
insert into tb_funcionario(nome, cidade, data_admissão, numero_pis, cargo_id) values ("Haniel ", "Rio de Janeiro",'2020/04/01', 769018654, 9);
  
   