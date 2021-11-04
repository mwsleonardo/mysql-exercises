/* Activity 03 -  Project: React (in Squad)  */

/* Create and select database  */
CREATE DATABASE project3;
USE project3;

/* Create table 'search' */
CREATE TABLE SEARCH (
    ID INT NOT NULL AUTO_INCREMENT,
    SQUAD INT NOT NULL,
    HASHTAG VARCHAR(150),
    DATA_HASHTAG DATE,
    HORA_HASHTAG TIME,
    PRIMARY KEY (ID)
);

/* Insert values to table 'search" */
INSERT INTO, SEARCH (SQUAD, HASHTAG, DATA_HASHTAG, HORA_HASHTAG) VALUES
    ('52', 'vikings', '2021-11-03', '23:30:30'),
    ('52', 'motorhead', '2021-11-03', '23:40:20'),
    ('52', "misfits", '2021-11-03', '23:55:10');

/* Return of registered values ​​in table 'search' */
SELECT * FROM SEARCH;

/* Update values in table 'search' */
UPDATE SEARCH SET HASHTAG='metallica' WHERE ID = 3;

/* Delete values in table 'search' */
DELETE FROM SEARCH WHERE ID = 2;

/* Create table 'equipe' */
CREATE TABLE EQUIPE (
    ID INT NOT NULL AUTO_INCREMENT,
    SQUAD INT NOT NULL, 
    NOME VARCHAR(150) NOT NULL,
    DESCRICAO VARCHAR(500),
    GITHUB VARCHAR(500),
    EMAIL VARCHAR(300) NOT NULL,
    LINKEDIN VARCHAR(500),
    IMAGEM BLOB NOT NULL,
    PRIMARY KEY (ID)
);

/* Insert values to table 'equipe" */
INSERT INTO EQUIPE (SQUAD, NOME, DESCRICAO, GITHUB, EMAIL, LINKEDIN, IMAGEM) VALUES
    (52, 'Flávio','Arquiteto e Urbanista apaixonado por tecnologia...', 'https://github.com/flavioxe',  'email@email.com', 'https://www.linkedin.com/flaviohmsilva', 'C:\...\flavio.png'),
    (52, 'Juliana', 'De arquiteta para desenvolvedora Front-End em construção...', 'https://github.com/ JulianaGoia', 'email@email.com', 'https://www.linkedin.com/julianakaorigoia', 'C:\...\juliana.png'),
    (52, 'Giovanni', 'Estudante | Desenvolvedor Front-End Jr.', 'https://github.com/Giovanni-Shiroma',  'email@email.com', 'https://www.linkedin.com/giovannishiroma', 'C:\...\giovanni.png'),
    (52, 'Marcelo', 'Cada sonho que vc deixa para trás, é um pedaço do seu futuro...', 'https://github.com/ iMarceloCorrea', 'email@email.com', 'https://www.linkedin.com/marcelo-correa', 'C:\...\marcelo.png'),
    (52, 'Leonardo', 'Amante da tecnologia, estudioso e curioso...', 'https://github.com/mwsleonardo',  'email@email.com', 'https://www.linkedin.com/mwsleonardo', 'C:\...\leonardo.png');

/* Return of registered values ​​in table 'equipe' */
SELECT * FROM EQUIPE;

/* Update values in table 'equipe' */
UPDATE EQUIPE SET EMAIL = 'mwsleonardo@gmail.com' WHERE ID = 5;

/* Delete values in table 'equipe' */
DELETE FROM EQUIPE WHERE ID = 4;

/* Create table 'access' */
CREATE TABLE ACCESS (
    ID INT NOT NULL AUTO_INCREMENT,
    EMAIL VARCHAR(300) NOT NULL,
    SENHA CHAR(6) NOT NULL,
    PRIMARY KEY (ID)
);

/* Insert values to table 'access" */
INSERT INTO ACCESS (EMAIL, SENHA) VALUES
    ('newtab@academy.com', '123456');

/* Return of registered values ​​in table 'access' */
SELECT * FROM ACCESS;

/* Update values in table 'access' */
UPDATE ACCESS SET SENHA = '010203' WHERE ID = 1;

/* Delete values in table 'access' */
DELETE FROM ACCESS WHERE ID = 1;

/* Create table 'tweet' */
CREATE TABLE TWEET (
    ID_TWEET INT NOT NULL AUTO_INCREMENT;
    NOME VARCHAR(150) NOT NULL,
    USER VARCHAR(50) NOT NULL,
    FOTO BLOB,
    TEXTO VARCHAR(280),
    DATA_TWEET DATE,
    HORA_TWEET TIME,
    LINK VARCHAR(500),
    PRIMARY KEY (ID)
);

CREATE INDEX BUSCA_TWEET ON TWEET (NOME, USER, DATA_TWEET)
ORDER BY DATA_TWEET DESC;

/* Insert values to table 'tweet" */
INSERT INTO HASHTAG_FINDER.RESULTADOS_BUSCA (NOME, USER, FOTO, TEXTO, DATA_TWEET, HORA_TWEET) VALUES
('Leonardo1' '@mwsleonardo1', 'C:\...\leonardo1.png', 'Lorem ipsum dolor', '2021-11-03', '23:20:30'),
('Leonardo2' '@mwsleonardo2', 'C:\...\leonardo2.png', 'Lorem ipsum dolor', '2021-11-03', '23:30:30'),
('Leonardo2' '@mwsleonardo3', 'C:\...\leonardo3.png', 'Lorem ipsum dolor', '2021-11-03', '23:40:30');

/* Return of registered values ​​in table 'tweet' */
SELECT * FROM TWEET;

/* Update values in table 'tweet' */
UPDATE TWEET SET USER ='@mwsleonardo4' WHERE ID = 2;

/* Delete values in table 'tweet' */
DELETE FROM TWEET WHERE ID = 2;