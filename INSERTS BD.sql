INSERT INTO PESSOA (nome_completo, cpf, dt_nasc) VALUES
('João da Silva', '123.456.789-01', '1990-05-15'),
('Maria Souza', '987.654.321-02', '1985-08-20'),
('Carlos Santos', '456.789.123-03', '1995-02-10'),
('Ana Oliveira', '111.222.333-04', '1988-12-03'),
('Pedro Almeida', '444.555.666-05', '1992-07-25');

INSERT INTO CONDUTOR (categoria_cnh, validade_cnh, salario, FK_PESSOA_id) VALUES
('B', '2025-01-01', 3000.00, 1),
('C', '2024-06-01', 3500.00, 2),
('D', '2023-12-01', 4000.00, 3),
('A', '2022-05-01', 2800.00, 4),
('E', '2023-08-01', 4200.00, 5);

INSERT INTO TIPO_CONTATO (descricao) VALUES
('Telefone'),
('E-mail'),
('Instagram'),
('Twitter'),
('Facebook');

INSERT INTO CONTATO (fk_TIPO_CONTATO_id, fk_PESSOA_id, descricao) VALUES
(1, 1, '1234-5678'),
(2, 1, 'joao@email.com'),
(3, 1, '@joao_instagram'),
(1, 2, '9876-5432'),
(2, 2, 'maria@email.com'),
(3, 2, '@maria_instagram'),
(1, 3, '2345-6789'),
(2, 3, 'carlos@email.com'),
(3, 3, '@carlos_instagram'),
(1, 4, '3456-7890'),
(2, 4, 'ana@email.com'),
(3, 4, '@ana_instagram'),
(1, 5, '4567-8901'),
(2, 5, 'pedro@email.com'),
(3, 5, '@pedro_instagram');

INSERT INTO PARADA (nome, cidade, bairro) VALUES
('Rodoviária de São Paulo', 'São Paulo', 'Centro'),
('Terminal de Campinas', 'Campinas', 'Bairro das Laranjeiras'),
('Ponto de Belo Horizonte', 'Belo Horizonte', 'Bairro de Fatima'),
('Estação de Curitiba', 'Curitiba', 'Centro'),
('Parada de Florianópolis', 'Florianópolis', 'Consolação');

INSERT INTO ONIBUS (tipo_leito, n_chassi) VALUES
('Executivo', 'ABC12345678901234'),
('Leito', 'DEF12345678901234'),
('Semi-leito', 'GHI12345678901234'),
('Executivo', 'JKL12345678901234'),
('Leito', 'MNO12345678901234');

INSERT INTO VIAGEM (distancia, tempo, embarque, desembarque, hrPartida, dataPartida, fk_ONIBUS_id) VALUES
(300.5, '08:00:00', 'São Paulo', 'Campinas', '08:00:00', '2023-01-15', 1),
(200.2, '10:30:00', 'Campinas', 'Belo Horizonte', '10:30:00', '2023-02-20', 2),
(400.8, '14:15:00', 'Belo Horizonte', 'Curitiba', '14:15:00', '2023-03-25', 3),
(150.3, '09:45:00', 'Curitiba', 'Florianópolis', '09:45:00', '2023-04-10', 4),
(250.6, '12:20:00', 'Florianópolis', 'São Paulo', '12:20:00', '2023-05-05', 5);

INSERT INTO EQUIPAMENTO (nome) VALUES
('Wi-Fi'),
('TV'),
('Ar Condicionado'),
('Banheiro Químico'),
('Carregador USB');

INSERT INTO OnibusEquipamento (fk_ONIBUS_id, fk_EQUIPAMENTO_id) VALUES
(1, 1),
(1, 3),
(2, 2),
(3, 3),
(3, 4);


INSERT INTO ASSENTO (ocupado, FK_ONIBUS_id) VALUES
(true, 1),
(true, 2),
(false, 3),
(false, 4),
(true, 5);

INSERT INTO PASSAGEM (n_assento, nome_passageiro, valor, FK_PESSOA_id, FK_PARADA_id, FK_ASSENTO_id, data) VALUES
(10, 'Passageiro 1', 50.00, 1, 1, 1, '2023-01-10'),
(5, 'Passageiro 2', 60.00, 2, 2, 2, '2023-02-15'),
(20, 'Passageiro 3', 70.00, 3, 3, 3, '2023-03-20'),
(15, 'Passageiro 4', 80.00, 4, 4, 4, '2023-04-05'),
(8, 'Passageiro 5', 90.00, 5, 5, 5, '2023-05-01');


INSERT INTO MotoristaOnibus (fk_PESSOA_id, fk_ONIBUS_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO ViagemParada (FK_VIAGEM_id, FK_PARADA_id) VALUES
(6, 1),
(6, 2),
(7, 3),
(8, 3),
(8, 4);
