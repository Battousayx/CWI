CREATE TABLE [dbo].[NotaFiscal]
(
[IDNotaFiscal] [int] NOT NULL IDENTITY(1, 1),
[IDCliente] [int] NOT NULL,
[IDFornecedor] [int] NOT NULL,
[DataEmissao] [datetime] NOT NULL,
[Desconto] [decimal] (10, 2) NULL,
[Juros] [decimal] (10, 2) NULL,
[Total] [decimal] (10, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NotaFiscal] ADD CONSTRAINT [PK_NotaFiscal] PRIMARY KEY CLUSTERED ([IDNotaFiscal]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NotaFiscal] ADD CONSTRAINT [FK_NotaFiscal_Clientes] FOREIGN KEY ([IDCliente]) REFERENCES [dbo].[Clientes] ([IDCliente])
GO
ALTER TABLE [dbo].[NotaFiscal] ADD CONSTRAINT [FK_NotaFiscal_Fornecedores] FOREIGN KEY ([IDFornecedor]) REFERENCES [dbo].[Fornecedores] ([IDFornecedor])
GO
