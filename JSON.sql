USE base_consorcio
go


SELECT * 
FROM conserje 
WHERE ISJSON(apeynom) > 0;


SELECT JSON_VALUE(apeynom, '$.nombre') AS nombre
FROM conserje
WHERE idconserje = 221;


--DROP INDEX IF EXISTS idx_idconserje ON dbo.conserje;
--CREATE INDEX idx_idconserje ON dbo.conserje (idconserje);
--SELECT * FROM conserje WHERE idconserje = 58;

INSERT INTO conserje (apeynom, tel, fechnac, estciv) 
VALUES ('{"apellido": "GAUNA", "nombre": "PEDRO"}', 3794651348, '1998-12-12', 'S');

UPDATE conserje
SET apeynom =  JSON_MODIFY(apeynom, '$.nombre', NULL)
WHERE idconserje = 223;

UPDATE conserje
SET apeynom = JSON_MODIFY(apeynom, '$.nombre', 'PEDRO') 
WHERE idconserje = 223;

UPDATE conserje
SET apeynom = JSON_MODIFY(apeynom, '$.nombre', 'SERGIO')
WHERE idconserje = 223;

