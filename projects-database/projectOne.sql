/* Activity 01 -  Project: HTML, CSS e Javascript  */

/* Create and select database  */
CREATE DATABASE project1;
USE project1;

/* Create table */
CREATE TABLE TRANSACAO (
    ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    TIPO VARCHAR(50),
    NOME VARCHAR(150),
    VALOR DECIMAL(20,2),
    DATA_CADASTRO DATE
);

/* Insert values to table */
INSERT INTO TRANSACAO ( ID, TIPO, NOME, VALOR, DATA_CADASTRO) 
    VALUES 
        ('venda', 'arroz', 30.00, '2021-11-03'),
        ('venda', 'feijão', 50.00,'2021-11-03'),
        ('compra', 'almoço', -33.33, '2021-11-03'),
        ('compra', 'jantar', -33.33 '2021-11-03');
        
/* Return of registered values ​​in ascending order by registration date */
SELECT * FROM TRANSACAO ORDER BY DATA_CADASTRO ASC;

/* Return balance of values (on field 'valor') */
SELECT SUM(VALOR) AS VALOR FROM TRANSACAO;

/* Delete all values */
DELETE FROM TRANSACAO;