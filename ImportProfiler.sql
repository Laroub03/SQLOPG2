CREATE DATABASE Performance;

USE Performance;


CREATE TABLE Random (
	Id INTEGER PRIMARY KEY,
	RandomNumber INTEGER);

	--Var ikke sikker hvordan vi skulle ellers putte 1 milion records nu hvor vi ikke skulle bruge C# alligevel

	--Fandt en hjemmeside som fortalt man kunne gøre det her:
--	create table random_data as
--	with recursive tmp(x) as (
--    select random()
--    union all
--    select random() from tmp
--    limit 1000000
--)
--select * from tmp;
-- Kan bare ikke få den til at fungere


SELECT *
FROM Random
WHERE RandomNumber = 4711;

SELECT RandomNumber, COUNT(*) as 'count' FROM Random GROUP BY RandomNumber

SELECT TOP 1 RandomNumber, COUNT(*)
FROM Random
GROUP BY RandomNumber
ORDER BY COUNT(*) DESC;

SELECT TOP 1 RandomNumber, COUNT(*)
FROM Random
GROUP BY RandomNumber
ORDER BY COUNT(*) ASC;



CREATE INDEX randomIndex on Random (randomNumber)