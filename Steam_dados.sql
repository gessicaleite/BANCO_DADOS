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

SELECT APP_ID, NOME, AVALIACOES_POSITIVAS FROM `STEAM_DADOS` ORDER BY `AVALIACOES_POSITIVAS` DESC LIMIT 5;
SELECT APP_ID, NOME, AVALIACOES_NEGATIVAS FROM `STEAM_DADOS` ORDER BY `AVALIACOES_NEGATIVAS` DESC LIMIT 5;

SELECT APP_ID, NOME, AVALIACOES_POSITIVAS, PRECO FROM `STEAM_DADOS` WHERE `PRECO` = 0 ORDER BY `AVALIACOES_POSITIVAS` DESC LIMIT 5;
SELECT APP_ID, NOME, AVALIACOES_NEGATIVAS, PRECO FROM `STEAM_DADOS` WHERE PRECO <> 0 ORDER BY `AVALIACOES_NEGATIVAS` DESC LIMIT 5;

SELECT COUNT(GENEROS) FROM `STEAM_DADOS` ORDER BY `GENEROS`; 
select generos, count(generos) as Quantidade from steam_dados
group by generos
order by Quantidade desc;

SELECT month(data_lancamento) as 'Mês_Lançamento',COUNT(*) as 'Quantidade_Jogos_Lançados'
FROM steam_dados
GROUP BY month(data_lancamento) 
ORDER BY COUNT(*) DESC;

