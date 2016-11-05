INSERT INTO dbo.DimEstado (Nome)
select DISTINCT [Unidade da Federação]
from DWArrecadacao
where Ano > 1996 and not [Unidade da Federação] like '%Igno%'