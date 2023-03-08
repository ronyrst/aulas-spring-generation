CREATE DATABASE db_comercio;

USE db_comercio;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    marca VARCHAR(255),
    preco DECIMAL(6,2),
    codigo_barras CHAR(32)
);

-- 1
INSERT INTO tb_produtos(nome, marca, preco, codigo_barras) 
VALUES (
	'Sabonete Líquido',
    'Lux',
    11.30,
    '12345678901234567890123456789023'
);

-- 2
INSERT INTO tb_produtos(nome, marca, preco, codigo_barras) 
VALUES (
	'Salgadinho sabor Queijo Nacho',
    'Doritos',
    12.40,
    '35275823752572857257467232955235'
);

-- 3
INSERT INTO tb_produtos(nome, marca, preco, codigo_barras) 
VALUES (
	'Refrigerante 2 Litros',
    'Coca-Cola',
    13.99,
    '25838583258325827527525925932572'
);

-- 4
INSERT INTO tb_produtos(nome, marca, preco, codigo_barras) 
VALUES (
	'Refrigerante 2 Litros',
    'Pepsi',
    12.50,
    '88582592572867286284672052025253'
);

-- 5
INSERT INTO tb_produtos(nome, marca, preco, codigo_barras) 
VALUES (
	'Leite UHT Integral',
    'Dia%',
    4.80,
    '83283583251513421311398585823433'
);

-- 6
INSERT INTO tb_produtos(nome, marca, preco, codigo_barras) 
VALUES (
	'Arroz Japonês',
    'Camil',
    26.89,
    '53522938613861350913415716385314'
);

-- 7
INSERT INTO tb_produtos(nome, marca, preco, codigo_barras) 
VALUES (
	'Papel Higiênico 12 rolos',
    'Neve',
    25.60,
    '37497359157135885349683683492741'
);

-- 8
INSERT INTO tb_produtos(nome, marca, preco, codigo_barras) 
VALUES (
	'Pão Integral com Grãos',
    'Seven Boys',
    11.30,
    '12345678901234567890123456789023'
);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 15.00 WHERE id = 3;