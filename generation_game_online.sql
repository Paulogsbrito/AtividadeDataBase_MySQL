CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;


CREATE TABLE tb_classes(
Id BIGINT AUTO_INCREMENT PRIMARY KEY,
Classe VARCHAR(200),
Especialidade VARCHAR(200));


CREATE TABLE tb_personagens(
Id BIGINT AUTO_INCREMENT PRIMARY KEY, 
Nome VARCHAR(200) NOT NULL,
Poder_de_ataque INT NOT NULL,
Poder_de_defesa INT NOT NULL,
Pontos_de_vida INT NOT NULL,
Nivel INT NOT NULL,
Classe_id BIGINT,
FOREIGN KEY (Classe_id) REFERENCES tb_classes(Id)
);

INSERT INTO tb_classes(Classe, Especialidade)
VALUES ('Lobisomem', 'Força bruta, ataques críticos e regeneração de vida'),
('Guerreiro', 'Combate corpo a corpo e alta resistência'),
('Mago', 'Magia elemental de longo alcance'),
('Arqueiro', 'Ataques à distância com alta precisão'),
('Ladino', 'Furtividade, velocidade e ataques críticos'),
('Paladino', 'Suporte, cura e defesa sagrada'),
('Vampiro', 'Dreno de vida, controle mental e alta velocidade');


INSERT INTO tb_personagens(Nome, Poder_de_ataque, Poder_de_defesa, Pontos_de_vida, Nivel, Classe_id)
VALUES ('Alucard', 4500, 2500, 6000, 80, 6),
('Arthur', 2500, 1800, 4000, 50, 7),      
('Eldrin', 3200, 800, 2500, 48, 2),       
('Cassia', 1800, 1200, 3000, 42, 3),      
('Valon', 1500, 2200, 5000, 45, 5),
('Chico', 8500, 4000, 12000, 99, 1),     
('Cid', 2100, 950, 2800, 39, 4),          
('Kael', 900, 1500, 3500, 20, 1),         
('Celeste', 3500, 1100, 2200, 55, 2),     
('Lira', 2200, 1050, 2900, 41, 3);        

SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens WHERE Poder_de_ataque > 2000;
SELECT * FROM tb_personagens WHERE Poder_de_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE Nome LIKE '%C%';

SELECT 
    tb_personagens.Nome,
    tb_personagens.Poder_de_ataque,
    tb_personagens.Poder_de_defesa,
    tb_personagens.Pontos_de_vida,
    tb_personagens.Nivel,
    tb_classes.Classe,
    tb_classes.Especialidade
    
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.Classe_id = tb_classes.Id;

SELECT 
    tb_personagens.Nome,
    tb_personagens.Nivel,
    tb_personagens.Poder_de_ataque,
    tb_personagens.Poder_de_defesa,
    tb_classes.Classe
    
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.Id
WHERE tb_classes.Classe = 'Lobisomem';





