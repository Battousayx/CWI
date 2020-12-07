CREATE PROCEDURE ClientesSelecionar(

@Pesquisa VARCHAR(MAX)

)
AS
BEGIN

	SELECT c.IDCliente
          ,c.Nome
          ,c.DataNascimento
          ,c.RG
          ,c.RGEmissor
          ,c.CPF
          ,c.NomePai
          ,c.NomeMae
          ,c.Endereco
          ,c.Cidade
          ,c.Estado
          ,c.Telefone1
          ,c.Telefone2
          ,c.DataCadastro 
	FROM dbo.Clientes c
	WHERE '%'+c.Nome+'%'+c.CPF+'%'+RG+'%' LIKE '%'+@Pesquisa+'%'
end