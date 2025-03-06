-- RELACIONAMENTO -- 

-- RELACIONAMENTO PRODUTO E ESTOQUE (N:M)
CREATE TABLE Produto_Estoque(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    ProdutoID INT,
    EstoqueID INT,
    Quantidade INT,
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ID) ON DELETE CASCADE,
    FOREIGN KEY (EstoqueID) REFERENCES Estoque(ID) ON DELETE CASCADE
);

-- RELACIONAMENTO PRODUTO E TERCEIRO (N:M)
CREATE TABLE Produto_Terceiro(
	id_produto INT,
    id_terceiro INT,
    quantidade INT,
    PRIMARY KEY (id_produto, id_terceiro),
    FOREIGN KEY (id_produto) REFERENCES Produto(id),
    FOREIGN KEY (id_terceiro) REFERENCES Terceiro(id)
);

-- RELACIONAMENTO PRODUTO E FORNECEDOR (N:M)
CREATE TABLE Produto_Fornecedor (
	id_produto INT,
    id_fornecedor INT,
    PRIMARY KEY (id_produto, id_fornecedor),
    FOREIGN KEY (id_produto) REFERENCES Produto(ID),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(ID)
);

-- RELACIONAMENTO FORNECEDOR E PEDIDO
CREATE TABLE Fornecedor_Pedido(
	id_fornecedor INT,
    id_pedido INT,
    quantidade INT,
    PRIMARY KEY (id_fornecedor, id_pedido),
    FOREIGN KEY (id_fornecedor) REFERENCES Fornecedor(ID),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(ID)
);

-- RELACIONAMENTO PAGAMENTO E PEDIDO (N:M)
CREATE TABLE Pagamento_Pedido (
    id_pagamento INT,
    id_pedido INT,
    valor DECIMAL(10,2),
    PRIMARY KEY (id_pagamento, id_pedido),
    FOREIGN KEY (id_pagamento) REFERENCES Pagamento(ID),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(ID)
);

-- ADICIONANDO UMA FK PARA CRIAR O RELACIONAMENTO 1:1 DE PEDIDO E ENTREGA
ALTER TABLE Entrega
ADD COLUMN id_pedido INT UNIQUE,
ADD FOREIGN KEY (id_pedido) REFERENCES Pedido(ID);

-- ADICIONANDO UMA FK PARA CRIAR O RELACIONAMENTO 1*:1 DE PEDIDO E CLIENTE
ALTER TABLE Pedido
ADD COLUMN id_cliente int,
ADD FOREIGN KEY (id_cliente) REFERENCES Cliente(ID)

-- ADICIONANDO UMA FK PARA CRIAR O RELACIONAMENTO 1:1 DE CLIENTE E PAGAMENTO
