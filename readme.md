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

- Relatório que mostre as paradas com maior embarque/desembarque. Deve ser filtrado por período de tempo, contendo a descrição da parada, a quantidade de onibus e o horário com maior índice;
- Relatório das viagens com maior procura. Deve-se selecionar a quantidade de viagens que serão mostradas;
- Relatório com o lucro mensal. Deve conter a quantidade de viagens realizadas, quantidade de passagens vendidas, valor total do mês selecionado. 
- Relatório com as viagens que um determinado motorista realizou em um período de tempo, contendo seu nome, cpf e o id do onibus. 
- Relatório com a média de quantidade de assentos vendidos em um período de tempo.


### 5.MODELO CONCEITUAL<br>
![Modelo Conceitual](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/6ecf465b-7e90-497a-a6e2-62d4367e3289?raw=true "Modelo Conceitual")


#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: Gustavo, Cassiano e Henrique
    [Grupo02]: Bruno, Giovanna, Felipe Suhett e Jéssica

#### 5.2 Descrição dos dados 
	Pessoa: Uma tabela que armazena informações relacionadas a indivíduos.
	ID (Chave Primária): Identificador único da pesso;
	nome: Nome completo da pessoa;
	cpf: Número de Cadastro de Pessoa Física da pessoa;
	dt_nasc: Data de nascimento da pessoa.

 	Tipo_contato: Uma tabela que armazena os diferentes tipos de contato das pessoas
	ID (Chave Primária): Identificador único do contato;
 	descrição: Descrição do contato.
	
	Motorista: Uma tabela que contém informações sobre motoristas dos ônibus.
	categoria_cnh: Categoria da Carteira Nacional de Habilitação (CNH) do motorista;
	validade_cnh: Data de validade da CNH do motorista;
	salario: Remuneração do motorista.
	
	Passagem: Uma tabela que registra informações sobre passagens de ônibus.
	ID (Chave Primária): Identificador único da passagem.
	n_assento: Número do assento associado à passagem.
	nome_passageiro: Nome do passageiro que adquiriu a passagem.
	origem: Cidade de origem da viagem.
	destino: Cidade de destino ou parada da viagem.
	valor: Valor da passagem.
	
	Assento: Tabela que armazena informações sobre os assentos dos ônibus.
	ID (Chave Primária): Identificador único do assento;
	estado: Estado atual do assento (ocupado ou desocupado).
	
	Ônibus: Uma tabela que contém informações sobre os ônibus utilizados nas viagens.
	ID (Chave Primária): Identificador único do ônibus.
	tipo_leito: Categoria do leito(exemplo: executivo, semi leito, convencional, etc).
	n_chassi: Número de chassi do ônibus.
	
	Viagem: Tabela que registra informações sobre as viagens realizadas.
	ID (Chave Primária): Identificador único da viagem.
	tempo: Duração da viagem.
	distancia: Distância entre a cidade de origem e o destino da viagem.
	embarque: Local de embarque da viagem, identificado pelo nome da cidade.
	desembarque: Local de destino da viagem, identificado pelo nome da cidade.

	Rota: Tabela que contém toda a rota percorrida pelo ônibus
 	ID (Chave Primária): Identificador único daquela rota específica
  	destino: Local de destino da viagem
   	drigem: Local de Origem da viagem
 
	Parada: Tabela que contém informações sobre as paradas de ônibus durante a viagem.
	ID (Chave Primária): Identificador único da parada.
	cidade: Nome da cidade onde a parada ocorre.
	bairro: Nome do bairro da parada (se aplicável).
	nome: Nome da parada em si.

 	Reserva: Tabela que contem informações sobre a reserva
  	Data: Data da reserva

># Marco de Entrega 01: Do item 1 até o item 5.2 (5 PTS) <br> 

### 6	MODELO LÓGICO<br>
![logico_rodoviario](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/bb7cc22f-4d72-4580-8f58-5280819b6745?raw=true "Modelo Lógico")


### 7	MODELO FÍSICO<br>
		
		DROP TABLE IF EXISTS PESSOA;
		CREATE TABLE PESSOA (
		    id SERIAL PRIMARY KEY,
		    nome_completo VARCHAR(60),
		    cpf CHAR(16),
		    dt_nasc DATE
		);
		
		DROP TABLE IF EXISTS CONDUTOR;
		CREATE TABLE CONDUTOR (
		    categoria_cnh CHAR(2),
		    validade_cnh DATE,
		    salario FLOAT,
		    FK_PESSOA_id INT PRIMARY KEY
		);
		
		DROP TABLE IF EXISTS TIPO_CONTATO;
		CREATE TABLE TIPO_CONTATO (
		    descricao VARCHAR(20),
		    id SERIAL PRIMARY KEY
		);
		
		DROP TABLE IF EXISTS CONTATO;
		CREATE TABLE CONTATO (
		    fk_TIPO_CONTATO_id INT,
		    fk_PESSOA_id INT,
		    descricao varchar(50)
		);
		
		DROP TABLE IF EXISTS viagem;
		CREATE TABLE VIAGEM (
		    distancia FLOAT,
		    tempo TIME,
		    id SERIAL PRIMARY KEY,
		    embarque char(30),
		    desembarque char(30),
		    hrPartida TIME,
		    dataPartida DATE,
		    fk_ONIBUS_id INT
		);
		
		DROP TABLE IF EXISTS PARADA;
		CREATE TABLE PARADA (
		    nome varchar(50),
		    cidade varchar(50),
		    bairro varchar(50),
		    id SERIAL PRIMARY KEY
		);
		
		DROP TABLE IF EXISTS EQUIPAMENTO;
		CREATE TABLE EQUIPAMENTO (
		    id SERIAL PRIMARY KEY,
		    nome varchar(30)
		);
		
		DROP TABLE IF EXISTS OnibusEquipamento;
		CREATE TABLE OnibusEquipamento (
		    fk_ONIBUS_id INT,
		    fk_EQUIPAMENTO_id INT
		);
		
		DROP TABLE IF EXISTS ONIBUS;
		CREATE TABLE ONIBUS (
		    id SERIAL PRIMARY KEY,
		    tipo_leito varchar(16),
		    n_chassi char(18)
		);
		
		DROP TABLE IF EXISTS PASSAGEM;
		CREATE TABLE PASSAGEM (
		    id SERIAL PRIMARY KEY,
		    n_assento INT,
		    nome_passageiro char(80),
		    valor FLOAT,
		    FK_PESSOA_id INT,
		    FK_PARADA_id INT,
		    FK_ASSENTO_id INT,
		    data DATE
		);
		
		DROP TABLE IF EXISTS ASSENTO;
		CREATE TABLE ASSENTO (
		    id SERIAL PRIMARY KEY,
		    ocupado BOOLEAN,
		    FK_ONIBUS_id INT
		);
		
		DROP TABLE IF EXISTS MotoristaOnibus;
		CREATE TABLE MotoristaOnibus (
		    fk_PESSOA_id INT,
		    fk_ONIBUS_id INT
		);
		
		DROP TABLE IF EXISTS ViagemParada;
		CREATE TABLE ViagemParada (
		    FK_VIAGEM_id INT,
		    FK_PARADA_id INT
		);
		 
		ALTER TABLE CONDUTOR ADD CONSTRAINT FK_CONDUTOR_2
		    FOREIGN KEY (FK_PESSOA_id)
		    REFERENCES PESSOA (id)
		    ON DELETE CASCADE;
		 
		ALTER TABLE CONTATO ADD CONSTRAINT FK_CONTATO_1
		    FOREIGN KEY (fk_TIPO_CONTATO_id)
		    REFERENCES TIPO_CONTATO (id)
		    ON DELETE SET NULL;
		 
		ALTER TABLE CONTATO ADD CONSTRAINT FK_CONTATO_2
		    FOREIGN KEY (fk_PESSOA_id)
		    REFERENCES PESSOA (id)
		    ON DELETE SET NULL;
		 
		ALTER TABLE VIAGEM ADD CONSTRAINT FK_VIAGEM_2
		    FOREIGN KEY (fk_ONIBUS_id)
		    REFERENCES ONIBUS (id)
		    ON DELETE RESTRICT;
		 
		ALTER TABLE OnibusEquipamento ADD CONSTRAINT FK_OnibusEquipamento_1
		    FOREIGN KEY (fk_ONIBUS_id)
		    REFERENCES ONIBUS (id)
		    ON DELETE RESTRICT;
		 
		ALTER TABLE OnibusEquipamento ADD CONSTRAINT FK_OnibusEquipamento_2
		    FOREIGN KEY (fk_EQUIPAMENTO_id)
		    REFERENCES EQUIPAMENTO (id)
		    ON DELETE SET NULL;
		 
		ALTER TABLE PASSAGEM ADD CONSTRAINT FK_PASSAGEM_2
		    FOREIGN KEY (FK_PESSOA_id)
		    REFERENCES PESSOA (id)
		    ON DELETE SET NULL;
		 
		ALTER TABLE PASSAGEM ADD CONSTRAINT FK_PASSAGEM_3
		    FOREIGN KEY (FK_PARADA_id)
		    REFERENCES PARADA (id)
		    ON DELETE CASCADE;
		 
		ALTER TABLE PASSAGEM ADD CONSTRAINT FK_PASSAGEM_4
		    FOREIGN KEY (FK_ASSENTO_id)
		    REFERENCES ASSENTO (id)
		    ON DELETE CASCADE;
		 
		ALTER TABLE ASSENTO ADD CONSTRAINT FK_ASSENTO_2
		    FOREIGN KEY (FK_ONIBUS_id)
		    REFERENCES ONIBUS (id)
		    ON DELETE RESTRICT;
		 
		ALTER TABLE MotoristaOnibus ADD CONSTRAINT FK_MotoristaOnibus_1
		    FOREIGN KEY (fk_PESSOA_id)
		    REFERENCES PESSOA (id)
		    ON DELETE SET NULL;
		 
		ALTER TABLE MotoristaOnibus ADD CONSTRAINT FK_MotoristaOnibus_2
		    FOREIGN KEY (fk_ONIBUS_id)
		    REFERENCES ONIBUS (id)
		    ON DELETE SET NULL;
		 
		ALTER TABLE ViagemParada ADD CONSTRAINT FK_ViagemParada_1
		    FOREIGN KEY (FK_VIAGEM_id)
		    REFERENCES VIAGEM (id);
		 
		ALTER TABLE ViagemParada ADD CONSTRAINT FK_ViagemParada_2
		    FOREIGN KEY (FK_PARADA_id)
		    REFERENCES PARADA (id);

	      
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
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


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Usa template da disciplina disponibilizado no Colab.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
 
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4) <br>

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

SELECT * FROM PESSOA WHERE nome_completo LIKE 'J%';

Seleciona todas as pessoas que o nome inicia com J
<br>
![image](https://github.com/ericklyl/TrabalhoBD1/assets/136522676/e8565efc-6a71-46fa-adba-a1fa06d90c70)
<br>

SELECT * FROM PESSOA WHERE nome_completo LIKE 'A%a';

Seleciona todas as pessoas que o nome inicia com A e termina com a
<br>
![image](https://github.com/ericklyl/TrabalhoBD1/assets/136522676/745c449c-1cd6-4b3a-8235-766097dd7d73)
<br>

SELECT PESSOA.nome_completo, TIPO_CONTATO.descricao AS tipo_contato FROM CONTATO 
INNER JOIN TIPO_CONTATO ON CONTATO.fk_TIPO_CONTATO_id = TIPO_CONTATO.id
INNER JOIN PESSOA ON CONTATO.fk_PESSOA_id = PESSOA.id
WHERE TIPO_CONTATO.descricao ILIKE 'telefone';

Seleciona todas as pessoas que tem como tipo de contato um telefone
<br>
![image](https://github.com/ericklyl/TrabalhoBD1/assets/136522676/a9f4e34a-c652-4d25-a9b0-579078485bea)
<br>

SELECT R.*
FROM Rota R
INNER JOIN RotaParada RP ON R.id = RP.fk_Rota_id
INNER JOIN PARADA P ON RP.fk_PARADA_id = P.id
WHERE P.cidade ILIKE 'rio de janeiro';

Seleciona todas as rotas que tem parada no Rio de Janeiro
<br>
![image](https://github.com/ericklyl/TrabalhoBD1/assets/136522676/0d008ced-b4ee-4849-a646-5a06c0122632)
<br>

SELECT * FROM PESSOA WHERE cpf LIKE '1%';

Seleciona todas as pessoas que o cpf inicia com 1
<br>
![image](https://github.com/ericklyl/TrabalhoBD1/assets/136522676/41e64487-3fd7-42f5-97d7-59d7ea79868d)
<br>

SELECT 
    nome_passageiro,
    origem,
    destino,
    valor,
    FK_PESSOA_id,
    FK_PARADA_id,
    FK_ASSENTO_id,
    data,
    AGE(data, CURRENT_DATE) AS tempo_faltante
FROM PASSAGEM;

Seleciona todas as passagens e mostra o tempo que falta para viagem
<br>
![image](https://github.com/ericklyl/TrabalhoBD1/assets/136522676/bb43d7bf-0cdf-4b00-a5c4-306e0e0bc731)
<br>

SELECT 
    OV.fk_ONIBUS_id,
    OV.fk_VIAGEM_id,
    OV.data,
    OV.hrPartida,
    OV.data + OV.hrPartida - (CURRENT_DATE + CURRENT_TIME) AS tempo_restante
FROM OnibusViagem OV;

Tempo que falta para partida de cada onibus
<br>
![image](https://github.com/ericklyl/TrabalhoBD1/assets/136522676/81ed4284-a645-4fbe-8070-8c127999d2d0)
<br>

SELECT
    nome_completo,
    dt_nasc AS aniversario
FROM PESSOA
WHERE EXTRACT(MONTH FROM dt_nasc) BETWEEN EXTRACT(MONTH FROM current_date) AND EXTRACT(MONTH FROM current_date) + 3;

Seleciona pessoas com aniversarios nos proximos 3 meses
<br>
![image](https://github.com/ericklyl/TrabalhoBD1/assets/136522676/4508672a-515b-4bf7-97a1-13c4c130d33f)
<br>

SELECT nome_passageiro, origem, destino, data
FROM PASSAGEM
WHERE data >= NOW()

Todas as passagens marcadas pra depois do dia da consulta
<br>
![image](https://github.com/ericklyl/TrabalhoBD1/assets/136522676/ce28e936-560b-442b-94be-f6e217f59330)
<br>

SELECT 
    P.nome_completo AS nome_motorista,
    date_part('year', age(current_date, P.dt_nasc)) AS idade
FROM CONDUTOR C
INNER JOIN PESSOA P ON C.FK_PESSOA_id = P.id;

Idade de cada motorista
<br>
![image](https://github.com/ericklyl/TrabalhoBD1/assets/136522676/40a723b2-62c7-487d-ba0e-6aba5baa8d8d)
<br>

SELECT 
    pa.nome_passageiro,
    pa.origem,
    pa.destino,
    pa.data
FROM PASSAGEM pa
JOIN PESSOA p ON pa.FK_PESSOA_id = p.id
WHERE EXTRACT(YEAR FROM pa.data) = EXTRACT(YEAR FROM CURRENT_DATE) AND EXTRACT(MONTH FROM pa.data) BETWEEN 9 AND 12;

Passagens entre o mes 9 e o mes 12 do ano em que foi feita a consulta
<br>
![image](https://github.com/ericklyl/TrabalhoBD1/assets/136522676/1371d321-2373-48f0-b7ec-e67ca60e3906)
<br>

SELECT 
    P.nome_completo AS nome_motorista,
    EXTRACT(YEAR FROM C.validade_cnh) AS ano_validade_cnh
FROM CONDUTOR C
INNER JOIN PESSOA P ON C.FK_PESSOA_id = P.id;

Ano em que vence a cnh dos motoristas
<br>
![image](https://github.com/ericklyl/TrabalhoBD1/assets/136522676/12666d4c-d384-4b14-9e29-b93f62548d8d)
<br>

># Marco de Entrega 02: Do item 6. até o item 9.1 (5 PTS) <br>

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
	1- DELETE FROM CONTATO WHERE fk_PESSOA_id = 4 and fk_tipo_contato_id = 2;
	2- DELETE FROM OnibusEquipamento WHERE fk_EQUIPAMENTO_id = 4 and fk_onibus_id = 3;
	3- DELETE FROM tipo_contato WHERE id = 6;

    b) Criar minimo 3 de atualização
    	1- UPDATE CONDUTOR SET salario = 3000 WHERE fk_pessoa_id = 1;
	2- UPDATE CONDUTOR SET categoria_cnh = 'E' WHERE FK_PESSOA_id = 3;
	3- UPDATE ONIBUS SET tipo_leito = 'Leito-Cama' WHERE id = 5;

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado:
    
   SELECT * FROM PESSOA
	JOIN CONDUTOR ON PESSOA.id = CONDUTOR.FK_PESSOA_id
	JOIN CONTATO ON PESSOA.id = CONTATO.fk_PESSOA_id
	JOIN TIPO_CONTATO ON CONTATO.fk_TIPO_CONTATO_id = TIPO_CONTATO.id
	JOIN MotoristaOnibus ON PESSOA.id = MotoristaOnibus.fk_PESSOA_id
	JOIN ONIBUS ON MotoristaOnibus.fk_ONIBUS_id = ONIBUS.id
	JOIN ASSENTO ON ONIBUS.id = ASSENTO.FK_ONIBUS_id
	JOIN VIAGEM ON ONIBUS.id = VIAGEM.fk_ONIBUS_id
	JOIN PASSAGEM ON PESSOA.id = PASSAGEM.FK_PESSOA_id
	JOIN ViagemParada ON VIAGEM.id = ViagemParada.FK_VIAGEM_id
	JOIN PARADA ON ViagemParada.FK_PARADA_id = PARADA.id
	JOIN OnibusEquipamento ON ONIBUS.id = OnibusEquipamento.fk_ONIBUS_id
	JOIN EQUIPAMENTO ON OnibusEquipamento.fk_EQUIPAMENTO_id = EQUIPAMENTO.id
	GROUP BY PESSOA.id
	HAVING COUNT(*) >= 2;
 
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

    	1- 
	SELECT *
	FROM MOTORISTA
	JOIN PESSOA ON MOTORISTA.FK_PESSOA_id = PESSOA.id;
	
	2-
	SELECT *
	FROM RotaParada
	JOIN Rota ON RotaParada.fk_Rota_id = Rota.id
	JOIN Parada ON RotaParada.fk_PARADA_id = Parada.id;
	
	3-
	SELECT *
	FROM OnibusEquipamento
	JOIN ONIBUS ON OnibusEquipamento.fk_ONIBUS_id = ONIBUS.id
	JOIN EQUIPAMENTO ON OnibusEquipamento.fk_EQUIPAMENTO_id = EQUIPAMENTO.id;
	
	4-
	SELECT *
	FROM VIAGEM
	JOIN Rota ON VIAGEM.FK_Rota_id = Rota.id;
	
	5-
	SELECT *
	FROM PASSAGEM
	JOIN PESSOA ON PASSAGEM.FK_PESSOA_id = PESSOA.id;

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

<br>
SELECT origem FROM passagem GROUP BY origem;

![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/11573d26-0c59-420e-9645-45994d81a811)

<br>

<br>
SELECT valor FROM passagem GROUP BY valor;

![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/d41db21a-90b6-4d53-8cc0-a2c84ae9a86d)

<br>

<br>
SELECT valor, count(*) FROM passagem GROUP BY valor;

![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/5bc21d1f-af1a-4b0e-93d3-fa1a18ff383c)

<br>

<br>
SELECT valor FROM passagem GROUP BY valor having valor > 100;

![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/969290ae-f899-449c-8dbc-69429c40b579)

<br>

<br>
SELECT R.id AS id_rota, R.Origem, R.Destino, COUNT(RP.fk_PARADA_id) AS total_paradas FROM Rota R
LEFT JOIN RotaParada RP ON R.id = RP.fk_Rota_id GROUP BY R.id, R.Origem, R.Destino
ORDER BY total_paradas DESC;

O número total de paradas em cada rota

![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/25bcec2c-b322-4fe1-a185-d9376cd0d6c4)

<br>

<br>
SELECT P.cidade, COUNT(RP.fk_Rota_id) AS total_rotas
FROM PARADA P LEFT JOIN RotaParada RP ON P.id = RP.fk_PARADA_id
GROUP BY P.cidade ORDER BY total_rotas DESC;

número total de rotas que passam por cada cidade onde há uma parada
![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/79cb64df-218b-4e91-9de5-afb5c3ac0be4)


<br>

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo
select p.nome_completo as "Passageiro", pass.origem, pass.destino from pessoa p right join passagem pass on (pass.fk_pessoa_id = p.id)
![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/2d4c5577-e952-4f2d-b16b-208f08dc5287)

<br>
select p.nome_completo, tp_cont.descricao from pessoa p right join contato cont on (p.id = cont.fk_pessoa_id) left join tipo_contato tp_cont on (cont.fk_tipo_contato_id = tp_cont.id)

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/2f1b8d89-1c87-47c9-822b-d76f5d2817a8)

select v.embarque, v.desembarque, onibv.data as "data_embarque",
onibv.hrpartida from viagem v full join onibusviagem onibv on ( v.id =
onibv.fk_viagem_id)

select r.origem, p.nome as "parada", p.cidade from Parada p right join
rotaparada rp on (p.id = rp.fk_parada_id) left join rota r on
(rp.fk_rota_id = r.id)


#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
O self join não ocorre dentro do nosso banco de dados pois não existe nenhuma auto relação existente.
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

create view passageiro_viagem as SELECT p.nome_completo as "Passageiro", parada.nome, parada.cidade from pessoa p inner join passagem pass on (pass.fk_pessoa_id = p.id) inner join parada on (pass.fk_parada_id = parada.id)
<br>

create view motorista_viagem as SELECT p.nome_completo as "Motorista", v.datapartida as "DATA", v.hrPartida as "HORA", v.origem, v.destino, v.distancia from pessoa p inner join condutor m on (p.id = m.fk_pessoa_id) inner join motoristaonibus moton on (m.fk_pessoa_id = moton.fk_pessoa_id) inner join onibus o on (moton.fk_onibus_id = o.id) inner join viagem v on (o.id = v.fk_onibus_id)

<br>
create view pessoa_contato as  select p.nome_completo, c.descricao from pessoa p inner join contato c on (p.id = c.fk_pessoa_id)

<br> 
create view onibus_assento as select a.id, a.ocupado from assento a inner join onibus o on (a.fk_onibus_id = o.id) inner join viagem v on (o.id = v.fk_onibus_id)

<br>
create view total_viagens as select v.origem, v.destino, count(*), sum(p.valor) from viagem v inner join onibus o on (v.fk_onibus_id = o.id) inner join assento a on (o.id = a.fk_onibus_id) inner join passagem p on (a.id = p.fk_assento_id) where (a.fk_onibus_id = f.fk_onibus_id) group by v.id

<br>
create view motorista_onibus as select p.nome_completo as "Condutor", o.n_chassi as "Chassi" from pessoa p inner join condutor c on (p.id = c.fk_pessoa_id) inner join motoristaonibus moton on (c.fk_pessoa_id = moton.fk_pessoa_id) inner join onibus o on (moton.fk_onibus_id = o.id)

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

<br>
SELECT salario
FROM condutor WHERE salario > (SELECT avg(salario) from condutor)  

todos os salários da tabela condutor que são maiores que a média dos salários na mesma tabela

![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/57079c38-951b-4d60-b3f5-3869325b889f)

<br>

<br>
SELECT valor
FROM passagem WHERE valor> (SELECT avg(valor) from passagem)

 Retorna todos os valores das passagens que estão acima da média geral dos valores de passagens na tabela

![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/5f8ddd3d-e787-4ab9-bd85-92e31f62c222)

<br>

<br>
Calcula a média dos valores das passagens pra cada destino presente na tabela passagem

SELECT P.destino, AVG(P.valor) AS media_valor_passagem
FROM passagem P
WHERE P.destino IN (SELECT destino FROM passagem GROUP BY destino)GROUP BY P.destino;

Calcula a média dos valores das passagens pra cada destino presente na tabela passagem
![image](https://github.com/templatetrab/TemplateBD1/assets/109321308/626d5e0d-5db5-4c4c-9f15-57f0893ab9ee)

<br>


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

![image](https://github.com/ericklyl/TrabalhoBD1/assets/72893552/8ca987d2-bad9-4413-9a83-14821564369a)

