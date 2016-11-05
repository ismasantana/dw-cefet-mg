CREATE TABLE DimEstado
(
	Id int IDENTITY(1,1),
	Nome nvarchar(50) NOT NULL,
	CONSTRAINT PK_DimEstado PRIMARY KEY (Id)
);
GO

CREATE TABLE DimTempo
(
	Id int IDENTITY(1,1),
	Mes nvarchar(15) NOT NULL,
	Ano int not null,
	CONSTRAINT PK_DimTempo PRIMARY KEY (Id)
);
GO

CREATE TABLE FatoArrecadacao
(
	Id int IDENTITY(1,1),
	TempoId int NOT NULL,
	EstadoId int NOT NULL,
	Total float NOT NULL,
	CONSTRAINT PK_FatoArrecadacao PRIMARY KEY (Id),
	CONSTRAINT FK_DimTempo_Fato FOREIGN KEY (TempoId) REFERENCES DimTempo(Id),
	CONSTRAINT FK_DimEstado_Fato FOREIGN KEY (EstadoId) REFERENCES DimEstado(Id)
);
GO