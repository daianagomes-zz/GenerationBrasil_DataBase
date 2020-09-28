-- criando um banco de dados para um registro de uma escola
create database db_escola;
use db_escola;
create table tb_alunos(
			id bigint auto_increment,
		nome varchar(100) not null,
        idade int not null,
        matricula int not null,
        periodo varchar(100) not null,
        media_final decimal (10,2) not null,
        disciplina varchar(100) not null, 
        primary key (id)
);
-- select * from tb_alunos;
insert into tb_alunos (nome, idade, matricula, periodo, media_final, disciplina) values ("Lucas", 18, 098765, "Matutino", 70.00, "Matemática");
-- select * from tb_alunos;
insert into tb_alunos (nome, idade, matricula, periodo, media_final, disciplina) values ("Debora", 19, 098765, "Vespertino", 79.00, "Português");
insert into tb_alunos (nome, idade, matricula, periodo, media_final, disciplina) values ("João", 18, 987654, "Matutino", 60.00, "Matemática");
insert into tb_alunos (nome, idade, matricula, periodo, media_final, disciplina) values ("Solange", 19, 654343, "Noturno", 54.00, "Química");
insert into tb_alunos (nome, idade, matricula, periodo, media_final, disciplina) values ("Marcelo", 18, 092166, "Matutino", 30.00, "Biologia");
insert into tb_alunos (nome, idade, matricula, periodo, media_final, disciplina) values ("Maria", 17, 7603, "Vespertino", 95.00, "Matemática");
insert into tb_alunos (nome, idade, matricula, periodo, media_final, disciplina) values ("Luisa", 18, 1055, "Noturno", 64.00, "Inglês");
insert into tb_alunos (nome, idade, matricula, periodo, media_final, disciplina) values ("Paulo", 19, 1266, "Matutino", 14.00, "Física");
insert into tb_alunos (nome, idade, matricula, periodo, media_final, disciplina) values ("Alex", 19, 9844, "Vespertino", 100.00, "Química");

-- alunos com nota acima de 7
select * from tb_alunos where media_final > 7;

-- alunos com notas abaixo de 7
select * from tb_alunos where media_final < 7;
-- select * from tb_alunos;

update tb_alunos set nome = "João", media_final = 100.00
	where id = 3;

-- select * from tb_alunos;

