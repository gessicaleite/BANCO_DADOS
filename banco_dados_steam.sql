CREATE DATABASE `STEAM`;
USE `STEAM`;
describe table `steam_description_data`;
select * from `steam_description_data`;
select * from `steam`;
select * from `steam_media_data`;
select * from `steam_requirements_data`;
drop table `steam_media_data`;
drop table `steam_requirements_data`;
START TRANSACTION;
COMMIT;
SET AUTOCOMMIT = 0;
