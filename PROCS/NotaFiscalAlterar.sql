CREATE PROCEDURE NotaFiscalAlterar
(
    @IDNotaFiscal INT
   ,@IDCliente INT
   ,@IDFornecedor INT
   ,@Desconto DECIMAL(10, 2)
   ,@Juros DECIMAL(10, 2)
   ,@Total DECIMAL(10, 2)
)
AS
BEGIN

    UPDATE dbo.NotaFiscal
    SET 
        IDCliente    = @IDCliente
       ,IDFornecedor = @IDFornecedor
       ,Desconto	 = @Desconto
       ,Juros		 = @Juros
       ,Total		 = @Total
    WHERE IDNotaFiscal = @IDNotaFiscal

    SELECT
        nf.IDNotaFiscal
       ,nf.IDCliente
       ,nf.IDFornecedor
       ,nf.DataEmissao
       ,nf.Desconto
       ,nf.Juros
       ,nf.Total
    FROM dbo.NotaFiscal nf
    WHERE nf.IDNotaFiscal = @IDNotaFiscal

END
