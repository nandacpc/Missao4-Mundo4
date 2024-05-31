
-- Inserção de dados de teste na tabela Drivers
INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato) 
VALUES (1, 'João Silva', '123456789', 'Rua A, 123', '91111-1111');
GO

-- Inserção de dados de teste na tabela Clients
INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato) 
VALUES (1, 'Maria Santos', 'Empresa X', 'Rua B, 456', '92222-2222');
GO

-- Inserção de dados de teste na tabela Orders
INSERT INTO Orders (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status) 
VALUES (1, 1, 1, 'Entrega de documentos', '2024-06-01', 'Pendente');
GO