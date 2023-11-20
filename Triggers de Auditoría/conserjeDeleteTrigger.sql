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
CREATE TRIGGER conserje_trigger_delete
	ON [dbo].[conserje]
	AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
INSERT INTO dbo.auditoria(tabla_afectada, columna_afectada, valor_Anterior, valor_actual, usuario, fecha_hora, accion)
    SELECT 'dbo.conserje','idconserje', deleted.idconserje, NULL, SYSTEM_USER, CURRENT_TIMESTAMP, 'Delete' FROM deleted;

    INSERT INTO dbo.auditoria(tabla_afectada, columna_afectada, valor_Anterior, valor_actual, usuario, fecha_hora, accion)
    SELECT 'dbo.conserje','apeynom', deleted.apeynom, NULL, SYSTEM_USER, CURRENT_TIMESTAMP, 'Delete' FROM deleted;

    INSERT INTO dbo.auditoria(tabla_afectada, columna_afectada, valor_Anterior, valor_actual, usuario, fecha_hora, accion)
    SELECT 'dbo.conserje','tel', deleted.tel, NULL, SYSTEM_USER, CURRENT_TIMESTAMP, 'Delete' FROM deleted;

    INSERT INTO dbo.auditoria(tabla_afectada, columna_afectada, valor_Anterior, valor_actual, usuario, fecha_hora, accion)
    SELECT 'dbo.conserje','fechnac', deleted.fechnac, NULL, SYSTEM_USER, CURRENT_TIMESTAMP, 'Delete' FROM deleted;

    INSERT INTO dbo.auditoria(tabla_afectada, columna_afectada, valor_Anterior, valor_actual, usuario, fecha_hora, accion)
    SELECT 'dbo.conserje','estciv', deleted.estciv, NULL, SYSTEM_USER, CURRENT_TIMESTAMP, 'Delete' FROM deleted;
END;
