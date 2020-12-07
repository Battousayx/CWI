
CREATE PROCEDURE FornecedoresSelecionar(

@Pesquisa VARCHAR(MAX)

)
AS
BEGIN

	SELECT f.IDFornecedor
          ,f.Nome
          ,f.NomeFantasia
          ,f.Cnpj
          ,f.RumoDeAtuacao
          ,f.Endereco
          ,f.Cidade
          ,f.Estado
          ,f.Telefone1
          ,f.Telefone2
          ,f.DataCadastro FROM dbo.Fornecedores f
	WHERE '%'+f.Nome+'%'+f.NomeFantasia+'%'+f.Cnpj+'%' LIKE '%'+@Pesquisa+'%'
end
GO

