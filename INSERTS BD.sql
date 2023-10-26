INSERT INTO PESSOA (nome, cpf, dt_nasc)
VALUES
    ('João da Silva', '123.456.789-01', '1990-05-15'),
    ('Maria Souza', '987.654.321-02', '1985-08-20'),
    ('Carlos Santos', '456.789.123-03', '1995-02-10'),
    ('Ana Oliveira', '111.222.333-04', '1988-12-03'),
    ('Pedro Almeida', '444.555.666-05', '1992-07-25'),
    ('Mariana Costa', '777.888.999-06', '1980-04-18');

INSERT INTO MOTORISTA (categoria_cnh, validade_cnh, salario, FK_PESSOA_id)
VALUES
    ('B', '2024-04-15', 2500, 1),
    ('D', '2023-12-31', 2800, 2),
    ('C', '2025-06-20', 3000, 3),
    ('D', '2023-09-28', 2700, 4),
    ('E', '2024-10-02', 3200, 5),
    ('B', '2025-04-05', 2600, 6);

INSERT INTO TIPO_CONTATO (descricao)
VALUES
    ('Telefone'),
    ('Email'),
    ('WhatsApp'),
    ('Facebook'),
    ('Twitter'),
    ('Instagram');

INSERT INTO CONTATO (fk_TIPO_CONTATO_id, fk_PESSOA_id)
VALUES
    (1, 1),
    (2, 1),
    (1, 2),
    (3, 3),
    (1, 4),
    (2, 4);

INSERT INTO Rota (Origem, Destino)
VALUES
    ('São Paulo', 'Rio de Janeiro'),
    ('Belo Horizonte', 'Salvador'),
    ('Fortaleza', 'Recife'),
    ('Curitiba', 'Porto Alegre'),
    ('Brasília', 'Goiânia'),
    ('Natal', 'João Pessoa');

INSERT INTO PARADA (nome, cidade, bairro)
VALUES
    ('Parada 1', 'São Paulo', 'Centro'),
    ('Parada 2', 'Rio de Janeiro', 'Copacabana'),
    ('Parada 3', 'Belo Horizonte', 'Savassi'),
    ('Parada 4', 'Salvador', 'Barra'),
    ('Parada 5', 'Fortaleza', 'Praia de Iracema'),
    ('Parada 6', 'Recife', 'Boa Viagem');

INSERT INTO RotaParada (fk_PARADA_id, fk_Rota_id)
VALUES
    (1, 1),
    (2, 1),
    (1, 2),
    (2, 2),
    (1, 3),
    (2, 3);

INSERT INTO EQUIPAMENTO (nome)
VALUES
    ('Wi-Fi'),
    ('Ar Condicionado'),
    ('TV'),
    ('Luzes de Leitura'),
    ('Tomadas USB'),
    ('Poltrona reclinável');

INSERT INTO ONIBUS (tipo_leito, n_chassi)
VALUES
    ('Semi-Leito', 'ABC123DEF456GHI789'),
    ('Leito', 'XYZ456MNO789PQR123'),
    ('Executivo', 'JKL789XYZ123ABC456'),
    ('Convencional', 'DEF456GHI789JKL789'),
    ('Double-Decker', 'MNO789PQR123STU123'),
    ('Micro-Ônibus', 'VWX123YZA456BCD456');

INSERT INTO OnibusEquipamento (fk_ONIBUS_id, fk_EQUIPAMENTO_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 2),
    (2, 3),
    (3, 1),
    (3, 4),
    (4, 5),
    (4, 6),
    (5, 2),
    (5, 3),
    (6, 4),
    (6, 5);

INSERT INTO ASSENTO (estado, FK_ONIBUS_id)
VALUES
    (0, 1),
    (0, 2),
    (1, 1),
    (1, 2),
    (0, 3),
    (1, 3),
    (0, 4),
    (1, 4),
    (0, 5),
    (1, 5),
    (0, 6),
    (1, 6);

INSERT INTO MotoristaOnibus (fk_PESSOA_id, fk_ONIBUS_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6);

INSERT INTO VIAGEM (desembarque, distancia, tempo, FK_Rota_id, embarque)
VALUES
    ('Rio de Janeiro', 400.5, '06:30:00', 1, 'São Paulo'),
    ('Salvador', 1200.2, '12:15:00', 2, 'Belo Horizonte'),
    ('Recife', 600.8, '08:45:00', 3, 'Fortaleza'),
    ('Porto Alegre', 700.0, '09:30:00', 4, 'Curitiba'),
    ('Brasília', 150.6, '03:45:00', 5, 'Goiânia'),
    ('João Pessoa', 80.2, '02:15:00', 6, 'Natal');

INSERT INTO PASSAGEM (n_assento, nome_passageiro, origem, destino, valor, FK_PESSOA_id, FK_PARADA_id, FK_ASSENTO_id, data)
VALUES
    (1, 'Lucas Oliveira', 'São Paulo', 'Rio de Janeiro', 120, 1, 1, 1, '2023-11-10'),
    (2, 'Ana Pereira', 'Belo Horizonte', 'Salvador', 180, 2, 2, 2, '2023-12-05'),
    (3, 'Rafaela Mendes', 'Fortaleza', 'Recife', 90, 3, 3, 3, '2023-10-15'),
    (4, 'Pedro Nogueira', 'Curitiba', 'Porto Alegre', 150, 4, 4, 4, '2023-11-22'),
    (5, 'Carla Silva', 'Goiânia', 'Brasília', 60, 5, 5, 5, '2023-09-30'),
    (6, 'Marcelo Santos', 'Natal', 'João Pessoa', 40, 6, 6, 6, '2023-12-20');

INSERT INTO OnibusViagem (fk_ONIBUS_id, fk_VIAGEM_id, data, hrPartida)
VALUES
    (1, 1, '2023-11-10', '08:00:00'),
    (2, 2, '2023-12-05', '09:30:00'),
    (3, 3, '2023-10-15', '07:45:00'),
    (4, 4, '2023-11-22', '10:15:00'),
    (5, 5, '2023-09-30', '06:30:00'),
    (6, 6, '2023-12-20', '08:45:00');