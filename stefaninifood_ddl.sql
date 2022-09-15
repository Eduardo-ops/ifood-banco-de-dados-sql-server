CREATE DATABASE DB_STEFANINIFOOD

USE DB_STEFANINIFOOD;

CREATE TABLE TB_USUARIO(
	US_ID INT IDENTITY(1,1) NOT NULL,
	US_EMAIL VARCHAR(50) NOT NULL,
	US_SENHA VARCHAR(100) NOT NULL,

	CONSTRAINT PK_TB_USUARIO PRIMARY KEY CLUSTERED (US_ID)
)

CREATE TABLE TB_CLIENTE(
	CLI_ID INT IDENTITY(1,1) NOT NULL,
	CLI_NOME VARCHAR(40) NOT NULL,
	CLI_RG CHAR(9) NOT NULL,
	CLI_CPF CHAR(11) NOT NULL,
	CLI_IDADE SMALLINT NULL,
	CLI_ENDERECO VARCHAR(80) NOT NULL,
	CLI_CEP CHAR(8) NOT NULL,

	CONSTRAINT PK_TB_CLIENTE PRIMARY KEY CLUSTERED (CLI_ID)
)

CREATE TABLE TB_ITEM_PEDIDO(
	IT_ID SMALLINT IDENTITY(1,1) NOT NULL,
	IT_QUANTIDADE SMALLINT NOT NULL,
	IT_PRECO SMALLMONEY NOT NULL,

	CONSTRAINT PK_TB_ITEM_PEDIDO PRIMARY KEY CLUSTERED (IT_ID)
)

CREATE TABLE TB_PEDIDO(
	PE_ID SMALLINT IDENTITY(1,1) NOT NULL,
	PE_ENDERECO VARCHAR(80) NOT NULL,
	PE_TAXA_ENTREGA SMALLMONEY NULL,
	PE_TIPO_PAGAMENTO VARCHAR(30) NOT NULL,
	PE_PRECO_TOTAL SMALLMONEY NOT NULL,
	PE_CONFIRMACAO_PEDIDO BIT NOT NULL,
	PE_STATUS_PEDIDO VARCHAR(14) NOT NULL,

	CONSTRAINT PK_TB_PEDIDO PRIMARY KEY CLUSTERED (PE_ID)
)

CREATE TABLE TB_LOJA(
	LO_ID SMALLINT IDENTITY(1,1) NOT NULL,
	LO_NOME VARCHAR(50) NOT NULL,
	LO_RAZAO_SOCIAL VARCHAR(50) NULL,
	LO_ENDERECO VARCHAR(80) NOT NULL,
	LO_CNPJ CHAR(14) NOT NULL,
	LO_DATA_REGISTRO DATE NOT NULL,

	CONSTRAINT PK_TB_LOJA PRIMARY KEY CLUSTERED (LO_ID)
)

CREATE TABLE TB_PRODUTO(
	PR_ID SMALLINT IDENTITY(1,1) NOT NULL,
	PR_NOME VARCHAR(50) NOT NULL,
	PR_DESCRICAO VARCHAR(80) NULL,
	PR_VALOR SMALLMONEY NOT NULL,

	CONSTRAINT PK_TB_PRODUTO PRIMARY KEY CLUSTERED (PR_ID)
)

CREATE TABLE TB_CATEGORIA(
	CA_ID SMALLINT IDENTITY(1,1) NOT NULL,
	CA_NOME VARCHAR(50) NOT NULL,

	CONSTRAINT PK_TB_CATEGORIA PRIMARY KEY CLUSTERED (CA_ID)
)

CREATE TABLE TB_FUNCIONARIOS(
	FU_ID INT IDENTITY(1,1) NOT NULL,
	FU_NOME VARCHAR(40) NOT NULL,
	FU_RG CHAR(9) NOT NULL,
	FU_CPF CHAR(11) NOT NULL,
	FU_IDADE SMALLINT NULL,
	FU_CARGO VARCHAR(40) NULL,
	FU_USUARIO INT NOT NULL,
	FU_LOJA SMALLINT NOT NULL,
	FU_DATA_REGSITRO DATE NOT NULL,
	FU_PERCENTUAL_COMISSAO FLOAT NOT NULL

	CONSTRAINT PK_TB_FUNCIONARIOS PRIMARY KEY CLUSTERED (FU_ID),
	CONSTRAINT FK_TB_FUNCIONARIOS FOREIGN KEY (FU_USUARIO) REFERENCES TB_USUARIO(US_ID),
	CONSTRAINT FK2_TB_FUNCIONARIOS FOREIGN KEY (FU_LOJA) REFERENCES TB_LOJA(LO_ID)
	ON DELETE CASCADE ON UPDATE CASCADE
)

ALTER TABLE TB_PEDIDO
ADD PE_CLIENTE INT NOT NULL

ALTER TABLE TB_PEDIDO
ADD CONSTRAINT FK_PEDIDO_CLIENTE FOREIGN KEY (PE_CLIENTE) REFERENCES TB_CLIENTE(CLI_ID)

ALTER TABLE TB_ITEM_PEDIDO
ADD IT_PEDIDO SMALLINT NOT NULL

ALTER TABLE TB_ITEM_PEDIDO
ADD CONSTRAINT FK_TB_ITEM_PEDIDO_TB_PEDIDO FOREIGN KEY (IT_PEDIDO) REFERENCES TB_PEDIDO(PE_ID)
ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE TB_PRODUTO
ADD PR_LOJA SMALLINT NOT NULL

ALTER TABLE TB_PRODUTO
ADD CONSTRAINT FK_TB_PRODUTO_TB_LOJA FOREIGN KEY (PR_LOJA) REFERENCES TB_LOJA(LO_ID)
ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE TB_PEDIDO
ADD PE_LOJA SMALLINT NOT NULL

ALTER TABLE TB_PEDIDO
ADD CONSTRAINT FK_TB_PEDIDO_TB_LOJA FOREIGN KEY (PE_LOJA) REFERENCES TB_LOJA(LO_ID)
ON DELETE CASCADE ON UPDATE CASCADE

ALTER TABLE TB_PEDIDO
ADD PE_DATA DATE NOT NULL

ALTER TABLE TB_ITEM_PEDIDO
ADD IT_PRODUTO SMALLINT NOT NULL

ALTER TABLE TB_ITEM_PEDIDO
ADD CONSTRAINT FK_TB_ITEM_PEDIDO_TB_PRODUTO FOREIGN KEY (IT_PRODUTO) REFERENCES TB_PRODUTO(PR_ID)

ALTER TABLE TB_CLIENTE
ADD CLI_USUARIO INT NOT NULL

ALTER TABLE TB_CLIENTE
ADD CONSTRAINT FK_TB_CLIENTE_TB_USUARIO FOREIGN KEY (CLI_USUARIO) REFERENCES TB_USUARIO(US_ID)
ON DELETE CASCADE ON UPDATE CASCADE

CREATE TABLE TB_PRODUTO_CATEGORIA(
	PC_ID SMALLINT IDENTITY(1,1) NOT NULL,
	PC_PRODUTO SMALLINT NOT NULL,
	PC_CATEGORIA SMALLINT NOT NULL

	CONSTRAINT PK_PRODUTO_CATEGORIA PRIMARY KEY (PC_ID),
	CONSTRAINT FK_TB_PRODUTO_TB_CATEGORIA FOREIGN KEY (PC_PRODUTO) REFERENCES TB_PRODUTO(PR_ID), 
	CONSTRAINT FK_TB_PRODUTO_CATEGORIA2 FOREIGN KEY (PC_CATEGORIA) REFERENCES TB_CATEGORIA(CA_ID)
	ON DELETE CASCADE ON UPDATE CASCADE
)

CREATE NONCLUSTERED INDEX IX_CLIENTE_RG ON TB_CLIENTE(CLI_RG)
CREATE NONCLUSTERED INDEX IX_PRODUTO_NOME ON TB_PRODUTO(PR_NOME)
CREATE NONCLUSTERED INDEX IX_LOJA_NOME ON TB_LOJA(LO_NOME)
CREATE NONCLUSTERED INDEX IX_PEDIDO_CLIENTE ON TB_PEDIDO(PE_CLIENTE)

CREATE PROCEDURE sp_remover_pedidos
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @data DATE

	--SELECT @data = DATEADD(day, DATEDIFF(day, 0, GETDATE()), 0)
	SELECT @data = CONVERT(date, GETDATE())

	BEGIN TRANSACTION
		BEGIN TRY
			DELETE FROM TB_PEDIDO
			WHERE PE_STATUS_PEDIDO = 'N�o confirmado' AND PE_DATA != @data
		COMMIT
	END TRY
	BEGIN CATCH
		ROLLBACK
	END CATCH
END

CREATE PROCEDURE sp_aumento_comissao_vendedor
AS
	DECLARE @quantidadeFuncionarios SMALLINT
	DECLARE @totalVendas SMALLINT

	SET NOCOUNT ON

	SELECT @quantidadeFuncionarios = COUNT(FU_ID) FROM TB_FUNCIONARIOS

	WHILE (@quantidadeFuncionarios > 0)
	BEGIN
		SELECT @totalVendas = FU_TOTAL_VENDAS FROM TB_FUNCIONARIOS WHERE FU_ID = @quantidadeFuncionarios

		BEGIN TRANSACTION
			UPDATE TB_FUNCIONARIOS
			SET FU_PERCENTUAL_COMISSAO = FU_PERCENTUAL_COMISSAO + 0.066, FU_TOTAL_VENDAS = 0
			WHERE FU_ID = @quantidadeFuncionarios AND FU_CARGO = 'Vendedor'

			IF (@totalVendas <= 59)
				ROLLBACK
			ELSE
				COMMIT

		SET @quantidadeFuncionarios = @quantidadeFuncionarios - 1
	END

	drop procedure sp_aumento_comissao_vendedor

CREATE PROCEDURE sp_tb_cliente
	@operacao  NCHAR(1),
	@cliente AS  INT,
	@nome AS VARCHAR(40),
	@rg AS CHAR(9),
	@Cpf AS CHAR(11),
	@idade AS SMALLINT,
	@endereco AS VARCHAR(80),
	@cep AS CHAR(8),
	@usuario INT
AS BEGIN
	IF (@operacao = 'i')
	BEGIN
		BEGIN TRANSACTION
			INSERT INTO TB_CLIENTE(CLI_NOME,CLI_RG,CLI_CPF,CLI_IDADE,CLI_ENDERECO, CLI_CEP, CLI_USUARIO) 
			VALUES(@nome, @rg, @Cpf, @idade, @endereco, @cep, @usuario)

			IF(dbo.fc_validar_cep(@cep)) = 0
				ROLLBACK
			ELSE
		COMMIT
	END

	IF (@operacao = 'u')
	BEGIN
		BEGIN TRANSACTION
			UPDATE TB_CLIENTE
			SET CLI_NOME = @nome, CLI_RG = @rg, CLI_CPF = @Cpf, CLI_IDADE = @idade, CLI_ENDERECO = @endereco, CLI_CEP = @cep
			WHERE CLI_ID = @cliente
			
			IF(dbo.fc_validar_cep(@cep)) = 0
				ROLLBACK
			ELSE
		COMMIT
	END

	IF (@operacao = 'd')
	BEGIN
		DELETE FROM TB_CLIENTE
		WHERE CLI_ID = @cliente
	END
END

CREATE FUNCTION fc_validar_email(@email AS VARCHAR(50)) 
RETURNS BIT
AS BEGIN
	DECLARE @resultado BIT

	SELECT @resultado = 1
	WHERE @email LIKE '%_@_%_._%'
	AND @email NOT LIKE '%_@@_%_._%'
	AND @email NOT LIKE '%..%'
	AND @email NOT LIKE '%[^a-z,0-9,@,.,_]%'

	RETURN @resultado
END

CREATE FUNCTION fc_validar_cep(@cep CHAR(8))
RETURNS BIT
AS 
BEGIN
    DECLARE @tamanhoCep INT
	DECLARE @caractere CHAR
	DECLARE @count INT

	SELECT @tamanhoCep = LEN(@cep)
	SELECT @count = 8

    IF (@tamanhoCep < 8)
        RETURN 0
        
    WHILE (@count > 0)
    BEGIN
         SELECT @caractere = LEFT(@cep,1)

        IF CHARINDEX(@caractere,'0123456789') = 0
        BEGIN
            RETURN 0
            BREAK
        END
        
        SET @cep = STUFF(@cep,1,1,'')
		SET @count = @count - 1
    END
    
    RETURN 1
END

CREATE FUNCTION fc_faturamento_mes(@mes AS SMALLINT) 
RETURNS SMALLMONEY
AS
BEGIN
	DECLARE @faturamento SMALLMONEY

	SELECT @faturamento = SUM(PE_PRECO_TOTAL) FROM TB_PEDIDO
	WHERE DATEPART(MONTH, PE_DATA) = @mes

	RETURN @faturamento
END

CREATE FUNCTION fc_quantidade_pedidos_mes(@mes AS SMALLINT) 
RETURNS INT
AS 
BEGIN
	DECLARE @quantidade int

	SELECT @quantidade = COUNT(PE_ID) FROM TB_PEDIDO
	WHERE DATEPART(MONTH, PE_DATA) = @mes

	RETURN @quantidade
END

CREATE VIEW vw_produtos_lojas
AS SELECT TB_PRODUTO.PR_NOME AS PRODUTO, 
TB_PRODUTO.PR_DESCRICAO AS [DESCRICAO DO PRODUTO],
TB_LOJA.LO_NOME AS LOJA, 
TB_PRODUTO.PR_VALOR AS [VALOR DO PRODUTO]
FROM TB_PRODUTO
INNER JOIN TB_LOJA
ON TB_PRODUTO.PR_LOJA = TB_LOJA.LO_ID

SELECT *  from vw_produtos_lojas
ORDER BY LOJA

CREATE VIEW vw_pedidos_clientes_loja
AS SELECT TB_LOJA.LO_NOME AS LOJA,
TB_CLIENTE.CLI_NOME AS CLIENTE,
TB_PEDIDO.PE_ID AS PEDIDO
FROM TB_PEDIDO
INNER JOIN TB_CLIENTE
ON TB_PEDIDO.PE_CLIENTE = TB_CLIENTE.CLI_ID
INNER JOIN TB_LOJA
ON TB_PEDIDO.PE_LOJA = TB_LOJA.LO_ID