INSERT INTO dbo.FatoArrecadacao (Total, EstadoId, TempoID)
SELECT CONVERT(float, REPLACE(a.[Valor Arrecadado (R$)], ',', '.')), a.Estado_Id, tempo.ID as Tempo_Id
FROM 
	(SELECT arre.[Valor Arrecadado (R$)], arre.Ano, arre.Mês, estado.Id as Estado_Id, estado.Nome as Estado_Nome 
	FROM DWArrecadacao  as arre
	INNER JOIN DimEstado as estado
	ON estado.Nome = arre.[Unidade da Federação]
	where Ano > 1996 and not [Unidade da Federação] like '%Igno%') as a
INNER JOIN DimTempo as tempo
on CONCAT(tempo.Ano, tempo.Mes) like CONCAT(a.Ano, a.Mês)