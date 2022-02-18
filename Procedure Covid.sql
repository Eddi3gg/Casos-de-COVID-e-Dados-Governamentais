USE [projeto]
GO
/****** Object:  StoredProcedure [dbo].[Visualização_Covid]    Script Date: 03/02/2022 18:33:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [dbo].[Visualização_Covid]
 
 @ID_Local int

as 
begin

select 
Estado,
Casos,
Mortes
 from Covid
 WHERE ID_Local = @ID_Local

end

exec Visualização_Covid 5