CREATE DATABASE db_ecommerce;

USE db_Ecommerce;

CREATE TABLE tb_produtos (
	id bigint AUTO_INCREMENT,
    nome varchar (100) NOT NULL,
    marca varchar (50) NOT NULL,
    modelo varchar (100) NOT NULL,
    valor decimal (7,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Brinquedo", "Barbie","Boneca", 590.00);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Brinquedo", "Ri Happy","Amoeba", 150.00);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Brinquedo", "Ri Happy","Cubo Mágico", 50.00);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Brinquedo", "Estrela","Detetive", 350.00);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Brinquedo", "Hot Wheels","Carrinho", 550.00);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Brinquedo", "Carlota","Boneca Frutinhas", 350.00);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Brinquedo", "Ri Happy","Uno", 85.00);
INSERT INTO tb_produtos (nome, marca, modelo, valor) VALUES ("Brinquedo", "Estrela","Quem sou eu?", 600.00);

SELECT * FROM tb_produtos WHERE valor > 500;
SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor= 490.50 WHERE id= 6;