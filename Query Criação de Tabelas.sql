
use projeto

CREATE TABLE Covid
(
    ID_Local int identity,  
    Casos varchar(50) not null,
    Mortes varchar(50)not null,
    Estado varchar(50) not null
);
--DDL PARA ADICIONAR CHAVE PRIMARIA NA TAB COVID
  ALTER TABLE Covid ADD PRIMARY KEY (ID_Local)
  --O que � int Identity?
  --� o valor de incremento adicionado ao valor de identidade da linha anterior que foi carregada.

	CREATE�TABLE�Auxilio���
(������
	ID_UF�int identity,������
	Valor_Disponivel���char (45)�NOT�NULL,
	Estado_UF char(50) not null,
	Municipio char(50) not null,
	ID_Local integer
��);

--O tipo integer � a escolha usual, porque oferece o melhor equil�brio entre faixa de valores, tamanho de armazenamento e desempenho.
--O tipo INTEGER especifica os n�meros inteiros entre -2147483648 e 2147483647.

alter table Auxilio_Emergencial add constraint fk_LocalUF foreign key (ID_Local) references Covid (ID_Local)

-- As restri��es FOREIGN KEY s� podem fazer refer�ncia a tabelas que est�o no mesmo banco de dados e no mesmo servidor.


select * from Covid order by Casos
select * from Covid order by Mortes

select * from Auxilio order by Valor_Disponivel asc ;

	CREATE�TABLE�Detalhamento_Dos_Beneficios_Cidad�o��
(������
	ID_Estado�	int identity,
	Estado_UF 	char(50) not null,
	Municipio 	char(50) not null,
	Valor_Total	char(50) not null,
	ID_Local integer
);

alter table Detalhamento_Dos_Beneficios_Cidad�o add constraint fk_mUF foreign key (ID_Local) references Covid (ID_Local)
-- As restri��es FOREIGN KEY s� podem fazer refer�ncia a tabelas que est�o no mesmo banco de dados e no mesmo servidor.
select * from Detalhamento_Dos_Beneficios_Cidad�o