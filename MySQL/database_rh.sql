-- Crie um banco de dados para um serviço de RH de uma empresa, 
-- onde o sistema trabalhará com as informações dos funcionários desta empresa.
create database db_rh;

-- crie uma tabela de funcionários e utilizando a habilidade de abstração e 
-- determine 5 atributos relevantes dos funcionários para se trabalhar com o 
-- serviço deste RH.
USE db_rh;
-- criando uma tabela
create table tb_funcionario(
		id bigint auto_increment,
    nome varchar(100) not null,
	matricula int not null,
	idade int not null,
    cargo varchar(50) not null,
    salario decimal (4,2) NOT NULL,
    primary key (id)
);


-- Popule esta tabela com até 5 dados;

INSERT INTO tb_funcionario (nome, matricula, idade, cargo, salario) VALUES ("Daniele", 112019, 34, "Cientista de Dados", 6980.00);
INSERT INTO tb_funcionario (nome, matricula, idade, cargo, salario) VALUES ("Camila", 213409, 25, "Analista de TI", 4000.00);
INSERT INTO tb_funcionario (nome, matricula, idade, cargo, salario) VALUES ("Nicolas", 230987, 19, "Desenvolvedor mobile", 4500.00);
INSERT INTO tb_funcionario (nome, matricula, idade, cargo, salario) VALUES ("Janaina", 109876, 28, "Cientista de Dados", 6900.00);
INSERT INTO tb_funcionario (nome, matricula, idade, cargo, salario) VALUES ("Marcela", 098765, 29, "Engenheira de Software", 5600.00);

-- Faça um select que retorne os funcionários com a maior idade que 30
SELECT * FROM tb_funcionario WHERE salario >2000;
SELECT * FROM tb_funcionario WHERE idade < 2000;
-- Ao término atualize um dado desta tabela através de uma query de atualização.
update tb_funcionario set nome= "Camila", cargo= "Gerente" WHERE id= 2;
