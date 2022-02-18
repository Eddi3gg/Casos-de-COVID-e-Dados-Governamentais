create Procedure [dbo].[Relatorio_Auxilio]
 
 @ID_UF int

as 
begin

select 
		Valor_Disponivel,
			Estado_UF,
			Municipio

 from Relatorio
 WHERE ID_UF = @ID_UF

end

exec Relatorio_Auxilio 10
select * from Auxilio

	