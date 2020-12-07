SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
GO
CREATE PROCEDURE NotaFiscalProdutoSelecionar
(@IDNotaFiscal INT, @IDNotaFiscalProduto INT)
AS
BEGIN

    SELECT
         nf.IDNotaFiscal
		,nfp.IDNotaFiscalProduto
        ,nfp.IDProduto
		,p.Nome
		,p.Descricao
		,p.Valor ValorProduto
        ,nfp.Quantidade QuantidadeProdutoNotaFiscal
        ,nfp.Valor ValorNotaFiscal
    FROM dbo.NotaFiscal nf
        INNER JOIN dbo.NotaFiscalProduto nfp ON nfp.IDNotaFiscal = nf.IDNotaFiscal
        INNER JOIN dbo.Produtos p ON p.IDProduto = nfp.IDProduto
    WHERE (nf.IDNotaFiscal = @IDNotaFiscal OR @IDNotaFiscal IS NULL) AND (nfp.IDNotaFiscalProduto = @IDNotaFiscalProduto OR @IDNotaFiscalProduto IS NULL)
END
GO

