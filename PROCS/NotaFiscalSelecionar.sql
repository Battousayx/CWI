USE [NEWDESENV]
GO
/****** Object:  StoredProcedure [dbo].[NotaFiscalSelecionar]    Script Date: 06/12/2020 17:45:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[NotaFiscalSelecionar](

@Pesquisa VARCHAR(MAX)

)
AS
BEGIN

	SELECT nf.IDNotaFiscal
		  ,nf.IDCliente
		  ,c.Nome NomeCliente
		  ,f.IDFornecedor
		  ,f.Nome NomeFornecedor
		  ,nf.DataEmissao
		  ,nf.Desconto
		  ,nf.Juros
		  ,nf.Total
	FROM dbo.NotaFiscal nf
		INNER JOIN dbo.NotaFiscalProduto nfp ON nfp.IDNotaFiscal = nf.IDNotaFiscal
		INNER JOIN dbo.Clientes c ON c.IDCliente = nf.IDCliente
		INNER JOIN dbo.Fornecedores f ON f.IDFornecedor = nf.IDFornecedor
	WHERE '%'+c.Nome+'%'+f.nome+'%'+f.NomeFantasia+'%'+CONVERT(VARCHAR,nf.IDNotaFiscal)+'%' LIKE '%'+@Pesquisa+'%'
end