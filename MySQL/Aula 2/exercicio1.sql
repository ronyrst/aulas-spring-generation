CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    proficiencia VARCHAR(255)
);

CREATE TABLE tb_personagens(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    nivel INT,
    experiencia INT,
    poder_atk INT,
    poder_def INT,
    dinheiro DECIMAL(9,2),
    classe_id INT,
    FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(nome, proficiencia) VALUES 
("Mago", "Varinhas/Livros mágicos/Catalisadores"),
("Guerreiro", "Espadas/Espadões/Porretes"),
("Arqueiro", "Arcos/Bestas"),
("Clérigo", "Livros mágicos/Porretes"),
("Ladino", "Facas curtas/Espadas");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens (nome, nivel, experiencia, poder_atk, poder_def, dinheiro, classe_id) VALUES
("João Brabo", 17, 1300, 4900, 3600, 14900.00, 2),
("Artur Alvin", 28, 2, 2700, 1300, 800000.00, 5),
("Padre Marcelo Brossi", 19, 1994, 2000, 4900, 800.00, 4),
("Merlin Merlão", 60, 30000, 8914, 3180, 140000.00, 1),
("Lidia Dohvakin", 31, 1800, 5013, 4926, 19000.00, 3),
("MC DiMenor", 9, 300, 821, 600, 1200.00, 5),
("Pipo Kinha", 11, 1890, 1129, 2058, 50000.00, 4),
("Dante Bronte", 46, 4720, 7600, 5274, 29000.00, 1);

SELECT * FROM tb_personagens WHERE poder_atk > 2000;

SELECT * FROM tb_personagens WHERE poder_def > 1000 AND poder_def < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.nome, tb_classes.nome, tb_personagens.poder_atk, tb_personagens.poder_def FROM 
tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.nome, tb_classes.nome, tb_personagens.poder_atk, tb_personagens.poder_def FROM 
tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_personagens.classe_id = 5;

