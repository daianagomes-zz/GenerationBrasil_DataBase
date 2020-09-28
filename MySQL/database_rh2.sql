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
    foreign key (cargo_id) references tb_funcionario(id)
    );
     select * from tb_funcionario; 
     
	insert into tb_cargo(nome_cargo, nivel, salario) values ("Analista de RH", "Junior", 3500.00);
	insert into tb_cargo(nome_cargo, nivel, salario) values ("Consultor de recursos humanos", "pleno", 7800.00);
	insert into tb_cargo(nome_cargo, nivel, salario) values ("Assistente de departamento de pessoal", "Junior", 1500.00);
	insert into tb_cargo(nome_cargo, nivel, salario) values ("Supervisor ou analista de cargos", "Senior", 9500.00);
	insert into tb_cargo(nome_cargo, nivel, salario) values ("Analista de treinamento e capacitação", "pleno", 6300.00);

	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Giovanna ", "São Paulo", '2020-05-21', 783582653);
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Marisol", "Rio de Janeiro",08/15/2020, 006720627);
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Hélder",  "São Paulo",04/28/2019, 49079992);
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("William ", "Campinas", 03/28/2020, 452988983);
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Estela ", "Campinas", 02/24/2020, 135023737); 
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Anaísa ", "São Paulo",10/04/2019, 238815914);
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Abraão ", "Rio de Janeiro",04/28/2019, 537375735);
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Juliana ", "Campinas", 07/21/2020, 052487162);
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Haniel ","Rio de Janeiro", 04/01/2020, 018889683);
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Sujana ", "São Paulo", 04/16/2020, 029644929);
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Adalberto ","Rio de Janeiro", 07/15/2020, 913925160); 
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Armando ", "Rio de Janeiro", 07/15/2019, 679480186);
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Giovana ", "Campinas", 01/18/2019, 253048961);
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Gael ", "Rio de Janeiro", 08/17/2020, 741292551); 
	insert into tb_funcionario(nome, cidade, data_admissão, numero_pis) values ("Mellyssa ","Rio de Janeiro", 04/28/2019, 351723754);

  
   
    
 