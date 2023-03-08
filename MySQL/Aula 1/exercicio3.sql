CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    serie VARCHAR(20),
    numero INT,
    turno VARCHAR(20),
    nota decimal(2,1)
);

-- 1
INSERT INTO tb_alunos (nome, serie, numero, turno, nota)
VALUES (
	'Pedro Rodrigo',
    'Segundo B',
    36,
    'Manhã',
    4.1
);

-- 2
INSERT INTO tb_alunos (nome, serie, numero, turno, nota)
VALUES (
	'Amanda Silva',
    'Oitava D',
    03,
    'Tarde',
    7.4
);

-- 3
INSERT INTO tb_alunos (nome, serie, numero, turno, nota)
VALUES (
	'André Silva Almeida',
    'Primeiro A',
    02,
    'Noite',
    9.1
);

-- 4
INSERT INTO tb_alunos (nome, serie, numero, turno, nota)
VALUES (
	'Raiane Silveira',
    'Segundo B',
    33,
    'Manhã',
    7.8
);

-- 5
INSERT INTO tb_alunos (nome, serie, numero, turno, nota)
VALUES (
	'Natan Rafael Jonas',
    'Nono C',
    31,
    'Tarde',
    6.5
);

-- 6
INSERT INTO tb_alunos (nome, serie, numero, turno, nota)
VALUES (
	'Juliane Borges',
    'Terceiro B',
    18,
    'Manhã',
    3.1
);

-- 7
INSERT INTO tb_alunos (nome, serie, numero, turno, nota)
VALUES (
	'Jessica Severina',
    'Sexto C',
    24,
    'Tarde',
    8.8
);

-- 8
INSERT INTO tb_alunos (nome, serie, numero, turno, nota)
VALUES (
	'Firmino Joaquim Eusébio',
    'Terceiro A',
    15,
    'Manhã',
    2.9
);

SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET turno = "Manhã" WHERE id=7;