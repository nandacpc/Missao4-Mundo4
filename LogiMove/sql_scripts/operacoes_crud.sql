
-- Atualização de dados na tabela Orders
UPDATE Orders SET Status='Concluído' WHERE OrderID=1;
GO

-- Verificação da atualização
SELECT * FROM Orders WHERE OrderID=1;
GO

-- Exclusão de dados na tabela Orders
DELETE FROM Orders WHERE OrderID=1;
GO

-- Verificar se a tabela Orders está vazia
SELECT COUNT(*) FROM Orders;
GO