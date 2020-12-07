CREATE PROCEDURE NotaFiscalInserir
(
    @IDCliente INT
   ,@IDFornecedor INT
   ,@Desconto DECIMAL(10, 2)
   ,@Juros DECIMAL(10, 2)
   ,@Total DECIMAL(10, 2)
)
AS
BEGIN

    INSERT INTO dbo.NotaFiscal
    (
        IDCliente
       ,IDFornecedor
       ,DataEmissao
       ,Desconto
       ,Juros
       ,Total
    )
    VALUES
    (@IDCliente, @IDFornecedor, GETDATE(), @Desconto, @Juros, @Total)

    SELECT
        nf.IDNotaFiscal
       ,nf.IDCliente
       ,nf.IDFornecedor
       ,nf.DataEmissao
       ,nf.Desconto
       ,nf.Juros
       ,nf.Total
    FROM dbo.NotaFiscal nf
    WHERE nf.IDNotaFiscal = SCOPE_IDENTITY()

END
