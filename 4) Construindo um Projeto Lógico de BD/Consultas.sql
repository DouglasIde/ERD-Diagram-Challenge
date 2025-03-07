-- Recuperação simples com SELECT Statement
SELECT * FROM Cliente;

-- Filtros com WHERE Statement
SELECT * FROM Veiculo WHERE ano = 2020;

-- Crie expressões para gerar atributos derivado
SELECT nome AS funcionario, salario, (salario * 12) AS salario_anual
FROM Funcionario;

-- Defina ordenações dos dados com ORDER BY
SELECT * FROM Cliente ORDER BY nome ASC;

-- Condições de filtros aos grupos – HAVING Statement
SELECT Cliente.nome, COUNT(Veiculo.id_veiculo) AS qtd_veiculos
FROM Cliente
LEFT JOIN Veiculo ON Cliente.id_cliente = Veiculo.id_cliente
GROUP BY Cliente.nome
HAVING COUNT(Veiculo.id_veiculo) > 1;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
SELECT Pagamento.data_pagamento, Pagamento.valor, Pagamento.metodo_pagamento, Cliente.nome AS cliente, Servico.descricao AS servico
FROM Pagamento
JOIN Cliente ON Pagamento.id_cliente = Cliente.id_cliente
JOIN Servico ON Pagamento.id_servico = Servico.id_servico;