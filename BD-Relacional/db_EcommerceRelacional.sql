CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_categoria (
	id bigint AUTO_INCREMENT,
    categoria varchar (50) NOT NULL,
    marca varchar (50) NOT NULL,
    departamento varchar (20) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_produto (
	id bigint AUTO_INCREMENT,
    nome varchar (60) NOT NULL,
    modelo varchar (25) NOT NULL,
    cor varchar (20) NOT NULL,
    valor decimal (7,2) NOT NULL,
    categoria_id bigint NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_categoria (categoria, marca, departamento) VALUES
	("Eletrônicos", "Philips", "Escritório"),
    ("Cama Mesa Banho", "Karsten", "Quarto"),
    ("Automóveis", "Toyota", "Pneus"),
    ("Talheres", "Tramontina", "Cozinha"),
    ("Livros", "JBC", "Filosofia");
    
INSERT INTO tb_produto (nome, modelo, cor, valor, categoria_id) VALUES
	("Televisão", "Smart 8K", "Cinza", 7999.00, 1),
    ("Demons Slayer", "Capa Simples", "Preto e Cinza", 17.90, 5),
    ("Carpete", "Emborrachado", "Vermelho", 93.90, 3),
    ("Edredom", "Algodão", "Preto", 175.90, 2),
    ("Faqueiro", "Churrasco", "Alumínio", 280.00, 4),
    ("Notebook", "Acer", "Preto", 3500.00, 1);
    
SELECT * FROM tb_produto WHERE valor > 2000;
SELECT * FROM tb_produto WHERE valor > 1000 and valor < 2000;
SELECT * FROM tb_produto WHERE nome LIKE 'c%';