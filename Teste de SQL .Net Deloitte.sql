
CREATE TABLE dbo.Store 
(
	 stor_id INT NOT NULL 
	,stor_name VARCHAR(200) NOT NULL
)
GO
ALTER TABLE dbo.Store ADD CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED ([stor_id]) ON [PRIMARY]


CREATE TABLE dbo.Titles
(
	 title_id VARCHAR(6) NOT NULL 
	,title VARCHAR(200) NOT NULL
	,type VARCHAR(100) NOT NULL
)
ALTER TABLE dbo.Titles ADD CONSTRAINT [PK_Title] PRIMARY KEY CLUSTERED ([title_id]) ON [PRIMARY]



CREATE TABLE Sales
(
	 sales_id INT NOT NULL IDENTITY (1,1)
	,stor_id INT NOT NULL 
	,title_id VARCHAR(6) NOT NULL 
	,ord_date DATE NOT NULL
	,qty SMALLINT
)
GO
ALTER TABLE dbo.Sales ADD CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED ([sales_id]) ON [PRIMARY]
GO
ALTER TABLE dbo.Sales ADD CONSTRAINT [FK_Sales_Store] FOREIGN KEY ([stor_id]) REFERENCES dbo.Store ([stor_id])
GO
ALTER TABLE dbo.Sales ADD CONSTRAINT [FK_Sales_Titles] FOREIGN KEY ([title_id]) REFERENCES dbo.Titles ([title_id])


/* A) Escreva uma instrução SQL que insira 1 (um) registro na tabela Store. */   
INSERT INTO dbo.Store
(
    stor_name
)
VALUES
('Saraiva')	

/* B) Escreva uma instrução SQL que atualize a informação do campo type para “culinária” da tabela Titles onde o código do título deve ser igual a “MC3021”. */
UPDATE t SET t.type = 'culinária' FROM dbo.Titles t WHERE t.title_id = 'MC3021'

/* C) Escreva uma instrução SQL que delete todos os registros da tabela Sales onde o código da loja deva ser igual a “7066”. */
DELETE s FROM dbo.Sales s WHERE s.stor_id = 7066

/* D) Escreva uma instrução SQL que retorne somente as lojas que não possuem vendas. */
SELECT * FROM dbo.Store s
WHERE NOT EXISTS (SELECT * FROM dbo.Sales sa WHERE sa.stor_id = s.stor_id)

/*E) Escreva uma instrução SQL que retorne somente os títulos que não foram vendidos.*/
SELECT * FROM dbo.Titles t
WHERE NOT EXISTS (SELECT * FROM dbo.Sales s WHERE s.title_id = t.title_id)

/*F) Escreva uma instrução SQL que retorne os títulos e a somatória da quantidade de títulos vendidos.*/

SELECT t.title, SUM(s.qty) 'Quantidade Vendidos' FROM dbo.Sales s
INNER JOIN dbo.Titles t ON t.title_id = s.title_id
GROUP BY t.title

/*G) Escreva uma instrução SQL que retorne os registros da tabela Titles que tenham mais que 2 ocorrências com o mesmo título.*/
SELECT t.title, COUNT(t.title) 'Qtd. Titles Repetidos' FROM dbo.Titles t
GROUP BY t.title
HAVING COUNT(t.title) > 2





    