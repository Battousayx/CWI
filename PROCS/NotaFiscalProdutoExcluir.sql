CREATE PROCEDURE NotaFiscalProdutoExcluir

(
 @IDNotaFiscalProduto INT

)
AS

BEGIN


	DELETE dbo.NotaFiscalProduto
	WHERE IDNotaFiscalProduto = @IDNotaFiscalProduto

END
