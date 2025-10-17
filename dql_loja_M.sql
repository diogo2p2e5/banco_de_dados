USE db_loja_M

SELECT * FROM Pedido

--EXIBA OS REGISTROS DOS PEDIDOS POREM PRECISA TER O NOME DO CLIENTE O NOME DO PRODUTO E DATA E HORA DO PEDIDO
SELECT 
  FORMAT (Data_Horario, 'dd/MM/yyyy HH:mm:ss') 
   Data_Horario,
   C.Nome AS Nome_Cliente,
   PR.Nome AS Nome_Produto
FROM Pedido
INNER JOIN Cliente C ON Pedido.ID_Cliente  = C.ID_Cliente
INNER JOIN Produto PR ON Pedido.ID_Produto = PR.ID_Produto
WHERE MONTH(Data_horario) = '10';
--WHERE DAY(Data_horario) = 'dia';--
--por a data e hora dd/mm/aa hh:mm::--
--RESULTADO--
/*
07/10/2025 06:30:00	Ana		Teclado
08/10/2025 04:30:00	Bruno	Mouse
09/10/2025 15:00:00	Carla	Headset
*/


SELECT 
	C.Nome,
	PE.Data_horario
FROM Cliente C
LEFT JOIN Pedido PE ON C.ID_Cliente = PE.ID_Cliente
WHERE PE.ID_Cliente IS NULL
--RESULTADO--
/*
Diego	NULL
*/

SELECT 
	PE.Data_Horario,
	PR.Nome
FROM Pedido PE
RIGHT JOIN Produto PR ON PE.ID_Pedido = PR.ID_Produto
--RESULTADO--
/*
2025-10-07 06:30:00.000	Teclado
2025-10-08 04:30:00.000	Mouse
2025-10-09 15:00:00.000	Monitor
NULL	Impressora
NULL	Headset
*/


SELECT
	C.Nome AS Nome_Cliente,
	PR.Nome AS Nome_Produto
FROM Pedido
INNER JOIN Cliente C ON Pedido.ID_Cliente = C.ID_Cliente
INNER JOIN Produto PR ON Pedido.ID_Produto = PR.ID_Produto
WHERE Data_Horario BETWEEN '2025/08/07' AND '2025/08/08'


SELECT 
    PE.Data_horario,
	PR.Nome
FROM Pedido PE
INNER JOIN Produto PR ON PE.ID_Pedido = PR.ID_Produto
WHERE Data_Horario >= '2025/08/07' AND Data_Horario < '2025/08/09';



--MOSTRE TODOS OS CLIENTES, PRODUTOS E PEDIDOS MESMO QUE NÃO SE CORRESPONDAM--
SELECT 
	C.Nome AS 'Nome Cliente',
	PR.Nome AS 'Produto',
	PR.Preco,
	FORMAT (Data_Horario, 'dd/MM/yyyy HH:mm:ss') 
FROM Cliente C
FULL JOIN Pedido PE ON PE.ID_Cliente = C.ID_Cliente
FULL JOIN Produto PR ON PR.ID_Produto = PE.ID_Produto
--RESULTADO--
/*
Ana		Teclado		40.00		07/10/2025 06:30:00
Bruno	Mouse		50.00		08/10/2025 04:30:00
Carla	Headset		200.00		09/10/2025 15:00:00
Diego	NULL		NULL		NULL
NULL	Monitor		400.00		NULL
NULL	Impressora	550.00		NULL
*/