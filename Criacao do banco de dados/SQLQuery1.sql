-- *** USUARIO ***
-- id do usuario
-- email do usuário
-- senha do usuário

USE stefaninifooddb;

CREATE TABLE usuario(
	id_usuario INT IDENTITY(1,1) PRIMARY KEY not null,
	email VARCHAR(50) not null,
	senha VARCHAR(100) not null
)

-- *** CLIENTE ***
-- id do cliente
-- nome do cliente
-- rg do cliente
-- cpf do cliente
-- idade do cliente
-- endereco do cliente

CREATE TABLE cliente(
	id_cliente INT IDENTITY(1,1) PRIMARY KEY not null,
	nome VARCHAR(40) not null,
	rg CHAR(9) not null,
	cpf CHAR(11) not null,
	idade SMALLINT null,
	endereco VARCHAR(80) not null
)

-- *** ITEMPEDIDO ***
-- id do item
-- quantidade do item
-- preço do item

CREATE TABLE item_pedido(
	id_item_pedido SMALLINT IDENTITY(1,1) PRIMARY KEY not null,
	quantidade SMALLINT not null,
	preco_total SMALLMONEY not null
)

-- *** PEDIDO ***
-- id do pedido
-- endereco do pedido
-- taxa de entrega do pedido
-- tipo de pagamento do pedido
-- preço total do pedido
-- confirmação do pedido
-- status do pedido

create table pedido(
	id_pedido SMALLINT IDENTITY(1,1) PRIMARY KEY not null,
	endereco VARCHAR(80) not null,
	taxa_entrega SMALLMONEY null,
	tipo_pagamento VARCHAR(30) not null,
	preco_total SMALLMONEY not null,
	confirmacao_pedido BIT not null,
	status_pedido VARCHAR(14) not null
)

-- *** LOJA ***
-- id_loja
-- nome da loja
-- razao social da loja
-- endereco da loja
-- cnpj da loja
-- data de registro da loja

CREATE TABLE loja(
	id_loja SMALLINT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	nome VARCHAR(50) NOT NULL,
	razao_social VARCHAR(50) NULL,
	endereco VARCHAR(80) NOT NULL,
	cnpj CHAR(14) NOT NULL,
	data_registro DATE NOT NULL,
)

-- *** PRODUTO ***
-- id do produto
-- nome do produto
-- descricao do produto
-- valor do produto

CREATE TABLE produto(
	id_produto SMALLINT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	nome VARCHAR(50) NOT NULL,
	descricao VARCHAR(50) NULL,
	valor SMALLMONEY NOT NULL
)

-- *** CATEGORIA ***
-- id da categoria
-- nome da categoria

CREATE TABLE categoria(
	id_categoria SMALLINT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	nome VARCHAR(50) NOT NULL
)

-- *** PRODUTO_CATEGORIA ***
-- id principal da relação
-- id do produto(pk)
-- id da categoria(pk)

CREATE TABLE produto_categoria(
	numero SMALLINT IDENTITY(1,1) PRIMARY KEY NOT NULL
)