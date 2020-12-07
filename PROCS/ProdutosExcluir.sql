CREATE PROCEDURE ProdutosExcluir
(
    @IDProduto INT
)
AS
BEGIN

    DELETE dbo.Produtos 
    WHERE IDProduto = @IDProduto

END
