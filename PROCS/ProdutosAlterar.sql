CREATE PROCEDURE ProdutosAlterar
(
    @IDProduto INT
   ,@CodigoProduto INT
   ,@Nome VARCHAR(50)
   ,@Descricao VARCHAR(150)
   ,@Valor DECIMAL(10, 2)
)
AS
BEGIN

    UPDATE dbo.Produtos SET
        CodigoProduto = @CodigoProduto
       ,Nome		  = @Nome
       ,Descricao	  = @Descricao
       ,Valor		  = @Valor
    WHERE IDProduto = @IDProduto

    SELECT
        p.IDProduto
       ,p.CodigoProduto
       ,p.Nome
       ,p.Descricao
       ,p.Valor
       ,p.DataCadastro
    FROM dbo.Produtos p
    WHERE p.IDProduto = @IDProduto

END
