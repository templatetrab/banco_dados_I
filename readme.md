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



        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)

### 7	MODELO FÍSICO<br>

DROP TABLE IF EXISTS PESSOA;
CREATE TABLE PESSOA (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(60),
    cpf CHAR(16),
    dt_nasc DATE
);

DROP TABLE IF EXISTS MOTORISTA;
CREATE TABLE MOTORISTA (
    categoria_cnh CHAR(2),
    validade_cnh DATE,
    salario float,
    FK_PESSOA_id INT,
    id SERIAL PRIMARY KEY
);

DROP TABLE IF EXISTS TIPO_CONTATO;
CREATE TABLE TIPO_CONTATO (
    descricao VARCHAR(20),
    id SERIAL PRIMARY KEY
);

DROP TABLE IF EXISTS CONTATO;
CREATE TABLE CONTATO (
    fk_TIPO_CONTATO_id INT,
    fk_PESSOA_id INT
);

DROP TABLE IF EXISTS Rota;
CREATE TABLE Rota (
    Origem char(30),
    Destino char(30),
    id SERIAL PRIMARY KEY
);

DROP TABLE IF EXISTS RotaParada;
CREATE TABLE RotaParada (
    fk_PARADA_id INT,
    fk_Rota_id INT
);

DROP TABLE IF EXISTS VIAGEM;
CREATE TABLE VIAGEM (
    desembarque varchar(30),
    distancia float,
    tempo TIME,
    id SERIAL PRIMARY KEY,
    embarque varchar(30),
    FK_Rota_id INT
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

DROP TABLE IF EXISTS ONIBUS;
CREATE TABLE ONIBUS (
    id SERIAL PRIMARY KEY,
    tipo_leito varchar(16),
    n_chassi char(18)
);

DROP TABLE IF EXISTS OnibusEquipamento;
CREATE TABLE OnibusEquipamento (
    fk_ONIBUS_id INT,
    fk_EQUIPAMENTO_id INT
);

DROP TABLE IF EXISTS OnibusViagem;
CREATE TABLE OnibusViagem (
    fk_ONIBUS_id INT,
    fk_VIAGEM_id INT,
    data DATE,
    hrPartida TIME
);

DROP TABLE IF EXISTS MotoristaOnibus;
CREATE TABLE MotoristaOnibus (
    fk_PESSOA_id INT,
    fk_ONIBUS_id INT
);

DROP TABLE IF EXISTS PASSAGEM;
CREATE TABLE PASSAGEM (
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

DROP TABLE IF EXISTS ASSENTO;
CREATE TABLE ASSENTO (
    id SERIAL PRIMARY KEY,
    estado INT,
    FK_ONIBUS_id INT
);

ALTER TABLE MOTORISTA ADD CONSTRAINT FK_MOTORISTA_2
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
 
ALTER TABLE RotaParada ADD CONSTRAINT FK_RotaParada_1
    FOREIGN KEY (fk_PARADA_id)
    REFERENCES PARADA (id)
    ON DELETE RESTRICT;
 
ALTER TABLE RotaParada ADD CONSTRAINT FK_RotaParada_2
    FOREIGN KEY (fk_Rota_id)
    REFERENCES Rota (id)
    ON DELETE SET NULL;
 
ALTER TABLE OnibusViagem ADD CONSTRAINT FK_OnibusViagem_1
    FOREIGN KEY (fk_ONIBUS_id)
    REFERENCES ONIBUS (id)
    ON DELETE RESTRICT;
 
ALTER TABLE OnibusViagem ADD CONSTRAINT FK_OnibusViagem_2
    FOREIGN KEY (fk_VIAGEM_id)
    REFERENCES VIAGEM (id)
    ON DELETE SET NULL;
 
ALTER TABLE VIAGEM ADD CONSTRAINT FK_VIAGEM_2
    FOREIGN KEY (FK_Rota_id)
    REFERENCES Rota (id)
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


	      
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) Script das instruções relativas a inclusão de dados 
	Requisito mínimo: (Script dev conter: Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        OBS
	1) Criar um novo banco de dados para testar a restauracao (em caso de falha na restauração o grupo não pontuará neste quesito)
        2) script deve ser incluso no template em um arquivo no formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Usa template da disciplina disponibilizado no Colab.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

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


