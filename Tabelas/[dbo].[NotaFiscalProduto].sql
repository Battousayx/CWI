CREATE TABLE [dbo].[NotaFiscalProduto]
(
[IDNotaFiscalProduto] [int] NOT NULL IDENTITY(1, 1),
[IDNotaFiscal] [int] NOT NULL,
[IDProduto] [int] NOT NULL,
[Quantidade] [smallint] NOT NULL,
[Valor] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NotaFiscalProduto] ADD CONSTRAINT [PK_NotaFiscalProduto] PRIMARY KEY CLUSTERED ([IDNotaFiscalProduto]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NotaFiscalProduto] ADD CONSTRAINT [FK_NotaFiscalProduto_NotaFiscal] FOREIGN KEY ([IDNotaFiscal]) REFERENCES [dbo].[NotaFiscal] ([IDNotaFiscal])
GO
ALTER TABLE [dbo].[NotaFiscalProduto] ADD CONSTRAINT [FK_NotaFiscalProduto_Produtos] FOREIGN KEY ([IDProduto]) REFERENCES [dbo].[Produtos] ([IDProduto])
GO
