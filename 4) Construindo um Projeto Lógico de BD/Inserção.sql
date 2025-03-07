-- CLIENTE
INSERT INTO Cliente (nome, endereco, telefone, email) VALUES
('Ana Silva', 'Rua das Flores, 123', '11999999999', 'ana.silva@example.com'),
('Bruno Almeida', 'Avenida Paulista, 456', '11988888888', 'bruno.almeida@example.com'),
('Carla Souza', 'Rua do Sol, 789', '11977777777', 'carla.souza@example.com'),
('Daniel Costa', 'Travessa das Palmeiras, 101', '11966666666', 'daniel.costa@example.com'),
('Eduarda Lima', 'Alameda das Orquídeas, 202', '11955555555', 'eduarda.lima@example.com'),
('Fernando Gomes', 'Praça da Liberdade, 303', '11944444444', 'fernando.gomes@example.com'),
('Gabriela Santos', 'Rua do Vento, 404', '11933333333', 'gabriela.santos@example.com'),
('Heitor Ribeiro', 'Avenida das Estrelas, 505', '11922222222', 'heitor.ribeiro@example.com'),
('Isabela Fernandes', 'Travessa do Horizonte, 606', '11911111111', 'isabela.fernandes@example.com'),
('João Martins', 'Estrada dos Pinheiros, 707', '11900000000', 'joao.martins@example.com');

-- VEICULO
INSERT INTO Veiculo (placa, marca, modelo, ano, id_cliente) VALUES
('ABC-1234', 'Toyota', 'Corolla', 2020, 1),
('DEF-5678', 'Honda', 'Civic', 2019, 2),
('GHI-9101', 'Ford', 'Focus', 2018, 3),
('JKL-1121', 'Chevrolet', 'Cruze', 2021, 4),
('MNO-3141', 'Volkswagen', 'Golf', 2017, 5),
('PQR-5161', 'Fiat', 'Argo', 2022, 6),
('STU-7181', 'Renault', 'Sandero', 2016, 7),
('VWX-9202', 'Hyundai', 'HB20', 2015, 8),
('YZA-1223', 'Kia', 'Cerato', 2014, 9),
('BCD-3243', 'Nissan', 'Sentra', 2013, 10);

-- SERVIÇO
INSERT INTO Servico (descricao, preco, id_cliente) VALUES
('Troca de óleo', 120.00, 1),
('Alinhamento e balanceamento', 200.00, 2),
('Revisão completa', 800.00, 3),
('Troca de pastilha de freio', 150.00, 4),
('Limpeza de bicos injetores', 250.00, 5),
('Troca de correia dentada', 300.00, 6),
('Troca de filtro de ar', 100.00, 7),
('Serviço de pintura', 1000.00, 8),
('Troca de bateria', 450.00, 9),
('Reparo no sistema elétrico', 600.00, 10);

-- FUNCIONARIO
INSERT INTO Funcionario (nome, cargo, salario) VALUES
('Carlos Lima', 'Mecânico', 2500.00),
('Denise Castro', 'Recepcionista', 1800.00),
('Eduardo Pereira', 'Mecânico', 2500.00),
('Fernanda Souza', 'Gerente', 3500.00),
('Gustavo Carvalho', 'Mecânico', 2500.00),
('Helena Almeida', 'Assistente Administrativa', 2000.00),
('Igor Martins', 'Mecânico', 2500.00),
('Juliana Lopes', 'Vendedora', 2200.00),
('Leandro Silva', 'Mecânico', 2500.00),
('Mariana Santos', 'Supervisora', 3000.00);

-- PAGAMENTO
INSERT INTO Pagamento (data_pagamento, valor, metodo_pagamento, numero_cartao, nome_titular, validade_cartao, cvv, id_cliente, id_servico) VALUES
('2025-01-11', 120.00, 'Cartão de Crédito', '1111222233334444', 'Ana Silva', '12/25', '123', 1, 1),
('2025-01-13', 200.00, 'Cartão de Débito', '5555666677778888', 'Bruno Almeida', '11/25', '456', 2, 2),
('2025-01-15', 800.00, 'Cartão de Crédito', '9999000011112222', 'Carla Souza', '10/25', '789', 3, 3),
('2025-01-17', 150.00, 'Cartão de Débito', '3333444455556666', 'Daniel Costa', '09/25', '321', 4, 4),
('2025-01-19', 250.00, 'Cartão de Crédito', '7777888899990000', 'Eduarda Lima', '08/25', '654', 5, 5),
('2025-01-21', 300.00, 'Cartão de Débito', '2222333344445555', 'Fernando Gomes', '07/25', '987', 6, 6),
('2025-01-23', 100.00, 'Cartão de Crédito', '6666777788889999', 'Gabriela Santos', '06/25', '159', 7, 7),
('2025-01-25', 1000.00, 'Cartão de Débito', '4444555566667777', 'Heitor Ribeiro', '05/25', '753', 8, 8),
('2025-01-27', 450.00, 'Cartão de Crédito', '8888999900001111', 'Isabela Fernandes', '04/25', '852', 9, 9),
('2025-01-29', 600.00, 'Cartão de Débito', '0000111122223333', 'João Martins', '03/25', '951', 10, 10);
