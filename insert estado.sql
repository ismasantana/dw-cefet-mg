INSERT INTO dbo.DimEstado (Nome)
select DISTINCT [Unidade da Federa��o]
from DWArrecadacao
where Ano > 1996 and not [Unidade da Federa��o] like '%Igno%'