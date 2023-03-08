CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	cpf CHAR(11),
    nome VARCHAR(255),
    numero_carteira_trabalho CHAR(50),
    data_contratacao DATE,
    salario DECIMAL(7,2),
    cargo VARCHAR(100),
    PRIMARY KEY(cpf)
);

-- O modelo de datas é 'YYYY-MM-DD'
INSERT INTO tb_colaboradores(cpf, nome, numero_carteira_trabalho, 
							 data_contratacao, salario, cargo) VALUES (
								'12345678919',
                                'Adalberto Rogério',
                                '14403410944',
                                '2017-09-29',
                                3600.00,
                                'Programador(a) Pleno'
							 );
                                
INSERT INTO tb_colaboradores(cpf, nome, numero_carteira_trabalho, 
							data_contratacao, salario, cargo) VALUES (
								'23456789123',
                                'Cora Coralinda',
                                '33432429582',
                                '2021-03-14',
                                2500.00,
                                'Programador(a) Junior'
							);
                                
INSERT INTO tb_colaboradores(cpf, nome, numero_carteira_trabalho, 
							data_contratacao, salario, cargo) VALUES (
								'34567891234',
                                'Juliana Cardoso de Freitas Junior',
                                '32525972572',
                                '2016-02-28',
                                8300.00,
                                'Programador(a) Senior'
							);
                                
INSERT INTO tb_colaboradores(cpf, nome, numero_carteira_trabalho, 
							data_contratacao, salario, cargo) VALUES (
                                '56789024353',
                                'Fabiana Cunha',
                                '34104812145',
                                '2022-07-18',
                                4300.00,
                                'Scrum Master'
							);
                                
INSERT INTO tb_colaboradores(cpf, nome, numero_carteira_trabalho, 
							data_contratacao, salario, cargo) VALUES (
                                '67891231236',
                                'Gualberto Figueiredo',
                                '62523528521',
                                '2023-08-06',
                                3813.00,
                                'Programador(a) Pleno'
							);
                            
SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores  WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 3813.00 WHERE cpf = '12345678919';