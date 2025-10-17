USE db_loja_M

INSERT INTO Cliente (Nome)
VALUES
('Ana'),
('Bruno'),
('Carla'),
('Diego');

SELECT * FROM Cliente

INSERT INTO Produto (nome, preco)
VALUES
('Teclado', 40.00),
('Mouse', 50.00),
('Monitor', 400.00),
('Impressora', 550.00),
('Headset', 200.00);

SELECT * FROM Produto

INSERT INTO Pedido (Data_Horario, ID_Cliente, ID_Produto)
VALUES
('2025/10/07 06:30:00', 1, 1), --ANA COMPROU UM TECLADO--
('2025/10/08 04:30:00', 2, 2), --BRUNO COMPROU UM MOUSE--
('2025/10/09 15:00:00', 3, 5), --CARLA COMPROU UM HEADSET--
('2025/10/10 00:30:00', 4, 3); --DIEGO COMPROU UM MONITOR--

SELECT * FROM Pedido

UPDATE Pedido
SET  = 3
WHERE ID_Cliente = 4;

DELETE FROM Pedido
where ID_Produto = 3;