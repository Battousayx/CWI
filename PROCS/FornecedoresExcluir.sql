CREATE PROCEDURE FornecedoresExcluir
(
	@IDFornecedor INT
)
AS
BEGIN
    DELETE FROM dbo.Fornecedores 
    WHERE IDFornecedor = @IDFornecedor
END
