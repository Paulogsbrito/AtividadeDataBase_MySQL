CREATE DATABASE escola;

USE escola;

CREATE TABLE tb_alunos(
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  nome_completo VARCHAR(150) NOT NULL,
  turma VARCHAR(15) NOT NULL,
  idade INT NOT NULL,
  nota DECIMAL NOT NULL,
  status VARCHAR(20) DEFAULT 'Aprovado'
);

INSERT INTO tb_alunos(nome_completo, turma, idade, nota, status) VALUES 
("Mariana Souza Costa", "3º Ano A", 17, 8.5, "Aprovado"),
("Pedro Henrique Silva", "3º Ano B", 16, 5.8, "Reprovado"),
("Beatriz Alves Oliveira", "3º Ano A", 17, 9.2, "Aprovado"),
("Lucas Ferreira Santos", "3º Ano C", 18, 6.4, "Reprovado"),
("Julia Mendes Rocha", "3º Ano B", 16, 7.0, "Aprovado"),
("Gabriel Almeida Lima", "3º Ano A", 17, 4.5, "Reprovado"),
("Ana Carolina Duarte", "3º Ano C", 17, 8.8, "Aprovado"),
("Rodrigo Castro Melo", "3º Ano B", 18, 7.5, "Aprovado");

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE nota < 7.0;
SELECT * FROM tb_alunos WHERE nota > 7.0;

UPDATE tb_alunos SET nota = 7.5 WHERE id IN (6);
UPDATE tb_alunos SET status = "Aprovado" WHERE id IN (6);
SELECT * FROM tb_alunos WHERE id IN (6);







