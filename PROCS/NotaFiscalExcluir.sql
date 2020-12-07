CREATE PROCEDURE NotaFiscalExcluir
(
    @IDNotaFiscal INT
   
)
AS
BEGIN

    DELETE nfp FROM dbo.NotaFiscalProduto nfp WHERE nfp.IDNotaFiscal = @IDNotaFiscal
	DELETE nf FROM dbo.NotaFiscal nf WHERE nf.IDNotaFiscal = @IDNotaFiscal
END
