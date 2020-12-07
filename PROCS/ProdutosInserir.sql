CREATE PROCEDURE ProdutosInserir
(
    @CodigoProduto INT
   ,@Nome VARCHAR(50)
   ,@Descricao VARCHAR(150)
   ,@Valor DECIMAL(10, 2)
)
AS
BEGIN

    INSERT INTO dbo.Produtos
    (
        CodigoProduto
       ,Nome
       ,Descricao
       ,Valor
       ,DataCadastro
    )
    VALUES
    (@CodigoProduto, @Nome, @Descricao, @Valor, GETDATE())

    SELECT
        p.IDProduto
       ,p.CodigoProduto
       ,p.Nome
       ,p.Descricao
       ,p.Valor
       ,p.DataCadastro
    FROM dbo.Produtos p
    WHERE p.IDProduto = SCOPE_IDENTITY()

END
