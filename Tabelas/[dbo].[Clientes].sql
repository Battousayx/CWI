CREATE TABLE [dbo].[Clientes]
(
[IDCliente] [int] NOT NULL IDENTITY(1, 1),
[Nome] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[DataNascimento] [date] NOT NULL,
[RG] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
[RGEmissor] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
[CPF] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[NomePai] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
[NomeMae] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
[Endereco] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Cidade] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Estado] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Telefone1] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Telefone2] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
[DataCadastro] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clientes] ADD CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED ([IDCliente]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Clientes_Nome_DataNascimento] ON [dbo].[Clientes] ([Nome], [DataNascimento]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Clientes_Nome_DataNascimento_Cidade] ON [dbo].[Clientes] ([Nome], [DataNascimento], [Cidade]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Clientes_Nome_DataNascimento_DESC] ON [dbo].[Clientes] ([Nome], [DataNascimento] DESC) ON [PRIMARY]
GO
