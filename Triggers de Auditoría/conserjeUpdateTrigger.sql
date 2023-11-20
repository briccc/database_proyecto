-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
CREATE TRIGGER conserje_trigger_update
ON dbo.conserje
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
    IF UPDATE(idconserje)
    BEGIN
    INSERT INTO dbo.auditoria(tabla_afectada, columna_afectada, valor_Anterior, valor_actual, usuario, fecha_hora, accion)
    SELECT 'dbo.conserje','idconserje', deleted.idconserje, inserted.idconserje, SYSTEM_USER, CURRENT_TIMESTAMP, 'Update' FROM deleted INNER JOIN inserted ON deleted.idconserje = inserted.idconserje;
    END;

    IF UPDATE(apeynom)
    BEGIN
    INSERT INTO dbo.auditoria(tabla_afectada, columna_afectada, valor_Anterior, valor_actual, usuario, fecha_hora, accion)
    SELECT 'dbo.conserje','apeynom', deleted.apeynom, inserted.apeynom, SYSTEM_USER, CURRENT_TIMESTAMP, 'Update' FROM deleted INNER JOIN inserted ON deleted.idconserje = inserted.idconserje;
    END;

    IF UPDATE(tel)
    BEGIN
    INSERT INTO dbo.auditoria(tabla_afectada, columna_afectada, valor_Anterior, valor_actual, usuario, fecha_hora, accion)
    SELECT 'dbo.conserje','tel', deleted.tel, inserted.tel, SYSTEM_USER, CURRENT_TIMESTAMP, 'Update' FROM deleted INNER JOIN inserted ON deleted.idconserje = inserted.idconserje;
    END;

    IF UPDATE(fechnac)
    BEGIN
    INSERT INTO dbo.auditoria(tabla_afectada, columna_afectada, valor_Anterior, valor_actual, usuario, fecha_hora, accion)
    SELECT 'dbo.conserje','fechnac', deleted.fechnac, inserted.fechnac, SYSTEM_USER, CURRENT_TIMESTAMP, 'Update' FROM deleted INNER JOIN inserted ON deleted.idconserje = inserted.idconserje;
    END;

    IF UPDATE(estciv)
    BEGIN
    INSERT INTO dbo.auditoria(tabla_afectada, columna_afectada, valor_Anterior, valor_actual, usuario, fecha_hora, accion)
    SELECT 'dbo.conserje','estciv', deleted.estciv, inserted.estciv, SYSTEM_USER, CURRENT_TIMESTAMP, 'Update' FROM deleted INNER JOIN inserted ON deleted.idconserje = inserted.idconserje;
    END;

END;