/* Activity 02 -  Project: React  */

/* Create and select database  */
CREATE DATABASE project2;
USE project2;

/* Create table 'usuario' */
CREATE TABLE USUARIO (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(150),
    IMAGEM BLOB NOT NULL,
    NOME_USUARIO VARCHAR(150),
    DATA_CADASTRO DATE,
);

/* Create table 'cartão' */
CREATE TABLE CARTAO (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NUMERO VARCHAR(16) NOT NULL,
    CVV INT(3) NOT NULL,
    DATA_EXPIRACAO DATE,
    VALIDO BOOLEAN,
    DATA_CADASTRO DATE,
);

/* Create table 'transação' */
CREATE TABLE TRANSACAO (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ID_USUARIO INT NOT NULL,
    ID_CARTAO INT NOT NULL,
    VALOR DECIMAL(20,2)
    DATA_CADASTRO DATE,
);


/* Insert values to table 'usuario" */
INSERT INTO USUARIO ( NOME, IMAGEM, NOME_USUARIO, DATA_CADASTRO) 
    VALUES 
        ('Leonardo Galvez Rodrigues', 'IMG/Leonardo1', 'leonardo1', '2021-11-03'),
        ('Leonardo Galvez Rodrigues', 'IMG/Leonardo2', 'leonardo2','2021-11-03');

/* Return of registered values ​​in 'usuario' by name (alphabetical order) */
SELECT * FROM USUARIO ORDER BY NOME ASC;

/* Insert values to table 'cartão" */
INSERT INTO CARTAO ( NUMERO, CVV, DATA_EXPIRACAO, NOME_USUARIO, VALIDO, DATA_CADASTRO) 
    VALUES 
        ('1234567812345678', '123', '2026-09-01', 'leonardo1', '1', '2021-11-03' ),
	    ('1234123412341234', '321', '2026-08-01', 'leonardo2', '0', '2021-11-03' );

/* Return of registered values on 'cartão' in ascending order by registration date */
SELECT * FROM CARTAO WHERE VALIDO = 1 ORDER BY DATA_CADASTRO ASC;

/* Insert values to table 'transação" */
INSERT INTO TRANSACAO ( ID_USUARIO, ID_CARTAO, VALOR, DATA_CADASTRO) 
    VALUES 
        ('1', '1', 900.00, '2021-11-03'),
        ('2', '2', 300.00, '2021-11-03');

/* Return of registered values on 'transação' in decrease order by registration date with user and cc data */
SELECT
    TRANSACAO.ID_USUARIO, TRANSACAO.ID_CARTAO, TRANSACAO.VALOR, TRANSACAO.DATA_CADASTRO,
    USUARIO.NOME, USUARIO.IMAGEM, USUARIO.NOME_USUARIO, USUARIO.DATA_CADASTRO,
    CARTAO.NUMERO, CARTAO.CVV, CARTAO.DATA_EXPIRACAO, CARTAO.VALIDO, CARTAO.DATA_CADASTRO
FROM TRANSACAO 
    LEFT JOIN USUARIO ON USUARIO.ID = TRANSACAO.ID
    LEFT JOIN CARTAO ON CARTAO.ID = TRANSACAO.ID
    ORDER BY TRANSACAO.DATA_CADASTRO DESC;
