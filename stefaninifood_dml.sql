INSERT INTO TB_USUARIO(US_EMAIL,US_SENHA) VALUES ('eduardo@hotmail.com','eduardo123')
INSERT INTO TB_USUARIO(US_EMAIL,US_SENHA) VALUES ('leonardo@hotmail.com','leonardo123')
INSERT INTO TB_USUARIO(US_EMAIL,US_SENHA) VALUES ('gabriela@hotmail.com','gabriela123')
INSERT INTO TB_USUARIO(US_EMAIL,US_SENHA) VALUES ('maria@hotmail.com','maria123')
INSERT INTO TB_USUARIO(US_EMAIL,US_SENHA) VALUES ('maria@hotmail.com','maria123')

select * from TB_USUARIO

INSERT INTO TB_CATEGORIA(CA_NOME) VALUES('Carnes'), ('Japonesa'),('Lanches'),('Marmita'),('Padarias'),('Pizza'),('Salgados'),('Saud�vel'),('Sorvetes'),('Bebidas'),('Fritas'),('Doce'),('Sobremesa')

select * from TB_CATEGORIA

INSERT INTO TB_CLIENTE(CLI_NOME,CLI_RG,CLI_CPF,CLI_IDADE,CLI_ENDERECO, CLI_CEP, CLI_USUARIO) VALUES('Eduardo Isidoro Gon�alves','114695532','84225919013',26,'Rua Josefina Ferreira Bonzan', '', 1)
INSERT INTO TB_CLIENTE(CLI_NOME,CLI_RG,CLI_CPF,CLI_IDADE,CLI_ENDERECO, CLI_CEP, CLI_USUARIO) VALUES('Leonardo de Lima Junior','241984014','68297338045',120,'Rua S�o Felipe', '',2)
INSERT INTO TB_CLIENTE(CLI_NOME,CLI_RG,CLI_CPF,CLI_IDADE,CLI_ENDERECO, CLI_CEP, CLI_USUARIO) VALUES('Gabriela Evangelista da Silva de Campos','433253319','67548910096',26,'Rua Margarida Maria Rigoti', '', 3)
INSERT INTO TB_CLIENTE(CLI_NOME,CLI_RG,CLI_CPF,CLI_IDADE,CLI_ENDERECO, CLI_CEP, CLI_USUARIO) VALUES('Maria Jos� do Carmo Gon�alves','502877376','36784180070',50,'Rua dos Bioqu�micos', '', 4)

select * from TB_CLIENTE

INSERT INTO TB_LOJA(LO_NOME, LO_RAZAO_SOCIAL, LO_ENDERECO, LO_CNPJ, LO_DATA_REGISTRO) VALUES('Burguer King','Burguer King Shopping Serra Sul','Rod Juscelino Kubitschek de Oliveira, Br-459 Km - 107', '13574594000196','2011-09-13')
INSERT INTO TB_LOJA(LO_NOME, LO_RAZAO_SOCIAL, LO_ENDERECO, LO_CNPJ, LO_DATA_REGISTRO) VALUES('McDonald', 'McDonald Shopping Serra Sul', 'Rod Juscelino Kubitschek de Oliveira, Br-459 Km - 107', '42591651000143','2011-07-11')
INSERT INTO TB_LOJA(LO_NOME, LO_RAZAO_SOCIAL, LO_ENDERECO, LO_CNPJ, LO_DATA_REGISTRO) VALUES('Montana Grill', 'Montana Grill Shopping Serra Sul', 'Rod Juscelino Kubitschek de Oliveira, Br-459 Km - 107', '08056736000193', '2022-11-04')
INSERT INTO TB_LOJA(LO_NOME, LO_RAZAO_SOCIAL, LO_ENDERECO, LO_CNPJ, LO_DATA_REGISTRO) VALUES('Habibs', 'Habibs','Av. Porf�rio Ribeiro de Andrade, 291', '21161562000197', '2022-09-09')

select * from TB_LOJA

INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Whopper','Hamb�rguer Whopper, queijo, salada, maionese BK e ketchup', 31.7, 1)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Batata Frita','Batata frita grande ', 8.9, 1)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('BK Chicken','BK Chicken 10 Unidades ', 10.9, 1)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Refrigerante','Refrigerante � vontade ', 6.9, 1)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Ovomaltine','Balde de Ovomaltine', 14.9, 1)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('BigMac','2 Hamb�rgueres Bovinos, Alface, Queijo Cheddar, Picles', 52.8, 2)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Super Montana','2 Hamb�rgueres, Alface, Queijo Cheddar, Tomate ', 45.9, 3)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Habib�o','1 Hamb�rguer, Alface, Queijo Cheddar, Tomate, Bacon', 43.9, 4)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('McFritas','McFritas', 15, 2)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Fritas Montana','Fritas Montana 300g', 29.9, 3)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Fritas Habibis','Fritas Habibis com Cheddar e Bacon', 19.9, 4)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Refrigerante','Refrigerante Refil 30min', 14.9, 2)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Refrigerante','Refrigerante Coca Cola 300ml', 11, 3)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Refrigerante','Refrigerante Coca Cola 300ml', 10.9, 4)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Chicken Nuggets','Frango Empanado', 13.9, 2)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Chicken Nuggets','Frango Empanado', 17, 3)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Chicken Nuggets','Frango Empanado', 11.9, 4)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Sorvete','Sorvete Creme', 14.9, 2)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Milk Shake','Mil Shake Morango', 22, 3)
INSERT INTO TB_PRODUTO(PR_NOME, PR_DESCRICAO, PR_VALOR, PR_LOJA) VALUES('Petit Gateau','Petit Gateau', 25, 4)

select * from TB_PRODUTO

INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(1, 3)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(1, 1)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(6, 3)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(6, 1)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(7, 3)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(7, 1)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(8, 3)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(8, 1)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(2, 11)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(9, 11)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(10, 11)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(11, 11)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(3, 1)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(3, 11)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(15, 1)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(15, 11)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(16, 1)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(16, 11)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(17, 1)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(17, 11)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(4, 10)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(11, 10)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(13, 10)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(14, 10)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(5, 9)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(5, 12)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(5, 13)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(18, 9)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(18, 12)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(18, 13)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(19, 12)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(19, 13)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(20, 9)
INSERT INTO TB_PRODUTO_CATEGORIA(PC_PRODUTO, PC_CATEGORIA)VALUES(20, 13)

SELECT * FROM TB_PRODUTO_CATEGORIA

INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua Leme', 5,'Cart�o de Cr�dito', 46.6, 1, 'Confirmado', 5, 1, '2022-03-15')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Quadra AOS 1 Bloco B', 8,'Cart�o de D�bito', 128.50, 1, 'Confirmado', 6, 2, '2022-01-08')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua Margarida Maria Rigoti', 10,'� vista no dinheiro', 118.80, 1, 'Confirmado', 7, 3, '2022-09-03')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua dos Bioqu�micos', 0,'� vista no dinheiro', 34.70, 1, 'Confirmado', 8, 4, '2022-04-23')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Quadra AOS 1 Bloco B', 8,'Cart�o de D�bito', 128.50, 1, 'Confirmado', 6, 2, '2022-01-15')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua Margarida Maria Rigoti', 10,'� vista no dinheiro', 118.80, 1, 'Confirmado', 7, 3, '2022-01-22')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua Josefina Ferreira Bonzan', 5,'Cart�o de Cr�dito', 46.6, 0, 'N�o confirmado', 5, 1, '2022-09-11')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua Josefina Ferreira Bonzan', 5,'Cart�o de Cr�dito', 46.6, 0, 'N�o confirmado', 5, 1, '2022-09-03')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua Josefina Ferreira Bonzan', 5,'Cart�o de Cr�dito', 46.6, 0, 'N�o confirmado', 5, 1, '2022-09-03')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua Leme', 5,'Cart�o de Cr�dito', 46.6, 1, 'Confirmado', 5, 1, '2022-03-19')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua Leme', 5,'Cart�o de Cr�dito', 46.6, 1, 'Confirmado', 5, 1, '2022-03-26')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua dos Bioqu�micos', 0,'� vista no dinheiro', 34.70, 1, 'Confirmado', 8, 4, '2022-04-09')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua dos Bioqu�micos', 0,'� vista no dinheiro', 34.70, 1, 'Confirmado', 8, 4, '2022-04-16')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Quadra AOS 1 Bloco B', 8,'Cart�o de D�bito', 128.50, 1, 'Confirmado', 6, 2, '2022-05-07')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Quadra AOS 1 Bloco B', 8,'Cart�o de D�bito', 128.50, 1, 'Confirmado', 6, 2, '2022-05-14')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Quadra AOS 1 Bloco B', 8,'Cart�o de D�bito', 128.50, 1, 'Confirmado', 6, 2, '2022-05-21')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua Josefina Ferreira Bonzan', 5,'Cart�o de Cr�dito', 46.6, 0, 'N�o confirmado', 5, 1, '2022-09-11')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua Josefina Ferreira Bonzan', 5,'Cart�o de Cr�dito', 46.6, 0, 'N�o confirmado', 5, 1, '2022-09-11')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Quadra AOS 1 Bloco B', 8,'Cart�o de D�bito', 128.50, 0, 'N�o confirmado', 6, 2, '2022-09-12')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua Margarida Maria Rigoti', 10,'� vista no dinheiro', 118.80, 0, 'N�o confirmado', 7, 3, '2022-09-12')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua dos Bioqu�micos', 0,'� vista no dinheiro', 34.70, 0, 'N�o confirmado', 8, 4, '2022-09-12')
INSERT INTO TB_PEDIDO(PE_ENDERECO, PE_TAXA_ENTREGA, PE_TIPO_PAGAMENTO, PE_PRECO_TOTAL, PE_CONFIRMACAO_PEDIDO, PE_STATUS_PEDIDO, PE_CLIENTE, PE_LOJA, PE_DATA)
VALUES('Rua Leme', 5,'Cart�o de Cr�dito', 46.6, 0, 'N�o confirmado', 5, 1, '2022-09-13')

SELECT * FROM TB_PEDIDO
WHERE PE_DATA = CONVERT(date,GETDATE())

SELECT * FROM TB_PEDIDO
ORDER BY PE_DATA

INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 31.70, 13, 1)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 6.90, 13, 4)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(2, 105.60, 2, 6)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 14.90, 2, 12)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 45.90, 3, 7)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 11, 3, 13)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 22, 3, 19)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 29.90, 3, 10)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(2, 23.80, 3, 17)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 23.80, 4, 24)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 10.90, 4, 23)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(2, 105.60, 5, 6)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 14.90, 5, 12)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 45.90, 6, 7)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 11, 6, 13)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 22, 6, 19)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 29.90, 6, 10)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(2, 23.80, 6, 24)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 10.90, 6, 23)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 31.70, 7, 1)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 6.90, 7, 4)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 31.70, 8, 1)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 6.90, 8, 4)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 31.70, 9, 1)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 6.90, 9, 4)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 31.70, 10, 1)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 6.90, 10, 4)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 31.70, 11, 1)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 6.90, 11, 4)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 23.80, 14, 24)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 10.90, 14, 23)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 23.80, 15, 24)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 10.90, 15, 23)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(2, 105.60, 16, 6)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 14.90, 16, 12)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(2, 105.60, 17, 6)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 14.90, 17, 12)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(2, 105.60, 18, 6)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 14.90, 18, 12)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 31.70, 19, 1)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 6.90, 19, 4)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 31.70, 20, 1)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 6.90, 20, 4)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(2, 105.60, 21, 6)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 14.90, 21, 12)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 45.90, 22, 7)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 11, 22, 13)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 22, 22, 19)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 29.90, 22, 10)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 23.80, 23, 24)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 10.90, 23, 23)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 31.70, 24, 1)
INSERT INTO TB_ITEM_PEDIDO(IT_QUANTIDADE, IT_PRECO, IT_PEDIDO, IT_PRODUTO)VALUES(1, 6.90, 24, 4)

SELECT * FROM TB_ITEM_PEDIDO
