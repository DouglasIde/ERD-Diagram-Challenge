-- INSERÇÃO DE DADOS --
-- Inserindo 10 itens fictítios

-- TABELA PRODUTO
INSERT INTO Produto (Categoria, Valor, Descricao) VALUES
('Eletrônicos', 1499.99, 'Smartphone com tela AMOLED de 6.5 polegadas'),
('Eletrodomésticos', 499.90, 'Liquidificador com 10 velocidades'),
('Móveis', 799.00, 'Mesa de jantar de madeira para 6 pessoas'),
('Vestuário', 89.90, 'Camiseta de algodão unissex'),
('Esporte e Lazer', 299.90, 'Bola de futebol oficial em couro'),
('Beleza', 59.90, 'Kit de maquiagem com 12 itens'),
('Informática', 2499.99, 'Notebook com 16GB de RAM e SSD de 512GB'),
('Automotivo', 399.90, 'Rádio automotivo com Bluetooth e USB'),
('Brinquedos', 99.90, 'Quebra-cabeça de 1000 peças'),
('Livros', 49.90, 'Romance clássico com capa dura');

UPDATE Produto SET nome = CASE ID
    WHEN 1 THEN 'Caderno'
    WHEN 2 THEN 'Livro'
    WHEN 3 THEN 'Caneta'
    WHEN 4 THEN 'Calculadora'
    WHEN 5 THEN 'Estojo'
    WHEN 6 THEN 'Mochila'
    WHEN 7 THEN 'Lápis'
    WHEN 8 THEN 'Borracha'
    WHEN 9 THEN 'Régua'
    WHEN 10 THEN 'Agenda'
END
WHERE id IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);


-- TABELA ESTOQUE
INSERT INTO Estoque (Endereco) VALUES
('Rua das Flores, 123'),
('Avenida Paulista, 456'),
('Rua do Sol, 789'),
('Travessa das Palmeiras, 101'),
('Alameda das Orquídeas, 202'),
('Praça da Liberdade, 303'),
('Rua do Vento, 404'),
('Avenida das Estrelas, 505'),
('Travessa do Horizonte, 606'),
('Estrada dos Pinheiros, 707');


-- TABELA TERCEIRO
INSERT INTO Terceiro (Razao_soc, Endereco, PFPJ) VALUES
('Empresa Alfa Ltda.', 'Rua das Oliveiras, 123', '12.345.678/0001-90'),
('Beta Comércio S/A', 'Avenida Central, 456', '98.765.432/0001-21'),
('Gama Consultoria ME', 'Travessa do Comércio, 789', '23.456.789/0001-56'),
('Delta Tech EPP', 'Alameda das Palmeiras, 101', '34.567.890/0001-34'),
('Épsilon Serviços', 'Rua do Sol, 202', '45.678.901/0001-12'),
('Zeta Soluções S/A', 'Praça Verde, 303', '56.789.012/0001-78'),
('Sigma Logística ME', 'Estrada dos Anjos, 404', '67.890.123/0001-45'),
('Omega Alimentos Ltda.', 'Avenida da Paz, 505', '78.901.234/0001-89'),
('Kappa Transportes', 'Rua Azul, 606', '89.012.345/0001-67'),
('Lambda Construções', 'Travessa dos Pinhais, 707', '90.123.456/0001-34');

-- TABELA PAGAMENTO
INSERT INTO Pagamento (Cartão, Bandeira, Numero, Dta_Validade, Cvv) VALUES
('Visa Gold', 'Visa', '4111111111111111', '2025-12-01', '123'),
('Mastercard Black', 'Mastercard', '5555555555554444', '2026-01-01', '234'),
('Elo Nanquim', 'Elo', '6363636363636363', '2024-11-01', '345'),
('Amex Platinum', 'Amex', '378282246310005', '2026-05-01', '456'),
('HiperCard Gold', 'HiperCard', '6062828888661234', '2027-07-01', '567'),
('Visa Infinite', 'Visa', '4012888888881881', '2025-09-01', '678'),
('Nubank Ultravioleta', 'Mastercard', '5200828282828210', '2028-10-01', '789'),
('Credicard Zero', 'Mastercard', '5424000000000015', '2024-02-01', '890'),
('Santander Free', 'Visa', '4532272727271234', '2026-04-01', '901'),
('Bradesco Elo Mais', 'Elo', '6362252525252525', '2027-03-01', '012');

-- TABELA CLIENTE
INSERT INTO Cliente (nome, email, telefone, endereco, estado_uf, cep, PFPJ) VALUES
('João Silva', 'joao.silva@email.com', '(11) 91234-5678', 'Rua das Acácias, 123', 'SP', '01234-567', '123.456.789-00'),
('Maria Oliveira', 'maria.oliveira@email.com', '(21) 99876-5432', 'Avenida Atlântica, 456', 'RJ', '12345-678', '234.567.890-11'),
('Carlos Souza', 'carlos.souza@email.com', '(31) 98877-6655', 'Rua das Palmeiras, 789', 'MG', '23456-789', '345.678.901-22'),
('Ana Lima', 'ana.lima@email.com', '(41) 98765-4321', 'Travessa das Rosas, 101', 'PR', '34567-890', '456.789.012-33'),
('Pedro Almeida', 'pedro.almeida@email.com', '(51) 92345-6789', 'Avenida das Flores, 202', 'RS', '45678-901', '567.890.123-44'),
('Júlia Ferreira', 'julia.ferreira@email.com', '(61) 99876-1122', 'Praça dos Girassóis, 303', 'DF', '56789-012', '678.901.234-55'),
('Bruno Costa', 'bruno.costa@email.com', '(71) 98777-3333', 'Estrada Velha, 404', 'BA', '67890-123', '789.012.345-66'),
('Sofia Pereira', 'sofia.pereira@email.com', '(81) 97654-4444', 'Rua do Sol, 505', 'PE', '78901-234', '890.123.456-77'),
('Felipe Mendes', 'felipe.mendes@email.com', '(91) 91234-5555', 'Avenida Beira-Mar, 606', 'PA', '89012-345', '901.234.567-88'),
('Letícia Santos', 'leticia.santos@email.com', '(51) 92345-6666', 'Travessa das Oliveiras, 707', 'RS', '90123-456', '012.345.678-99');


-- TABELA ENTREGA
INSERT INTO Entrega (Status, Cod_Rastreio, Data) VALUES
('Entregue', 'AB12345678', '2025-03-01'),
('Em trânsito', 'CD23456789', '2025-02-28'),
('Aguardando retirada', 'EF34567890', '2025-03-02'),
('Não entregue', 'GH45678901', '2025-02-27'),
('Entregue', 'IJ56789012', '2025-03-01'),
('Em transporte', 'KL67890123', '2025-02-28'),
('Retorno ao remetente', 'MN78901234', '2025-03-03'),
('A caminho do destinatário', 'OP89012345', '2025-03-01'),
('Pendência no envio', 'QR90123456', '2025-02-27'),
('Entregue', 'ST01234567', '2025-03-02');


-- TABELA FORNECEDOR
INSERT INTO Fornecedor (Razao_Soc, PFPJ) VALUES
('Fornecedora Alfa Ltda.', '12.345.678/0001-90'),
('Beta Indústria S/A', '98.765.432/0001-21'),
('Gama Comércio ME', '23.456.789/0001-56'),
('Delta Transportes EPP', '34.567.890/0001-34'),
('Épsilon Logística', '45.678.901/0001-12'),
('Zeta Importação S/A', '56.789.012/0001-78'),
('Sigma Exportações ME', '67.890.123/0001-45'),
('Omega Alimentos Ltda.', '78.901.234/0001-89'),
('Kappa Construções S/A', '89.012.345/0001-67'),
('Lambda Eletrônicos Ltda.', '90.123.456/0001-34');

-- TABELA PEDIDO
INSERT INTO Pedido (Status, Frete, Descricao) VALUES
('Concluído', 25.50, 'Pedido de materiais escolares'),
('Pendente', 15.75, 'Encomenda de livros'),
('Cancelado', 0.00, 'Pedido de eletrônicos'),
('Em andamento', 30.00, 'Compra de roupas'),
('Enviado', 18.25, 'Pedido de utensílios domésticos'),
('Aguardando pagamento', 20.00, 'Encomenda de cosméticos'),
('Processando', 22.50, 'Pedido de acessórios esportivos'),
('Retornado', 10.00, 'Compra de calçados'),
('Entregue', 19.99, 'Pedido de brinquedos'),
('Aguardando aprovação', 12.50, 'Encomenda de ferramentas');

-- TABELA RELACIONAMENTO PRODUTO PARA TERCEIRO
INSERT INTO Produto_Terceiro (id_produto, id_terceiro, quantidade) VALUES
(1, 1, 50), -- Produto 1 fornecido pelo Terceiro 1, com 50 unidades
(1, 2, 30), -- Produto 1 fornecido pelo Terceiro 2, com 30 unidades
(2, 3, 100), -- Produto 2 fornecido pelo Terceiro 3, com 100 unidades
(3, 4, 200), -- Produto 3 fornecido pelo Terceiro 4, com 200 unidades
(4, 5, 10), -- Produto 4 fornecido pelo Terceiro 5, com 10 unidades
(5, 6, 75), -- Produto 5 fornecido pelo Terceiro 6, com 75 unidades
(6, 7, 60), -- Produto 6 fornecido pelo Terceiro 7, com 60 unidades
(7, 8, 90), -- Produto 7 fornecido pelo Terceiro 8, com 90 unidades
(8, 9, 45), -- Produto 8 fornecido pelo Terceiro 9, com 45 unidades
(9, 10, 120); -- Produto 9 fornecido pelo Terceiro 10, com 120 unidades

INSERT INTO Pedido (Status, Frete, Descricao, id_cliente) VALUES
('Concluído', 25.50, 'Pedido de materiais escolares', 1), 
('Pendente', 15.75, 'Encomenda de livros', 2), 
('Cancelado', 0.00, 'Pedido de eletrônicos', 3), 
('Em andamento', 30.00, 'Compra de roupas', 4), 
('Enviado', 18.25, 'Pedido de utensílios domésticos', 5), 
('Aguardando pagamento', 20.00, 'Encomenda de cosméticos', 1), 
('Processando', 22.50, 'Pedido de acessórios esportivos', 2),
('Retornado', 10.00, 'Compra de calçados', 3),
('Entregue', 19.99, 'Pedido de brinquedos', 4),
('Aguardando aprovação', 12.50, 'Encomenda de ferramentas', 5); 

INSERT INTO Entrega (Status, Cod_Rastreio, Data, id_pedido) VALUES
('Entregue', 'AB12345678', '2025-03-01', 1),
('Em trânsito', 'CD23456789', '2025-02-28', 2),
('Aguardando retirada', 'EF34567890', '2025-03-02', 3), 
('Não entregue', 'GH45678901', '2025-02-27', 4), 
('Entregue', 'IJ56789012', '2025-03-01', 5); 

UPDATE Estoque SET id_produto = 1 WHERE id = 1; 
UPDATE Estoque SET id_produto = 2 WHERE id = 2; 
UPDATE Estoque SET id_produto = 3 WHERE id = 3; 
UPDATE Estoque SET id_produto = 4 WHERE id = 4;
UPDATE Estoque SET id_produto = 5 WHERE id = 5; 
UPDATE Estoque SET id_produto = 6 WHERE id = 6;
UPDATE Estoque SET id_produto = 7 WHERE id = 7; 
UPDATE Estoque SET id_produto = 8 WHERE id = 8; 
UPDATE Estoque SET id_produto = 9 WHERE id = 9; 
UPDATE Estoque SET id_produto = 10 WHERE id = 10; 





