CREATE DATABASE db_RegistoEscola;

USE db_RegistoEscola;

CREATE TABLE tb_Aluno (
	ra bigint AUTO_INCREMENT,
    nome varchar (100) NOT NULL,
    periodo varchar (5) NOT NULL,
    media decimal (3.1) NOT NULL,
    materia varchar (15) NOT NULL,
    PRIMARY KEY (ra)
);

drop table tb_aluno;

INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Joana", "Tarde", 5.5, "Artes");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Votildo", "Tarde", 8.5, "Filosofia");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Penelope", "Tarde", 4.5, "Matemática");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Criselda", "Noite", 9, "Portugues");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Cruzué", "Manhã", 7, "História");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Zacarias", "Noite", 6.5, "Est. Biblico");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Filomena", "Manhã", 10, "Física");
INSERT INTO tb_aluno (nome, periodo, media, materia) VALUES ("Cerso", "Tarde", 5.5, "Artes");

SELECT * FROM tb_aluno WHERE media >= 7;
SELECT * FROM tb_aluno WHERE media < 7;

UPDATE tb_aluno SET media= 7 WHERE ra= 4;