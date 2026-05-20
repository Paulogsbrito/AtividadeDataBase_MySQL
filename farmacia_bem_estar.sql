CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    requer_receita BOOLEAN NOT NULL     
    );

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(6,2) NOT NULL, 
    quantidade_estoque INT NOT NULL,
    fabricante VARCHAR(50) NOT NULL,
    categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, requer_receita) 
VALUES 
('Medicamentos Genéricos', TRUE),
('Medicamentos Referência', TRUE),
('Cosméticos', FALSE),
('Higiene Pessoal', FALSE),
('Suplementos Vitamínicos', FALSE);

INSERT INTO tb_produtos (nome_produto, preco, quantidade_estoque, fabricante, categoria_id) 
VALUES 
('Dipirona Monohidratada 500mg', 8.50, 150, 'Medley', 1),
('Amoxicilina 500mg', 45.90, 60, 'EMS', 1),
('Protetor Solar Facial FPS 60', 79.90, 40, 'La Roche', 3),
('Shampoo Anticaspa 200ml', 32.00, 85, 'Vichy', 4),
('Vitamina C 1g Efervescente', 24.90, 200, 'Redoxon', 5),
('Colágeno Hidrolisado em Pó', 115.00, 30, 'Max Titanium', 5),
('Desodorante Clinical Roll-on', 19.90, 120, 'Rexona', 4),
('Creme Anti-idade Noturno', 149.90, 15, 'L\'Oréal', 3);

SELECT * FROM tb_produtos 
WHERE preco > 50.00;

SELECT * FROM tb_produtos 
WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos 
WHERE nome_produto LIKE '%C%';

SELECT 
    tb_produtos.nome_produto, 
    tb_produtos.preco, 
    tb_produtos.fabricante, 
    tb_categorias.nome_categoria,
    tb_categorias.requer_receita
FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT 
    tb_produtos.nome_produto, 
    tb_produtos.preco, 
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = 'Cosméticos';

