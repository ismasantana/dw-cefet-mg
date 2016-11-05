INSERT INTO dbo.DimTempo (Ano, Mes)
select DISTINCT Ano, Mês
from DWArrecadacao
where Ano > 1996 and not [Unidade da Federação] like '%Igno%'
order by Ano