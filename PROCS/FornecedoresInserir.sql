CREATE PROCEDURE FornecedoresInserir
(
    @Nome VARCHAR(150)
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

    INSERT INTO dbo.Fornecedores
    (
        Nome
       ,NomeFantasia
       ,Cnpj
       ,RumoDeAtuacao
       ,Endereco
       ,Cidade
       ,Estado
       ,Telefone1
       ,Telefone2
       ,DataCadastro
    )
    VALUES
    (@Nome, @NomeFantasia, @Cnpj, @RumoDeAtuacao, @Endereco, @Cidade, @Estado, @Telefone1, @Telefone2, GETDATE() -- DataCadastro - datetime
        )


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
    WHERE f.IDFornecedor = SCOPE_IDENTITY()





END
