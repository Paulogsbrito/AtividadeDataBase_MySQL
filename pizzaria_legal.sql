CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(50) NOT NULL,     
    tamanho_padrao VARCHAR(30) NOT NULL,     
    PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,    
    borda_recheada BOOLEAN NOT NULL,
    categoria_id BIGINT, 
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, tamanho_padrao) VALUES 
('Salgada Tradicional', 'Grande'),
('Salgada Especial', 'Grande'),
('Doce', 'Broto'),
('Vegana', 'Grande'),
('Premium', 'Gigante');

INSERT INTO tb_pizzas (nome, ingredientes, preco, borda_recheada, categoria_id) VALUES 
('Calabresa', 'Molho de tomate, calabresa fatiada, cebola e orégano', 42.00, FALSE, 1),
('Muçarela', 'Molho de tomate, muçarela em dobro e rodelas de tomate', 39.90, FALSE, 1),
('Frango com Catupiry', 'Molho de tomate, frango desfiado e catupiry original', 48.50, TRUE, 2),
('Pepperoni Premium', 'Molho, muçarela, pepperoni especial e cream cheese', 58.00, TRUE, 5),
('Brigadeiro com Morango', 'Chocolate ao leite, granulado e morangos frescos', 38.00, FALSE, 3),
('Romeu e Julieta', 'Queijo muçarela e goiabada cascão derretida', 35.00, FALSE, 3),
('Abobrinha Vegana', 'Molho de tomate, abobrinha grelhada, queijo vegano e alho frito', 52.00, FALSE, 4),
('Margherita Especial', 'Molho, muçarela de búfala, tomate cereja e manjericão fresco', 46.00, TRUE, 2);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT 
    tb_pizzas.nome, 
    tb_pizzas.ingredientes, 
    tb_pizzas.preco, 
    tb_categorias.tipo,
    tb_categorias.tamanho_padrao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT 
    tb_pizzas.nome, 
    tb_pizzas.preco, 
    tb_categorias.tipo    
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = 'Doce';