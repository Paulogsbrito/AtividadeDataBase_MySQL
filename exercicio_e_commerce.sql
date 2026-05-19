CREATE DATABASE e_commerce;

use e_commerce;

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	categoria VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    marca VARCHAR(150) NOT NULL,
    preco DECIMAL NOT NULL,
	status_produto VARCHAR(30) DEFAULT 'Disponivel'
);

INSERT INTO tb_produtos(nome, categoria, quantidade, marca, preco, status_produto)
VALUES ("Iphone 17", "Eletrônicos", 5, "Apple", 17000.00, "Disponivel"),
("Iphone 11", "Eletrônicos", 15, "Apple", 2500.00 , "Disponivel"),
("Fone de Ouvido Bluetooth", "Acessórios", 50,"AudioMax", 299.90, "Disponivel"),
("Teclado Mecânico", "Periféricos", 20, "ClickGamer", 450.00 ,"Disponivel"),
("Monitor 24 Polegadas", "Eletrônicos", 8, "VisionPlus", 1200.00,"Disponivel"),
("Mouse Sem Fio", "Periféricos", 40, "LogiTech", 150.00, "Disponivel"),
("Cadeira Gamer", "Móveis", 5,"ComfortSeat", 1100.00, "Disponivel"),
("Carregador Rápido", "Acessórios", 100, "PowerCharge", 89.90 ,"Disponivel"),
("Notebook Pro", "Eletrônicos", 3, "UltraComp", 5499.99,"Disponivel");

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco < 500.00;
SELECT * FROM tb_produtos WHERE preco > 500.00;

UPDATE tb_produtos SET preco = preco + 100.00 WHERE id in(2);
UPDATE tb_produtos SET quantidade = 2 WHERE id in(7);

UPDATE tb_produtos SET quantidade = 0 WHERE id in(9);
UPDATE tb_produtos SET status_produto = "Esgotado(Chega em 10 dias)" WHERE id in(9);
SELECT * FROM tb_produtos;






