
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


/*
6. Qual é o custo total da coleção permanente do museu?
7. Quais são os objetos (Numid e título) da coleção permanente cujo custo é
maior que o custo médio de todos os objetos do museu?
8. Quais são as coleções (sem considerar a permanente) com o maior número de
objetos de arte emprestados?
9. Quais são as coleções (sem considerar a permanente) com o maior custo total
de objetos emprestados?
10. Quais são as coleções com maior número de objetos emprestados que o número
de objetos da coleção permanente?
11. Quais são as coleções que tem contribuído em todas as exposições de 2010?
12. Remover todos os objetos emprestados da coleção Y.
13. Transferir o objeto de título X da coleção Y para coleção permanente./*