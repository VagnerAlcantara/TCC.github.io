USE [Psystem]
GO

IF (EXISTS (SELECT * 
                 FROM INFORMATION_SCHEMA.TABLES 
                 WHERE TABLE_SCHEMA = 'Paciente' 
                 AND  TABLE_NAME = 'Paciente'))
BEGIN
    DROP TABLE [Paciente].[Paciente]
END

CREATE TABLE [Paciente].[Paciente](
	[Id] [int] NOT NULL PRIMARY KEY,
	[IdPessoa] [int] NOT NULL FOREIGN KEY REFERENCES Pessoa.Pessoa(Id),
	[IdProntuario] [int] NOT NULL FOREIGN KEY REFERENCES Paciente.Prontuario(Id),
	[IdEmpresa] [int] NULL FOREIGN KEY REFERENCES Empresa.Empresa(Cnpj),
	[IdConvenio] [int] NULL FOREIGN KEY REFERENCES Empresa.Empresa(Cnpj),
)