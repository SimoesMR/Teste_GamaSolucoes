-- Criando tabelas

CREATE TABLE NOTA_FISCAL (NotaFiscalId INT PRIMARY KEY,
	DataEmissao DATE NOT NULL);

CREATE TABLE PRODUTO (ProdutoId INT PRIMARY KEY, 
	Nome VARCHAR(50) NOT NULL,
	PrecoUnitario DOUBLE NOT NULL);
    
CREATE TABLE NOTA_FISCAL_ITEM (NotaFiscalItemId INT PRIMARY KEY,
	NotaFiscalId INT NOT NULL,
    ProdutoId INT NOT NULL,
	Quantidade INTEGER NOT NULL,
    PrecoUnitario DOUBLE NOT NULL,
    CONSTRAINT FK_NF_FK_NFI FOREIGN KEY(NotaFiscalId) REFERENCES NOTA_FISCAL(NotaFiscalId),
    CONSTRAINT FK_PROD_FK_NFI FOREIGN KEY(ProdutoId) REFERENCES PRODUTO(ProdutoId)
    );
