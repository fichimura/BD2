
#----------1)Adicione um campo Custo nos objetos de arte e remova esse campo dos objetos
#permanentes. Veja o Esquema em anexo.
 alter table objeto_arte add column CUSTO int;

 alter table colecao_permanente drop column CUSTO;

#----------2)Listar os objetos de arte (Numid e título) de artistas desconhecidos.
#CONFERIR DEPOIS
 SELECT NUM_ID, TITULO FROM OBJETO_ARTE WHERE FK_ARTISTA_NOME IS NULL;

 #----------3)
 #Listar os objetos de arte (Numid e título) expostos em todas as exposições de 2010
 #VER SE O A DATA É SO ANO MESMO OU SE TEM OUTRI FORMATO
SELECT NUM_ID, TITULO FROM OBJETO_ARTE WHERE NUM_ID = (SELECT FK_OBJETO_ARTE_NUM_ID FROM PARTICIPA WHERE( FK_EXPOSICOES_NOME = (SELECT NOME FROM EXPOSICOES WHERE DATA_EXPOSICAO = 2010 ) )
 
#4) Listar os objetos de arte (Numid, título, coleção) criados pelo autor X
#(Nome).
SELECT A.NUM_ID, A.TITULO, B.NOME FROM OBJETO_ARTE AS A, COLECOES AS B
WHERE A.FK_ARTISTA_NOME = 'ASDQJIWBDIQWJ';

/*5Listar as coleções (Nome e típo) que contêm objetos de arte produzidos pelo
artista X.*/
SELECT NOME, TIPO FROM COLECOES
LEFT JOIN 

SELECT NOME FROM ARTISTA WHERE NOME = #X

SELECT NUM_ID FROM OBJETO_ARTE WHERE FK_ARTISTA_NOME = (PONHA) 

SELECT FK_COLECOES_NOME FROM EMPRESTADO WHERE FK_OBJETO_ARTE_NUM_ID = ()

SELECT NOME, TIPO FROM COLECOES WHERE NOME IN (
SELECT FK_COLECOES_NOME FROM EMPRESTADO WHERE FK_OBJETO_ARTE_NUM_ID IN (
    SELECT NUM_ID FROM OBJETO_ARTE WHERE FK_ARTISTA_NOME IN (
        SELECT NOME FROM ARTISTA WHERE NOME = 'DKNAKJDNA'
    )
));


/*
6. Qual é o custo total da coleção permanente do museu?
*/
SELECT SUM(CUSTO) FROM COLECAO_PERMANENTE;

/*
7. Quais são os objetos (Numid e título) da coleção permanente cujo custo é
maior que o custo médio de todos os objetos do museu?
*/
SELECT NUM_ID, TITULO FROM OBJETO_ARTE WHERE (NUM_ID IN (
    SELECT FK_OBJETO_ARTE_NUM_ID FROM COLECAO_PERMANENTE WHERE CUSTO >(
        SELECT AVG(CUSTO) FROM COLECAO_PERMANENTE)));

/*
8. Quais são as coleções (sem considerar a permanente) com o maior número de
objetos de arte emprestados?
*/
SELECT COUNT(CAT_OBJ_ARTE), FK_COLECOES_NOME FROM(
SELECT A.CAT_OBJ_ARTE, B.FK_COLECOES_NOME FROM OBJETO_ARTE AS A
INNER JOIN (SELECT FK_OBJETO_ARTE_NUM_ID, FK_COLECOES_NOME FROM EMPRESTADO WHERE FK_COLECOES_NOME IN(
    SELECT NOME FROM COLECOES)) AS B
ON A.NUM_ID = B.FK_OBJETO_ARTE_NUM_ID) AS C
GROUP BY  2;

/*
9. Quais são as coleções (sem considerar a permanente) com o maior custo total
de objetos emprestados?
*/

SELECT SUM(CUSTO), FK_COLECOES_NOME FROM(
SELECT A.CUSTO, B.FK_COLECOES_NOME FROM OBJETO_ARTE AS A
INNER JOIN (SELECT FK_OBJETO_ARTE_NUM_ID, FK_COLECOES_NOME FROM EMPRESTADO WHERE FK_COLECOES_NOME IN(
    SELECT NOME FROM COLECOES)) AS B
ON A.NUM_ID = B.FK_OBJETO_ARTE_NUM_ID) AS C
GROUP BY 2;

/*
10. Quais são as coleções com maior número de objetos emprestados que o número
de objetos da coleção permanente?
*/

SELECT NOME FROM COLECOES WHERE (SELECT COUNT(NOME) FROM COLECOES)  >(
SELECT COUNT(*) FROM COLECAO_PERMANENTE);

/*
11. Quais são as coleções que tem contribuído
 em todas as exposições de 2010?
*/

SELECT FK_COLECOES_NOME FROM EMPRESTADO WHERE FK_OBJETO_ARTE_NUM_ID IN (
SELECT NUM_ID FROM OBJETO_ARTE WHERE NUM_ID IN (
SELECT A.FK_OBJETO_ARTE_NUM_ID FROM PARTICIPA AS A INNER JOIN(
SELECT NOME,YEAR(DATA_INICIO) AS ANO FROM EXPOSICOES WHERE YEAR(DATA_INICIO) = '2010') AS B
ON A.FK_EXPOSICOES_NOME = B.NOME
)
);

/*
12. Remover todos os objetos emprestados da coleção Y.
*/


DELETE FROM EMPRESTADO WHERE FK_COLECOES_NOME = 'DFNFKJW'
AND FK_COLECOES_NOME IN
(SELECT NOME FROM COLECOES);


/*
13. Transferir o objeto de título X da coleção Y 
para coleção permanente.
*/


