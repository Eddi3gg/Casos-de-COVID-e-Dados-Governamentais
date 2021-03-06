ALTER Procedure [dbo].[Relatorio_Auxilio] 
 @ID_UF int
as 
begin
select 
		Valor_Disponivel,
			Estado_UF,
			Municipio
	Valor_Total
 from Auxilio
 WHERE ID_UF = @ID_UF
end
-------------------------------------------------
-------------------------------------------------
ALTER Procedure [dbo].[Relatorio_Beneficios_Cidadao] 
 @ID_Estado int
as 
begin
select 
	Estado_UF, 
	Municipio,
	Valor_Total
 from Detalhamento_Dos_Beneficios_Cidadão
 WHERE ID_Estado = @ID_Estado
end
--------------------------------------------------
--------------------------------------------------
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