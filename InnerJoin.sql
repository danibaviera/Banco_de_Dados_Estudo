--Criando as tabelas 

CREATE TABLE clients (
    client_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(11),
    nome_veiculo VARCHAR(100),
    tel VARCHAR(15)
);

CREATE TABLE vehicle (
    vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_veiculo VARCHAR(100),
    modelo VARCHAR(50),
    cor VARCHAR(30),
    placa VARCHAR(10),
    chassi VARCHAR(17)
);

--  Inserindo dados na tabela clients
INSERT INTO clients (nome, cpf, nome_veiculo, tel) VALUES 
('Dani Bavi', '12345678901', 'Civic', '11987654321'),
('Maria Oliveira', '23456789012', 'Corolla', '21987654321'),
('Carlos Souza', '34567890123', 'Onix', '31987654321'),
('Ana Pereira', '45678901234', 'HB20', '41987654321');

-- Inserindo dados na tabela vehicle
INSERT INTO vehicle (nome_veiculo, modelo, cor, placa, chassi) VALUES 
('Civic', 'Honda Civic', 'Prata', 'ABC1234', '9BWZZZ377VT004251'),
('Corolla', 'Toyota Corolla', 'Preto', 'DEF5678', '8AFZZZ333VT004252'),
('Onix', 'Chevrolet Onix', 'Branco', 'GHI9101', '7CVZZZ344VT004253'),
('HB20', 'Hyundai HB20', 'Vermelho', 'JKL2345', '6BWZZZ355VT004254');

--Juntando as tabelas 
--c. para clients e v para vehicle

SELECT 
    c.nome AS Nome_Cliente,
    c.cpf AS CPF,
    c.tel AS Telefone,
    v.nome_veiculo AS Veiculo,
    v.modelo AS Modelo,
    v.cor AS Cor,
    v.placa AS Placa,
    v.chassi AS Chassi
FROM 
    clients c
INNER JOIN 
    vehicle v ON c.nome_veiculo = v.nome_veiculo;

-- Fazendo o InnerJoin sem os alias

SELECT 
    clients.nome AS Nome_Cliente,
    clients.cpf AS CPF,
    clients.tel AS Telefone,
    vehicle.nome_veiculo AS Veiculo,
    vehicle.modelo AS Modelo,
    vehicle.cor AS Cor,
    vehicle.placa AS Placa,
    vehicle.chassi AS Chassi
FROM 
    clients
INNER JOIN 
    vehicle ON clients.nome_veiculo = vehicle.nome_veiculo;


