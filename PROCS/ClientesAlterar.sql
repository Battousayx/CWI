CREATE PROCEDURE dbo.ClientesAlterar
(
    @IDCliente INT
   ,@Nome VARCHAR(100)
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

    UPDATE
        c
    SET
        c.Nome = @Nome
       ,c.DataNascimento = @DataNascimento
       ,c.RG = @RG
       ,c.RGEmissor = @RGEmissor
       ,c.CPF = @CPF
       ,c.NomePai = @NomePai
       ,c.NomeMae = @NomeMae
       ,c.Endereco = @Endereco
       ,c.Cidade = @Cidade
       ,c.Estado = @Estado
       ,c.Telefone1 = @Telefone1
       ,c.Telefone2 = @Telefone2
    FROM dbo.Clientes c
    WHERE c.IDCliente = @IDCliente

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
    WHERE c.IDCliente = @IDCliente

END