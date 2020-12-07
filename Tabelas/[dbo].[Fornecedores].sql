CREATE TABLE [dbo].[Fornecedores]
(
[IDFornecedor] [int] NOT NULL IDENTITY(1, 1),
[Nome] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[NomeFantasia] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Cnpj] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[RumoDeAtuacao] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Endereco] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Cidade] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Estado] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Telefone1] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Telefone2] [varchar] (14) COLLATE SQL_Latin1_General_CP1_CI_AI NULL,
[DataCadastro] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fornecedores] ADD CONSTRAINT [PK_Fornecedores] PRIMARY KEY CLUSTERED ([IDFornecedor]) ON [PRIMARY]
GO
