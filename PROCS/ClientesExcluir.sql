CREATE PROCEDURE dbo.ClientesExcluir
(
    @IDCliente INT
)
AS
BEGIN

    DELETE
        c
    FROM dbo.Clientes c
    WHERE c.IDCliente = @IDCliente

END