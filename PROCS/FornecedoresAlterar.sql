CREATE PROCEDURE FornecedoresAlterar
(
	@IDFornecedor INT
   ,@Nome VARCHAR(150)
   ,@NomeFantasia VARCHAR(150)
   ,@Cnpj VARCHAR(18)
   ,@RumoDeAtuacao VARCHAR(100)
   ,@Endereco VARCHAR(200)
   ,@Cidade VARCHAR(50)
   ,@Estado CHAR(2)
   ,@Telefone1 VARCHAR(14)
   ,@Telefone2 VARCHAR(14)
)
AS
BEGIN

    UPDATE dbo.Fornecedores SET 
        Nome          = @Nome
       ,NomeFantasia  = @NomeFantasia
       ,Cnpj		  = @Cnpj 
       ,RumoDeAtuacao = @RumoDeAtuacao 
       ,Endereco	  = @Endereco 
       ,Cidade		  = @Cidade 
       ,Estado		  = @Estado 
       ,Telefone1	  = @Telefone1 
       ,Telefone2	  = @Telefone2 
    WHERE IDFornecedor = @IDFornecedor


    SELECT
        f.IDFornecedor
       ,f.Nome
       ,f.NomeFantasia
       ,f.Cnpj
       ,f.RumoDeAtuacao
       ,f.Endereco
       ,f.Cidade
       ,f.Estado
       ,f.Telefone1
       ,f.Telefone2
       ,f.DataCadastro
    FROM dbo.Fornecedores f
    WHERE f.IDFornecedor = @IDFornecedor
END
