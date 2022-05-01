#INSERTS
#INSERIR ARTISTAS PRIMEIRO

#ARTISTA
INSERT INTO ARTISTA VALUES('Marcela Alícia Luna Caldeira', '2010-08-15', 'Brasil','Moderna','Impressionismo','Marcela foi um dos grandes nomes da arte moderna no Brasil.');
INSERT INTO ARTISTA VALUES('Severino Gael Eduardo Silveira', '1982-11-11','Argentina','Contemporanea','Expressionismo','Gael marcou a história da arte contemporanea na america latina.');
INSERT INTO ARTISTA VALUES('Henrique Bryan Fernando Jesus', '1925-02-25', 'Colombia','Moderna','Surrealismo','Era mais conhecido como Fernando Jesus.');

#OBJETOS_ARTE
INSERT INTO OBJETO_ARTE VALUES(NULL,'Pedra furada', 'O título explicita bem o que é a obra, uma pedra furada.', '1970-12-12', 'Arte moderna', 'Brasil', 'PERMANENTE','Museu','Arte','Marcela Alícia Luna Caldeira', 666); #COLECOES PERMANENTES
INSERT INTO OBJETO_ARTE VALUES(NULL,'Silhueta de Jasmin', 'A obra mais famosa de Gael.', '1930-04-10', 'Arte Contemporanea','Argentina', 'ESCULTURA', 'Museu','Arte','Severino Gael Eduardo Silveira', 1000); #ESCULTURAS     
INSERT INTO OBJETO_ARTE VALUES(NULL,'A voz de Monalisa', 'Retrata a simplicidade da vida, a felicidade nas pequenas coisas.', '1980-11-28', 'Arte moderna','Italia', 'OUTROS','Museu','Arte', NULL, 444); #OUTROS
INSERT INTO OBJETO_ARTE VALUES(NULL,'O alvorecer da alma', 'A obra retrata o amor envolvido na geração de uma nova vida.', '1952-09-05','Arte moderna', 'Colombia', 'EMPRESTADO', 'Museu','Arte','Henrique Bryan Fernando Jesus', 100); #EMPRESTADO
INSERT INTO OBJETO_ARTE VALUES(NULL,'O amanhecer do eclipse', 'Pintura mostra que toda a escuridão tem seu fim com a luz', '1979-01-19', 'Arte Contemporanea','Russia','PINTURA','Museu','Arte', 'Aurora Helena Brito', 704); #PINTURA
INSERT INTO OBJETO_ARTE VALUES(NULL,'Noite traiçoeira', 'Retrata a realidade de jovens de classe baixa.', '1994-09-08', 'Arte moderna','Brasil','EXPOSICAO','Museu','Arte', 'Marcela Alícia Luna Caldeira', 500); #EXPOSICAO

#COLECAO PERMANENTE
INSERT INTO COLECAO_PERMANENTE VALUES (1, 1);
INSERT INTO COLECAO_PERMANENTE VALUES (1, 1);
INSERT INTO COLECAO_PERMANENTE VALUES (1, 1);
INSERT INTO COLECAO_PERMANENTE VALUES (0, 3);
INSERT INTO COLECAO_PERMANENTE VALUES (1, 5);

#ESCULTURA
INSERT INTO ESCULTURA VALUES(1023,21,'Madeira',2);

#OUTROS
INSERT INTO OUTROS VALUES('Gravura', 3);

#EMPRESTADO
INSERT INTO EMPRESTADO VALUES ('2012-12-20', '2014-12-21', 4, NULL);
INSERT INTO EMPRESTADO VALUES ('2006-12-20', '2011-12-10', 3, 'Seculo Vinte');
INSERT INTO EMPRESTADO VALUES ('2012-12-24', '2014-01-08', 1, 'Vida tecnológica');
INSERT INTO EMPRESTADO VALUES ('2018-05-24', '2020-04-20', 1, 'Seculo Vinte');

#PINTURA
INSERT INTO PINTURA VALUES ('Guache', 'Tela', 5);

#EXPOSICOES
INSERT INTO EXPOSICOES VALUES('Relógios', '2010-11-02','2012-06-11');
INSERT INTO EXPOSICOES VALUES('Virtualização da vida','2011-11-20','2012-03-10');
INSERT INTO EXPOSICOES VALUES('Tempo', '2015-06-29','2019-07-23');

#COLECOES
INSERT INTO COLECOES VALUES('Seculo Vinte', 'Pessoal','Coleção que mostra as principais obras do século passado','Rua 4-A, 977 - Parque Residencial Nova Fronteira, Gurupi - TO', '(63) 3943-7639','Hebert');
INSERT INTO COLECOES VALUES('Vida tecnológica', 'Museu','Mostra o nosso presente, e a nova realidade virtual.','Rua Ibitioca, 577 - Cosmos, Rio de Janeiro - RJ', '(21) 2822-7938','Ulisses');

#PARTICIPA
INSERT INTO PARTICIPA VALUES(1,'Virtualização da vida');
INSERT INTO PARTICIPA VALUES(3,'Relógios');
INSERT INTO PARTICIPA VALUES(6,'Virtualização da vida');



