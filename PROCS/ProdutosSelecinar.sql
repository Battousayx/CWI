CREATE PROCEDURE ProdutosSelecionar(

@Pesquisa VARCHAR(MAX)

)
AS
BEGIN

	SELECT p.IDProduto
          ,p.CodigoProduto
          ,p.Nome
          ,p.Descricao
          ,p.Valor
          ,p.DataCadastro	 FROM dbo.Produtos p
	WHERE '%'+p.Nome+'%'+p.Descricao+'%' LIKE '%'+@Pesquisa+'%'
end