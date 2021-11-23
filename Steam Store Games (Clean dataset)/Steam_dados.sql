USE STEAM;

CREATE TABLE STEAM_DADOS (
APP_ID int,
NOME text,
DATA_LANCAMENTO date,
CATEGORIAS text,
GENEROS text,
AVALIACOES_POSITIVAS int,
AVALIACOES_NEGATIVAS int,
PRECO double
);

select * from steam_dados;

START TRANSACTION;
COMMIT;
SET AUTOCOMMIT = 0;

ALTER TABLE `STEAM_DADOS` ADD PRIMARY KEY (APP_ID);