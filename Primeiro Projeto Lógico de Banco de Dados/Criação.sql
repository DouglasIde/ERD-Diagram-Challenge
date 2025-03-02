-- Criando o banco de dados
CREATE database dym_commerce;

-- TABELAS --
-- Criando a tabela Produto
CREATE TABLE Produto (
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Categoria VARCHAR(45),
    Valor DECIMAL(10,2),
    Descricao VARCHAR(100)
);

-- Criando a Tabela Estoque
CREATE TABLE Estoque(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Endereco VARCHAR(50)
);

-- Criando a Tabela Estrega
CREATE TABLE Entrega(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Status VARCHAR(45),
    Cod_Rastreio VARCHAR(10),
    Data DATE
);

-- Criando a Tabela Pedido
CREATE TABLE Pedido(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Status VARCHAR(45),
    Frete FLOAT,
    Descricao VARCHAR(45)
);

-- Criando a Tabela Fornecedor
CREATE TABLE Fornecedor(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Razao_Soc VARCHAR(45),
    PFPJ VARCHAR(18)
);

-- Criando a Tabela Cliente
CREATE TABLE Cliente(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    email VARCHAR(45),
    telefone VARCHAR(20),
    endereco VARCHAR(45),
    estado_uf VARCHAR(2),
    cep VARCHAR(10),
    PFPJ VARCHAR(18)
);

-- Criando a Tabela Pagamento
CREATE TABLE Pagamento(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Cartão VARCHAR(45),
    Bandeira VARCHAR(45),
    Numero VARCHAR(16),
    Dta_Validade DATE,
    Cvv VARCHAR(4)
);

-- Criando a Tabela Terceito
CREATE TABLE Terceiro(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Razao_soc VARCHAR(45),
    Endereco VARCHAR(45),
    PFPJ VARCHAR(18)
);


-- INSERÇÃO DE DADOS --
-- Inserindo 10 itens fictítios
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

-- RELACIONAMENTO -- 
CREATE TABLE Produto_Estoque(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    ProdutoID INT,
    EstoqueID INT,
    Quantidade INT,
    FOREIGN KEY (ProdutoID) REFERENCES Produto(ID) ON DELETE CASCADE,
    FOREIGN KEY (EstoqueID) REFERENCES Estoque(ID) ON DELETE CASCADE
);


