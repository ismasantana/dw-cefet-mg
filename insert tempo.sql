INSERT INTO dbo.DimTempo (Ano, Mes)
select DISTINCT Ano, M�s
from DWArrecadacao
where Ano > 1996 and not [Unidade da Federa��o] like '%Igno%'
order by Ano