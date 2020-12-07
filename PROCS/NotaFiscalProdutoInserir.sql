CREATE PROCEDURE NotaFiscalProdutoInserir

(

@IDNotaFiscal  int
,@IDProduto  int
,@Quantidade  smallint
,@Valor  int


)
AS

BEGIN


	INSERT INTO dbo.NotaFiscalProduto
	(
	    IDNotaFiscal
	   ,IDProduto
	   ,Quantidade
	   ,Valor
	)
	VALUES
	(   @IDNotaFiscal
	   ,@IDProduto
	   ,@Quantidade
	   ,@Valor
	)


	SELECT nfp.IDNotaFiscalProduto
          ,nfp.IDNotaFiscal
          ,nfp.IDProduto
          ,nfp.Quantidade
          ,nfp.Valor 
	FROM dbo.NotaFiscalProduto nfp WHERE nfp.IDNotaFiscalProduto = SCOPE_IDENTITY()



END
