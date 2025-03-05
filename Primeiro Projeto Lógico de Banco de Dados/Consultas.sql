-- Quantos pedidos foram feitos por cada cliente
SELECT cliente.nome,
COUNT(Pedido.ID) AS quantidade_pedidos
FROM cliente
JOIN pedido ON cliente.ID = Pedido.id_cliente
GROUP BY cliente.nome;

-- Algum vendedor também é fornecedor?
SELECT terceiro.Razao_soc AS vendedor_fornecedor
FROM terceiro
JOIN fornecedor ON terceiro.PFPJ = Fornecedor.PFPJ;

-- Relação de produtos fornecedores e estoques
SELECT produto.nome AS Produto, fornecedor.Razao_Soc AS Fornecedor, estoque.Endereco AS Estoque
FROM Produto
JOIN produto_fornecedor ON produto.ID = Produto_Fornecedor.id_produto
JOIN Fornecedor ON Produto_Fornecedor.id_fornecedor = fornecedor.ID
JOIN Estoque ON produto.id_estoque = estoque.ID;


-- Relação de nomes dos fornecedores e nomes dos produtos
SELECT fornecedor.Razao_Soc AS Fornecedor,
produto.nome AS Produto
FROM fornecedor
JOIN produto_fornecedor ON fornecedor.ID = produto_fornecedor.id_fornecedor
JOIN produto ON produto_fornecedor.id_produto = produto.ID