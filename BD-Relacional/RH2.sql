CREATE DATABASE db_RH2;

USE db_RH2;

CREATE TABLE tb_funcionario (
	id bigint AUTO_INCREMENT,
    nome varchar (50) NOT NULL,
    idade int not null,
    cargo_id varchar (40) not null,
    salario decimal (8,2) not null,
    PRIMARY KEY (id)
);

CREATE TABLE tb_cargo (
	id bigint AUTO_INCREMENT,
    nome varchar (60) NOT NULL,
    cargo_id varchar (25) NOT NULL,
    departamento varchar (20) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (cargo_id) REFERENCES tb_cargo (id)
);

INSERT INTO tb_cargo (nome, cargo, departamento) VALUES
	("Elizeu", "Porteiro", "Vigilância"),
    ("Luiza", "Recepcionista", "Geral"),
    ("Rosélia", "Supervisora", "Financeiro"),
    ("Caique", "Zelador", "Manutenção"),
    ("Amadeu", "Assistente", "Elétrico");
    
INSERT INTO tb_funcionario (nome, idade, cargo, salario) VALUES
	("Evandra", 63, "Cozinheira", 1500.00),
    ("Mesquita", 21, "Auxiliar Cozinha", 700.00),
    ("Mirando", 35, "Faxineiro", 3500.00),
    ("Alceu", 74, "Professor", 5700.00),
    ("Vagner", 27, "Produtor", 500.00),
    ("Getulio", 69, "Diretor", 2650.00),
    ("Gilda", 28, "Assistente de Sala", 1750.00),
    ("Hermione", 49, "Recepcionista", 590.00),
    ("Valter", 25, "Motorista", 2000.00),
    ("Mion", 45, "Merendeiro", 100.00),
    ("Cassandra", 56, "Zeladora", 4900.00),
    ("Minervo", 65, "Bancario", 800.00),
    ("Etevalda", 23, "Dançarina", 1840.00),
    ("Emilio", 42, "Professor", 910.00),
    ("Cacilda", 50, "Pediatra", 7500.00),

SELECT * FROM tb_funcionario WHERE valor > 2000;
SELECT * FROM tb_funcionario WHERE valor > 1000 and valor < 2000;
SELECT * FROM tb_funcionario WHERE nome LIKE '%c%';