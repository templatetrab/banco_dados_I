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
[Consultas no Google Colab](https://colab.research.google.com/drive/1RGLbLzFIXqOZYEm-xE7smhbFGcO3AFtO?usp=sharing)

#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
 
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4) <br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

># Marco de Entrega 02: Do item 6. até o item 9.1 (5 PTS) <br>

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização
    
#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado:
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho


#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
O self join não ocorre dentro do nosso banco de dados pois não existe nenhuma auto relação existente.
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


