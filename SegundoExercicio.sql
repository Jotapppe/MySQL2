CREATE DATABASE db_Farmacia;

USE db_Farmacia;

-- INSERÇÃO DAS CATEGORIAS --


CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
    Setor VARCHAR(255),
    Remedio VARCHAR(255),
    
    PRIMARY KEY(id)
);
INSERT INTO tb_categoria(Setor,Remedio)
VALUES("Perfumaria","Genericos");

INSERT INTO tb_categoria(Setor,Remedio)
VALUES("Higiene Pessoal","Manupulados");

INSERT INTO tb_categoria(Setor,Remedio)
VALUES("Maquiagens","Outras Marcas");

-- INSERÇÃO DAS PRODUTOS --


CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
	Nome_produto VARCHAR(255), 
    Quantidade INT,
    Valor DECIMAL(5,2),
	categoria_id BIGINT,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) REFERENCES tb_categoria(id)	
);


    
INSERT INTO tb_produtos(Nome_produto,Quantidade,Valor,categoria_id)
VALUES("Perfume 212",5,200.00,1);

INSERT INTO tb_produtos(Nome_produto,Quantidade,Valor,categoria_id)
VALUES("Paco Rabanne",5,250.00,1);

INSERT INTO tb_produtos(Nome_produto,Quantidade,Valor,categoria_id)
VALUES("Shampoo",10,15.00,2);    

INSERT INTO tb_produtos(Nome_produto,Quantidade,Valor,categoria_id)
VALUES("Condicionador",10,15.00,2);

INSERT INTO tb_produtos(Nome_produto,Quantidade,Valor,categoria_id)
VALUES("Blush",50,5.00,3);    

INSERT INTO tb_produtos(Nome_produto,Quantidade,Valor,categoria_id)
VALUES("Rimel",50,3.00,3);


SELECT*FROM tb_categoria;
SELECT*FROM tb_produtos;

SELECT*FROM tb_produtos WHERE valor > 45;

SELECT*FROM tb_produtos WHERE valor < 45;

SELECT * FROM tb_produtos INNER JOIN tb_categoria 
ON tb_categoria.id = tb_produtos.categoria_id;


-- SELECT *
-- FROM tb_produtos
-- WHERE valor BETWEEN 50 AND 100;

-- SELECT * FROM tb_produtos WHERE Nome_produto LIKE "%S% "


