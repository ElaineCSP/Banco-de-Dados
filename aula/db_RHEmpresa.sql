create database db_RHEmpresa;

use db_RHEmpresa;

CREATE TABLE tb_funcionario (
	id bigint AUTO_INCREMENT,
    nome varchar (100) NOT NULL,
    idade int NOT NULL,
    cargo varchar (40) NOT NULL,
    salario decimal (8,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_funcionario (nome, idade, cargo, salario) VALUES ("Vader", 62, "Coach", 25000.00);
INSERT INTO tb_funcionario (nome, idade, cargo, salario) VALUES ("Anakin", 18, "Estagiário", 1000.00);
INSERT INTO tb_funcionario (nome, idade, cargo, salario) VALUES ("Léia", 30, "Executiva", 30500.99);
INSERT INTO tb_funcionario (nome, idade, cargo, salario) VALUES ("Yoda", 120, "Mentor", 15000.50);
INSERT INTO tb_funcionario (nome, idade, cargo, salario) VALUES ("Finn", 38, "Manobrista", 1500.00);


SELECT * FROM tb_funcionario WHERE salario > 2000;
SELECT * FROM tb_funcionario WHERE salario < 2000;

-- Atualizando um dado da tabela
UPDATE tb_funcionario SET nome= "Wedge", cargo= "Manobrista" WHERE id= 2;