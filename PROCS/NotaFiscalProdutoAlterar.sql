CREATE PROCEDURE NotaFiscalProdutoAlterar

(
 @IDNotaFiscalProduto INT
,@IDProduto  int
,@Quantidade  smallint
,@Valor  int


)
AS

BEGIN


	UPDATE dbo.NotaFiscalProduto
	SET
	    IDProduto	 = @IDProduto
	   ,Quantidade	 = @Quantidade
	   ,Valor		 = @Valor
	WHERE IDNotaFiscalProduto = @IDNotaFiscalProduto


	SELECT nfp.IDNotaFiscalProduto
          ,nfp.IDNotaFiscal
          ,nfp.IDProduto
          ,nfp.Quantidade
          ,nfp.Valor 
	FROM dbo.NotaFiscalProduto nfp WHERE nfp.IDNotaFiscalProduto = @IDNotaFiscalProduto



END
