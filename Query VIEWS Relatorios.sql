alter view vw_Relatorio_Completo as

select ID_Local as codigo,
 Casos, Mortes, Estado
   
from Covid

select * from vw_Relatorio_Completo

-------------------------------------- 

alter view vw_Relatorio_Auxilio as

select Valor_Disponivel,
	 Estado_UF,
	 Municipio
   
from Auxilio

select * from vw_Relatorio_Auxilio
--------------------------------------


create view vw_Dados_Beneficio as
select 
	 Estado_UF,
	 Municipio,
	 Valor_Total
   
from Detalhamento_Dos_Beneficios_Cidadão

select * from vw_Dados_Beneficio