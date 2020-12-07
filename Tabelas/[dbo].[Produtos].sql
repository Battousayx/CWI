CREATE TABLE [dbo].[Produtos]
(
[IDProduto] [int] NOT NULL IDENTITY(1, 1),
[CodigoProduto] [int] NOT NULL,
[Nome] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Descricao] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AI NOT NULL,
[Valor] [decimal] (10, 2) NOT NULL,
[DataCadastro] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Produtos] ADD CONSTRAINT [PK_Produtos] PRIMARY KEY CLUSTERED ([IDProduto]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Produtos_Codigo] ON [dbo].[Produtos] ([CodigoProduto]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Produtos_Codigo_Desc] ON [dbo].[Produtos] ([CodigoProduto] DESC) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Produtos_Nome] ON [dbo].[Produtos] ([Nome]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Produtos_Nome_Desc] ON [dbo].[Produtos] ([Nome] DESC) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Produtos_Nome_Descricao] ON [dbo].[Produtos] ([Nome], [Descricao]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Produtos_Nome_Desc_Descricao] ON [dbo].[Produtos] ([Nome] DESC, [Descricao]) ON [PRIMARY]
GO
