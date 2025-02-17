#MYSQL
CREATE DATABASE MUSEU;

CREATE TABLE OBJETO_ARTE (
    NUM_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
    TITULO VARCHAR(255) NOT NULL,
    DESCRICAO VARCHAR(255) NOT NULL,
    ANO DATE,
    PERIODO VARCHAR (40) NOT NULL,
    PAIS_ORIGEM VARCHAR(100) NOT NULL,
    ESTILO VARCHAR(40) NOT NULL,
    TIPO_OBJ_ARTE VARCHAR(50) NOT NULL,
    CAT_OBJ_ARTE VARCHAR(50) NOT NULL,
    FK_ARTISTA_NOME VARCHAR(255)
);


CREATE TABLE COLECAO_PERMANENTE (
    CUSTO INTEGER NOT NULL,
    EM_EXPOSICAO TINYINT NOT NULL,  #TINYINT porque no mysql não existe tipo boolean, no caso 1 = EM_EXPOSICAO, e 0 = DEPOSITO
    FK_OBJETO_ARTE_NUM_ID INTEGER

);
 
CREATE TABLE ESCULTURA (
    PESO INTEGER NOT NULL,
    ALTURA INTEGER NOT NULL,
    MATERIAL VARCHAR(255) NOT NULL,
    FK_OBJETO_ARTE_NUM_ID INTEGER
);

CREATE TABLE OUTROS (
    TIPO VARCHAR(100),
    FK_OBJETO_ARTE_NUM_ID INTEGER
);

CREATE TABLE EMPRESTADO (
    DATA_EMPRESTIMO DATE NOT NULL,
    DATA_DEVOLUCAO DATE NOT NULL,
    FK_OBJETO_ARTE_NUM_ID INTEGER,
    FK_COLECOES_NOME VARCHAR(255)
);

CREATE TABLE PINTURA (
    TIPO_TINTA VARCHAR(100) NOT NULL,
    SUPORTE VARCHAR(100) NOT NULL,
    FK_OBJETO_ARTE_NUM_ID INTEGER
);

CREATE TABLE ARTISTA (
    NOME VARCHAR(255) NOT NULL PRIMARY KEY,
    DATA_MORTE DATE NOT NULL,
    PAIS_DE_ORIGEM VARCHAR(100) NOT NULL,
    PERIODO VARCHAR(50) NOT NULL,
    ESTILO_PRINCIPAL VARCHAR(100) NOT NULL,
    DESCRICAO VARCHAR(255) NOT NULL
);

CREATE TABLE EXPOSICOES (
    NOME VARCHAR(255) NOT NULL PRIMARY KEY,
    DATA_INICIO DATE,
    DATA_FINAL DATE
);

CREATE TABLE COLECOES (
    NOME VARCHAR(255) PRIMARY KEY,
    TIPO VARCHAR(100),
    DESCRICAO VARCHAR(255),
    ENDERECO VARCHAR(255),
    TELEFONE CHAR(14), #(XX)XXXXX-XXXX -> 14
    PESSOA_CONTATO VARCHAR(100)
);

CREATE TABLE PARTICIPA (
    FK_OBJETO_ARTE_NUM_ID INTEGER,
    FK_EXPOSICOES_NOME VARCHAR(255)
);
 
ALTER TABLE OBJETO_ARTE ADD CONSTRAINT FK_OBJETO_ARTE_2
    FOREIGN KEY (FK_ARTISTA_NOME)
    REFERENCES ARTISTA (NOME)
    ON DELETE CASCADE;
 
 
ALTER TABLE COLECAO_PERMANENTE ADD CONSTRAINT FK_COLECAO_PERMANENTE_2
    FOREIGN KEY (FK_OBJETO_ARTE_NUM_ID)
    REFERENCES OBJETO_ARTE (NUM_ID)
    ON DELETE CASCADE;
 
ALTER TABLE ESCULTURA ADD CONSTRAINT FK_ESCULTURA_2
    FOREIGN KEY (FK_OBJETO_ARTE_NUM_ID)
    REFERENCES OBJETO_ARTE (NUM_ID)
    ON DELETE CASCADE;
 
ALTER TABLE OUTROS ADD CONSTRAINT FK_OUTROS_2
    FOREIGN KEY (FK_OBJETO_ARTE_NUM_ID)
    REFERENCES OBJETO_ARTE (NUM_ID)
    ON DELETE CASCADE;
 
ALTER TABLE EMPRESTADO ADD CONSTRAINT FK_EMPRESTADO_2
    FOREIGN KEY (FK_OBJETO_ARTE_NUM_ID)
    REFERENCES OBJETO_ARTE (NUM_ID)
    ON DELETE CASCADE;
 
ALTER TABLE EMPRESTADO ADD CONSTRAINT FK_EMPRESTADO_3
    FOREIGN KEY (FK_COLECOES_NOME)
    REFERENCES COLECOES (NOME)
    ON DELETE CASCADE;
 
ALTER TABLE PINTURA ADD CONSTRAINT FK_PINTURA_2
    FOREIGN KEY (FK_OBJETO_ARTE_NUM_ID)
    REFERENCES OBJETO_ARTE (NUM_ID)
    ON DELETE CASCADE;
 
ALTER TABLE PARTICIPA ADD CONSTRAINT FK_PARTICIPA_1
    FOREIGN KEY (FK_OBJETO_ARTE_NUM_ID)
    REFERENCES OBJETO_ARTE (NUM_ID)
    ON DELETE RESTRICT;
 
ALTER TABLE PARTICIPA ADD CONSTRAINT FK_PARTICIPA_2
    FOREIGN KEY (FK_EXPOSICOES_NOME)
    REFERENCES EXPOSICOES (NOME)
    ON DELETE SET NULL;