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

ALTER TABLE Produto ADD COLUMN id_estoque INT;

ALTER TABLE Produto ADD COLUMN nome VARCHAR(45);

-- Criando a Tabela Estoque
CREATE TABLE Estoque(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Endereco VARCHAR(50)
);

ALTER TABLE Estoque ADD COLUMN id_produto INT;

ALTER TABLE Estoque ADD FOREIGN KEY (id_produto) REFERENCES Produto(ID);

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


