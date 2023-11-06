# TRABALHO 01:  Sistema Rodoviário
Trabalho desenvolvido durante a disciplina de Banco de Dados

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Erick Gama Loyola:gamaerick027@gmail.com<br>
Rodolfo Luiz de Oliveira:rodolfoliveira99@gmail.com<br>
Lara Aguilar:lara.aguilaramorim@gmail.com<br>
João Marcos Pimentel:trabalhos.jmr25@gmail.com<br>
...<br>


### 2.MINI-MUNDO<br>

A empresa de viagens intermunicipal tem vários ônibus que fazem rotas diferentes. Os ônibus devem conter  número do chassi, quantidade de assentos, tamanho (micro-ônibus, ônibus), equipamentos disponíveis (ar condicionado, internet, banheiro) e tipos de leito (executivo, semi leito, leito cama e convencional).

Cada viagem de um ônibus tem a origem e o destino, o horário de embarque, a distância da viagem (em km), e o tempo (em horas).

Cada viagem tem várias paradas contendo nome, cidade e bairro, onde podem embarcar ou desembarcar passageiros.

A passagem deve conter o número do assento, o nome do passageiro, a origem e o destino identificando a parada, se for o caso, ou o destino final. A passagem só pode ser relacionada a um assento e o assento daquela viagem, só pode ser relacionado àquela passagem.

Cada assento deve conter o código, o ônibus ao qual ele pertence, e o estado (ocupado, desocupado).

A empresa precisa acompanhar a venda de passagens e saber os lugares que estarão vagos em cada parada de um determinado ônibus da sua frota.

A venda das passagens deve ser realizada através da plataforma de terceiros, principalmente a plataforma buser, que será integrada ao sistema da empresa de viagens. 





Em relação aos requisitos do sistemas, temos que: o sistema deve controlar os ônibus, rotas, viagens, paradas, passagens, vendas e acessos de cada usuário; <br>
Sobre as Regras de Negócio deve-se destacar: o sistema deve limitar o acesso do vendedor à somente vendas, diretor financeiro apenas ao histórico de vendas/relatórios financeiros, deve relacionar uma passagem a um único assento e ainda deve permitir que o destino de uma passagem seja uma parada na rota do ônibus.


### 3.PERGUNTAS A SEREM RESPONDIDAS<br>

#### 3.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informações? 
    b) Crie uma lista com os 5 principais relatórios que poderão ser obtidos por meio do sistema proposto!

> O sistema proposto deve ser capaz de fornecer dados financeiros, sobre rotas e viagens, embarque e desembarque nas paradas.

- Relatório que mostre as paradas com maior embarque/desembarque. Deve ser filtrado por período de tempo, contendo a descrição da parada, a quantidade de onibus e o horário com maior índice.
- Relatório das viagens com maior procura. Deve-se selecionar a quantidade de viagens que serão mostradas, ordenando decrescentemente.
- Relatório com o lucro mensal. Deve conter a quantidade de viagens realizadas, quantidade de passagens vendidas, valor total do mês selecionado. 
- Relatório com as viagens que um determinado motorista realizou em um período de tempo, contendo seu nome, cpf e o id do onibus. 
- Relatório com a média de quantidade de assentos vendidos em um período de tempo.


### 5.MODELO CONCEITUAL<br>
![Conceitual](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/608e246f-b73e-4602-b88e-7ff339e5ec76?raw=true "Modelo Conceitual")

#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: Gustavo, Cassiano e Henrique
    [Grupo02]: Bruno, Giovanna, Felipe Suhett e Jéssica

#### 5.2 Descrição dos dados 
	Pessoa: Uma tabela que armazena informações relacionadas a indivíduos.
	ID (Chave Primária): Identificador único da pessoa.
	Nome: Nome completo da pessoa.
	CPF: Número de Cadastro de Pessoa Física da pessoa.
	Data de Nascimento: Data de nascimento da pessoa.
	
	Motorista: Uma tabela que contém informações sobre motoristas.
	Categoria de CNH: Categoria da Carteira Nacional de Habilitação (CNH) do motorista.
	Validade de CNH: Data de validade da CNH do motorista.
	Salário: Remuneração do motorista.
	
	Passagem: Uma tabela que registra informações sobre passagens de ônibus.
	ID (Chave Primária): Identificador único da passagem.
	Número do Assento: Número do assento associado à passagem.
	Nome do Passageiro: Nome do passageiro que adquiriu a passagem.
	Origem: Cidade de origem da viagem.
	Destino: Cidade de destino ou parada da viagem.
	Valor: Valor da passagem.
	
	Assento: Tabela que armazena informações sobre os assentos dos ônibus.
	ID (Chave Primária): Identificador único do assento.
	Estado: Estado atual do assento.
	
	Ônibus: Uma tabela que contém informações sobre os ônibus utilizados nas viagens.
	ID (Chave Primária): Identificador único do ônibus.
	Tipo de Leito: Categoria do leito (por exemplo, executivo, semi leito, leito cama e convencional).
	Nº Chassi: Número de chassi do ônibus.
	
	Viagem: Tabela que registra informações sobre as viagens realizadas.
	ID (Chave Primária): Identificador único da viagem.
	Tempo: Duração da viagem.
	Distância: Distância entre a cidade de origem e o destino da viagem.
	Embarque: Local de embarque da viagem, identificado pelo nome da cidade.
	Desembarque: Local de destino da viagem, identificado pelo nome da cidade.

	Rota: Tabela que contém toda a rota percorrida pelo ônibus
 	ID (Chave Primária): Identificador único daquela rota específica
  	Destino: Local de destino da viagem
   	Origem: Local de Origem da viagem
 
	Parada: Tabela que contém informações sobre as paradas de ônibus durante a viagem.
	ID (Chave Primária): Identificador único da parada.
	Cidade: Nome da cidade onde a parada ocorre.
	Bairro: Nome do bairro da parada (se aplicável).
	Nome: Nome da parada em si.

 	Reserva: Tabela que contem informações sobre a reserva
  	Data: Data da reserva

	Tipo de Contato: Tabela que mostra os possíveis tipos de contato que uma pessoa pode ter
 	ID (Chave Primária): Identificador único do tipo de contato.
  	Descrição: Define o tipo de contato.


># Marco de Entrega 01: Do item 1 até o item 5.2 (5 PTS) <br> 

### 6	MODELO LÓGICO<br>
![logico_rodoviario](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/e0438d67-7857-4248-ae06-7a2499fb8697)


### 7	MODELO FÍSICO<br>

DROP TABLE IF EXISTS PESSOA; <br>
CREATE TABLE PESSOA ( <br>
    id SERIAL PRIMARY KEY,
    nome VARCHAR(60),
    cpf CHAR(16),
    dt_nasc DATE
);

DROP TABLE IF EXISTS MOTORISTA; <br>
CREATE TABLE MOTORISTA ( <br>
    categoria_cnh CHAR(2),
    validade_cnh DATE,
    salario float,
    FK_PESSOA_id INT,
    id SERIAL PRIMARY KEY
);

DROP TABLE IF EXISTS TIPO_CONTATO; <br>
CREATE TABLE TIPO_CONTATO ( <br>
    descricao VARCHAR(20),
    id SERIAL PRIMARY KEY
);

DROP TABLE IF EXISTS CONTATO; <br>
CREATE TABLE CONTATO ( <br>
    fk_TIPO_CONTATO_id INT,
    fk_PESSOA_id INT
);

DROP TABLE IF EXISTS Rota; <br>
CREATE TABLE Rota ( <br>
    Origem char(30),
    Destino char(30),
    id SERIAL PRIMARY KEY
);

DROP TABLE IF EXISTS RotaParada; <br>
CREATE TABLE RotaParada ( <br>
    fk_PARADA_id INT,
    fk_Rota_id INT
);

DROP TABLE IF EXISTS VIAGEM; <br>
CREATE TABLE VIAGEM ( <br>
    desembarque varchar(30),
    distancia float,
    tempo TIME,
    id SERIAL PRIMARY KEY,
    embarque varchar(30),
    FK_Rota_id INT
);

DROP TABLE IF EXISTS PARADA; <br>
CREATE TABLE PARADA ( <br>
    nome varchar(50),
    cidade varchar(50),
    bairro varchar(50),
    id SERIAL PRIMARY KEY
);

DROP TABLE IF EXISTS EQUIPAMENTO; <br>
CREATE TABLE EQUIPAMENTO ( <br>
    id SERIAL PRIMARY KEY,
    nome varchar(30)
);

DROP TABLE IF EXISTS ONIBUS; <br>
CREATE TABLE ONIBUS ( <br>
    id SERIAL PRIMARY KEY,
    tipo_leito varchar(16),
    n_chassi char(18)
);

DROP TABLE IF EXISTS OnibusEquipamento; <br>
CREATE TABLE OnibusEquipamento ( <br>
    fk_ONIBUS_id INT,
    fk_EQUIPAMENTO_id INT
);

DROP TABLE IF EXISTS OnibusViagem; <br>
CREATE TABLE OnibusViagem ( <br>
    fk_ONIBUS_id INT,
    fk_VIAGEM_id INT,
    data DATE,
    hrPartida TIME
);

DROP TABLE IF EXISTS MotoristaOnibus; <br>
CREATE TABLE MotoristaOnibus ( <br>
    fk_PESSOA_id INT,
    fk_ONIBUS_id INT
);

DROP TABLE IF EXISTS PASSAGEM; <br>
CREATE TABLE PASSAGEM ( <br>
    id SERIAL PRIMARY KEY,
    n_assento INT,
    nome_passageiro char(80),
    origem char(80),
    destino char(80),
    valor float,
    FK_PESSOA_id INT,
    FK_PARADA_id INT,
    FK_ASSENTO_id INT,
    data DATE
);

DROP TABLE IF EXISTS ASSENTO; <br>
CREATE TABLE ASSENTO ( <br>
    id SERIAL PRIMARY KEY,
    estado INT,
    FK_ONIBUS_id INT
);

ALTER TABLE MOTORISTA ADD CONSTRAINT FK_MOTORISTA_2 <br>
    FOREIGN KEY (FK_PESSOA_id)
    REFERENCES PESSOA (id)
    ON DELETE CASCADE;
 
ALTER TABLE CONTATO ADD CONSTRAINT FK_CONTATO_1 <br>
    FOREIGN KEY (fk_TIPO_CONTATO_id)
    REFERENCES TIPO_CONTATO (id)
    ON DELETE SET NULL;
 
ALTER TABLE CONTATO ADD CONSTRAINT FK_CONTATO_2 <br>
    FOREIGN KEY (fk_PESSOA_id)
    REFERENCES PESSOA (id)
    ON DELETE SET NULL;
 
ALTER TABLE RotaParada ADD CONSTRAINT FK_RotaParada_1 <br>
    FOREIGN KEY (fk_PARADA_id)
    REFERENCES PARADA (id)
    ON DELETE RESTRICT;
 
ALTER TABLE RotaParada ADD CONSTRAINT FK_RotaParada_2 <br>
    FOREIGN KEY (fk_Rota_id)
    REFERENCES Rota (id)
    ON DELETE SET NULL;
 
ALTER TABLE OnibusViagem ADD CONSTRAINT FK_OnibusViagem_1 <br>
    FOREIGN KEY (fk_ONIBUS_id)
    REFERENCES ONIBUS (id)
    ON DELETE RESTRICT;
 
ALTER TABLE OnibusViagem ADD CONSTRAINT FK_OnibusViagem_2 <br>
    FOREIGN KEY (fk_VIAGEM_id)
    REFERENCES VIAGEM (id)
    ON DELETE SET NULL;
 
ALTER TABLE VIAGEM ADD CONSTRAINT FK_VIAGEM_2 <br>
    FOREIGN KEY (FK_Rota_id)
    REFERENCES Rota (id)
    ON DELETE RESTRICT;
 
ALTER TABLE OnibusEquipamento ADD CONSTRAINT FK_OnibusEquipamento_1 <br>
    FOREIGN KEY (fk_ONIBUS_id)
    REFERENCES ONIBUS (id)
    ON DELETE RESTRICT;
 
ALTER TABLE OnibusEquipamento ADD CONSTRAINT FK_OnibusEquipamento_2 <br>
    FOREIGN KEY (fk_EQUIPAMENTO_id)
    REFERENCES EQUIPAMENTO (id)
    ON DELETE SET NULL;
 
ALTER TABLE PASSAGEM ADD CONSTRAINT FK_PASSAGEM_2 <br>
    FOREIGN KEY (FK_PESSOA_id)
    REFERENCES PESSOA (id)
    ON DELETE SET NULL;
 
ALTER TABLE PASSAGEM ADD CONSTRAINT FK_PASSAGEM_3 <br>
    FOREIGN KEY (FK_PARADA_id)
    REFERENCES PARADA (id)
    ON DELETE CASCADE;
 
ALTER TABLE PASSAGEM ADD CONSTRAINT FK_PASSAGEM_4 <br>
    FOREIGN KEY (FK_ASSENTO_id)
    REFERENCES ASSENTO (id)
    ON DELETE CASCADE;
 
ALTER TABLE ASSENTO ADD CONSTRAINT FK_ASSENTO_2 <br>
    FOREIGN KEY (FK_ONIBUS_id)
    REFERENCES ONIBUS (id)
    ON DELETE RESTRICT;
 
ALTER TABLE MotoristaOnibus ADD CONSTRAINT FK_MotoristaOnibus_1 <br>
    FOREIGN KEY (fk_PESSOA_id)
    REFERENCES PESSOA (id)
    ON DELETE SET NULL;
 
ALTER TABLE MotoristaOnibus ADD CONSTRAINT FK_MotoristaOnibus_2 <br>
    FOREIGN KEY (fk_ONIBUS_id)
    REFERENCES ONIBUS (id)
    ON DELETE SET NULL;


	      
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        https://github.com/ericklyl/TrabalhoBD1/blob/main/INSERTS%20BD.sql

INSERT INTO PESSOA (nome, cpf, dt_nasc)
VALUES <br>
    ('João da Silva', '123.456.789-01', '1990-05-15'), <br>
    ('Maria Souza', '987.654.321-02', '1985-08-20'), <br>
    ('Carlos Santos', '456.789.123-03', '1995-02-10'), <br>
    ('Ana Oliveira', '111.222.333-04', '1988-12-03'), <br>
    ('Pedro Almeida', '444.555.666-05', '1992-07-25'), <br>
    ('Mariana Costa', '777.888.999-06', '1980-04-18'); <br>

INSERT INTO MOTORISTA (categoria_cnh, validade_cnh, salario, FK_PESSOA_id)
VALUES <br>
    ('B', '2024-04-15', 2500, 1), <br>
    ('D', '2023-12-31', 2800, 2), <br>
    ('C', '2025-06-20', 3000, 3), <br>
    ('D', '2023-09-28', 2700, 4), <br>
    ('E', '2024-10-02', 3200, 5), <br>
    ('B', '2025-04-05', 2600, 6); <br>

INSERT INTO TIPO_CONTATO (descricao)
VALUES <br>
    ('Telefone'), <br>
    ('Email'), <br>
    ('WhatsApp'), <br>
    ('Facebook'), <br>
    ('Twitter'), <br>
    ('Instagram'); <br>

INSERT INTO CONTATO (fk_TIPO_CONTATO_id, fk_PESSOA_id)
VALUES <br>
    (1, 1), <br>
    (2, 1), <br>
    (1, 2), <br>
    (3, 3), <br>
    (1, 4), <br>
    (2, 4); <br>

INSERT INTO Rota (Origem, Destino)
VALUES <br>
    ('São Paulo', 'Rio de Janeiro'), <br>
    ('Belo Horizonte', 'Salvador'), <br>
    ('Fortaleza', 'Recife'), <br>
    ('Curitiba', 'Porto Alegre'), <br>
    ('Brasília', 'Goiânia'), <br>
    ('Natal', 'João Pessoa'); <br>

INSERT INTO PARADA (nome, cidade, bairro)
VALUES <br>
    ('Parada 1', 'São Paulo', 'Centro'), <br>
    ('Parada 2', 'Rio de Janeiro', 'Copacabana'), <br>
    ('Parada 3', 'Belo Horizonte', 'Savassi'), <br>
    ('Parada 4', 'Salvador', 'Barra'), <br>
    ('Parada 5', 'Fortaleza', 'Praia de Iracema'), <br>
    ('Parada 6', 'Recife', 'Boa Viagem'); <br>

INSERT INTO RotaParada (fk_PARADA_id, fk_Rota_id)
VALUES <br>
    (1, 1), <br>
    (2, 1), <br>
    (1, 2), <br>
    (2, 2), <br>
    (1, 3), <br>
    (2, 3); <br>
    
INSERT INTO EQUIPAMENTO (nome)
VALUES <br>
    ('Wi-Fi'), <br>
    ('Ar Condicionado'), <br>
    ('TV'), <br>
    ('Luzes de Leitura'), <br>
    ('Tomadas USB'), <br>
    ('Poltrona reclinável'); <br>

INSERT INTO ONIBUS (tipo_leito, n_chassi)
VALUES <br>
    ('Semi-Leito', 'ABC123DEF456GHI789'), <br>
    ('Leito', 'XYZ456MNO789PQR123'), <br>
    ('Executivo', 'JKL789XYZ123ABC456'), <br>
    ('Convencional', 'DEF456GHI789JKL789'), <br>
    ('Double-Decker', 'MNO789PQR123STU123'), <br>
    ('Micro-Ônibus', 'VWX123YZA456BCD456'); <br>

INSERT INTO OnibusEquipamento (fk_ONIBUS_id, fk_EQUIPAMENTO_id)
VALUES <br>
    (1, 1), <br>
    (1, 2), <br>
    (2, 2), <br>
    (2, 3), <br>
    (3, 1), <br>
    (3, 4), <br>
    (4, 5), <br>
    (4, 6), <br>
    (5, 2), <br>
    (5, 3), <br>
    (6, 4), <br>
    (6, 5); <br>

INSERT INTO ASSENTO (estado, FK_ONIBUS_id)
VALUES <br>
    (0, 1), <br> 
    (0, 2), <br>
    (1, 1), <br>
    (1, 2), <br>
    (0, 3), <br>
    (1, 3), <br>
    (0, 4), <br>
    (1, 4), <br>
    (0, 5), <br>
    (1, 5), <br>
    (0, 6), <br>
    (1, 6); <br>
 
INSERT INTO MotoristaOnibus (fk_PESSOA_id, fk_ONIBUS_id)
VALUES <br>
    (1, 1), <br>
    (2, 2), <br>
    (3, 3), <br>
    (4, 4), <br>
    (5, 5), <br>
    (6, 6); <br>

INSERT INTO VIAGEM (desembarque, distancia, tempo, FK_Rota_id, embarque)
VALUES <br>
    ('Rio de Janeiro', 400.5, '06:30:00', 1, 'São Paulo'), <br>
    ('Salvador', 1200.2, '12:15:00', 2, 'Belo Horizonte'), <br>
    ('Recife', 600.8, '08:45:00', 3, 'Fortaleza'), <br>
    ('Porto Alegre', 700.0, '09:30:00', 4, 'Curitiba'), <br>
    ('Brasília', 150.6, '03:45:00', 5, 'Goiânia'), <br>
    ('João Pessoa', 80.2, '02:15:00', 6, 'Natal'); <br>

INSERT INTO PASSAGEM (n_assento, nome_passageiro, origem, destino, valor, FK_PESSOA_id, FK_PARADA_id, FK_ASSENTO_id, data)
VALUES <br>
    (1, 'Lucas Oliveira', 'São Paulo', 'Rio de Janeiro', 120, 1, 1, 1, '2023-11-10'), <br>
    (2, 'Ana Pereira', 'Belo Horizonte', 'Salvador', 180, 2, 2, 2, '2023-12-05'), <br>
    (3, 'Rafaela Mendes', 'Fortaleza', 'Recife', 90, 3, 3, 3, '2023-10-15'), <br>
    (4, 'Pedro Nogueira', 'Curitiba', 'Porto Alegre', 150, 4, 4, 4, '2023-11-22'), <br>
    (5, 'Carla Silva', 'Goiânia', 'Brasília', 60, 5, 5, 5, '2023-09-30'), <br>
    (6, 'Marcelo Santos', 'Natal', 'João Pessoa', 40, 6, 6, 6, '2023-12-20'); <br>

INSERT INTO OnibusViagem (fk_ONIBUS_id, fk_VIAGEM_id, data, hrPartida)
VALUES <br>
    (1, 1, '2023-11-10', '08:00:00'), <br>
    (2, 2, '2023-12-05', '09:30:00'), <br>
    (3, 3, '2023-10-15', '07:45:00'), <br>
    (4, 4, '2023-11-22', '10:15:00'), <br>
    (5, 5, '2023-09-30', '06:30:00'), <br>
    (6, 6, '2023-12-20', '08:45:00'); <br>
 

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Usa template da disciplina disponibilizado no Colab.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

<br>
select * from tipo_contato

 ![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/636e2d1a-bfa1-4a3f-b896-9500b842f7db)

<br>
select * from pessoa
 
  ![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/ef3cec34-f543-4b8f-b387-7f3480b692d3)

 <br>
select * from contato

 ![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/1db0cd21-f81f-4685-8d6c-f600a6468582)

<br>
select * from motorista

 ![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/abaf4989-c5a9-4cc3-8315-d633f0e2e134)

<br>
select * from onibus

 ![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/0a1d22e5-b250-4348-8f6c-08aa5a1e0876)

<br>
select * from motoristaonibus

  ![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/9678e899-6dcf-438e-9644-50e9022666d2)

<br>
select * from passagem

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/63fbd75b-d4e4-4060-9566-7f36d705a00b)

<br>
select * from assento

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/b5f2a239-500e-45eb-a0ca-4b27119872ad)

<br>
select * from equipamento 

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/98f61cd4-d97d-4c4a-8521-b2f35e0d4ee2)

<br>
select * from onibusequipamento

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/46a43187-45d7-4433-b857-a2eb11f3f668)

<br>
select * from rota

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/049c712e-a22e-4001-8187-673775dcd29d)

<br>
select * from viagem

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/4faf5178-5df4-4b17-a368-44d83b9ac7f9)

<br>
select * from onibusviagem

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/59a76074-235d-4579-82f3-212fe5d1f179)

<br>
select * from parada

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/24ed1f86-e827-4be6-928c-ccbd99b44610)

<br>
select * from rotaparada

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/d93b3d84-d155-422b-9936-534c1b711738)

<br>

 
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

<br>
select fk_pessoa_id from motorista where categoria_cnh = 'B'

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/03f1faef-56e7-42e4-ba7f-b715d9bbc0ac)

<br>
select nome from pessoa where id = 6

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/e4de89f2-1d8e-4a09-aea9-1dea88013686)

<br>
select id from parada where bairro = 'Copacabana'

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/63ad3243-b062-4223-a87d-cd509bc84b9a)

<br>
select * from passagem where fk_parada_id = 2

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/748d4a89-5450-4ea0-86c1-d399ff382aa8)


#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
select * from passagem where fk_parada_id = 2 or fk_parada_id = 4

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/2492c859-583d-48a7-b6a9-4ce738f8f1cb)

<br>
select * from motorista where categoria_cnh = 'E' or categoria_cnh = 'D'

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/8273ea27-a51a-495f-8ff0-8b28a4a87629)

<br>
select * from motorista where categoria_cnh = 'E' or not categoria_cnh = 'D'

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/53d493d7-d046-4299-9752-8ffc208fdaf4)

<br>
select nome from equipamento where nome = 'Wi-Fi' or not nome = 'TV'

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/18468b1e-8bc8-4943-b547-2eba65cea039)


<br>
select * from rota where origem = 'Fortaleza' and destino = 'Recife'

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/a3d47986-1c46-46fd-b87d-44002098d2e9)

<br>
SELECT (SUM(salario) * 1.1) AS novo_salario

Soma todos os salários da tabela "MOTORISTA" e, em seguida, multiplicação do resultado por 1.1 para aplicar um aumento de 10% nos salários
![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/736871e2-71f9-4a33-8705-dbbf91cf1e73)

<br>
SELECT (SELECT SUM(estado) FROM ASSENTO) AS assentos_disponiveis,
       (SELECT COUNT(*) FROM PASSAGEM) AS assentos_ocupados,
       ((SELECT SUM(estado) FROM ASSENTO) - (SELECT COUNT(*) FROM PASSAGEM)) AS assentos_vagos;

Calcula a diferença entre o número total de assentos disponíveis em todos os ônibus e o número total de assentos ocupados
![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/e1a26b28-c5f7-43f0-9473-0dd57d03a7f2)

<br>
SELECT AVG(distancia) AS media_distancia
FROM VIAGEM;

Calcula a média de distância percorrida por viagem
![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/0ca9e6aa-63f2-42c1-9c75-994c9eb87de5)

<br>

ALTER TABLE PESSOA
RENAME COLUMN nome TO nome_completo

Renomeia o campo "nome" para "nome_completo" na tabela "PESSOA"
![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/17563f07-0dad-4124-a885-c521a32bfe51)

<br>
ALTER TABLE MOTORISTA
RENAME TO CONDUTOR

Renomeia a tabela "MOTORISTA" para "CONDUTOR"
![WhatsApp Image 2023-10-29 at 18 57 40](https://github.com/templatetrab/TemplateBD1/assets/109321308/3affe4ee-2206-434e-93f6-c8bf964f3e1f)


<br>

SELECT origem AS cidade_origem, destino, distancia
FROM VIAGEM

Renomeia o campo "origem" para "cidade_origem" na tabela "VIAGEM"
![WhatsApp Image 2023-10-28 at 21 34 48](https://github.com/templatetrab/TemplateBD1/assets/109321308/6319195b-0d30-491b-9ffd-d37d2ff24af8)



#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

># Marco de Entrega 02: Do item 6. até o item 9.1 (5 PTS) <br>

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo
select p.nome_completo as "Passageiro", pass.origem, pass.destino from pessoa p right join passagem pass on (pass.fk_pessoa_id = p.id)
![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/2d4c5577-e952-4f2d-b16b-208f08dc5287)

<br>
select p.nome_completo, tp_cont.descricao from pessoa p right join contato cont on (p.id = cont.fk_pessoa_id) left join tipo_contato tp_cont on (cont.fk_tipo_contato_id = tp_cont.id)
![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/ac28a2fb-e7e8-4cab-851c-f876a6812231)


#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

># Marco de Entrega 03: Do item 9.2 até o ítem 9.10 (10 PTS)<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

># Marco de Entrega 04: Itens 10 e 11 (20 PTS) <br>
<br>
<br>




### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


