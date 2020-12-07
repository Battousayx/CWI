CREATE PROCEDURE dbo.ClientesInserir
(
    @Nome VARCHAR(100)
   ,@DataNascimento DATE
   ,@RG VARCHAR(15)
   ,@RGEmissor VARCHAR(10)
   ,@CPF VARCHAR(14)
   ,@NomePai VARCHAR(100)
   ,@NomeMae VARCHAR(100)
   ,@Endereco VARCHAR(200)
   ,@Cidade VARCHAR(50)
   ,@Estado CHAR(2)
   ,@Telefone1 VARCHAR(14)
   ,@Telefone2 VARCHAR(14)
)
AS
BEGIN

    INSERT INTO dbo.Clientes
    (
        Nome
       ,DataNascimento
       ,RG
       ,RGEmissor
       ,CPF
       ,NomePai
       ,NomeMae
       ,Endereco
       ,Cidade
       ,Estado
       ,Telefone1
       ,Telefone2
       ,DataCadastro
    )
    VALUES
    (@Nome, @DataNascimento, @RG, @RGEmissor, @CPF, @NomePai, @NomeMae, @Endereco, @Cidade, @Estado, @Telefone1, @Telefone2, GETDATE())

    SELECT
        c.IDCliente
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
	WHERE c.IDCliente = SCOPE_IDENTITY()
END