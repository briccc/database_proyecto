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
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE TRIGGER trConserjeInsert 
   ON  dbo.conserje
   AFTER INSERT
AS 
BEGIN

	SET NOCOUNT ON;

    INSERT INTO dbo.AuditoriadTablas (tabla, campo, valorAntes, valorDespues, usuario, fecha, tipo, registro)
	SELECT 'dbo.conserje','idconserje', NULL, inserted.idconserje, SYSTEM_USER, getdate(), 'I', inserted.idconserje FROM inserted;

	INSERT INTO dbo.AuditoriadTablas (tabla, campo, valorAntes, valorDespues, usuario, fecha, tipo, registro)
	SELECT 'dbo.conserje','apeynom ', NULL, inserted.apeynom , SYSTEM_USER, getdate(), 'I', inserted.idconserje FROM inserted;

	INSERT INTO dbo.AuditoriadTablas (tabla, campo, valorAntes, valorDespues, usuario, fecha, tipo, registro)
	SELECT 'dbo.conserje','tel', NULL, inserted.tel , SYSTEM_USER, getdate(), 'I', inserted.idconserje  FROM inserted;

	INSERT INTO dbo.AuditoriadTablas (tabla, campo, valorAntes, valorDespues, usuario, fecha, tipo, registro)
	SELECT 'dbo.conserje','fechnac', NULL, inserted.fechnac , SYSTEM_USER, getdate(), 'I', inserted.idconserje  FROM inserted;

	INSERT INTO dbo.AuditoriadTablas (tabla, campo, valorAntes, valorDespues, usuario, fecha, tipo, registro)
	SELECT 'dbo.conserje','estciv', NULL, inserted.estciv , SYSTEM_USER, getdate(), 'I', inserted.idconserje  FROM inserted;
END
GO
