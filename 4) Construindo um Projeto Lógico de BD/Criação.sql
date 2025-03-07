CREATE DATABASE dym_oficina;

-- CLIENTE
CREATE TABLE Cliente(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    endereco VARCHAR(150),
    telefone VARCHAR(15),
    email VARCHAR(100)
);

-- VEÍCULO
CREATE TABLE Veiculo (
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(10),
    marca VARCHAR(50),
    modelo VARCHAR(50),
    ano YEAR,
    id_cliente INT UNIQUE,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- PAGAMENTO
CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    data_pagamento DATE,
    valor DECIMAL(10, 2),
    metodo_pagamento VARCHAR(50),
    numero_cartao VARCHAR(20),
    nome_titular VARCHAR(100),
    validade_cartao VARCHAR(5),
    cvv VARCHAR(4),
    id_cliente INT UNIQUE,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    id_servico INT,
    FOREIGN KEY (id_servico) REFERENCES Servico(id_servico)
);

-- SERVIÇO
CREATE TABLE Servico (
    id_servico INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200),
    preco DECIMAL(10, 2),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

-- FUNCIONÁRIO
CREATE TABLE Funcionario (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10, 2)
);
